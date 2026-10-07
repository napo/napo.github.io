#!/usr/bin/env ruby

require "cgi"
require "date"
require "digest"
require "fileutils"
require "json"
require "open3"
require "set"
require "uri"
require "yaml"

DUPLICATE_THRESHOLD = 0.95
SAME_TITLE_DUPLICATE_THRESHOLD = 0.80
IMAGE_EXTENSIONS = %w[.avif .bmp .gif .ico .jpeg .jpg .png .svg .webp].freeze
MIME_EXTENSIONS = {
  "image/avif" => ".avif",
  "image/bmp" => ".bmp",
  "image/gif" => ".gif",
  "image/jpeg" => ".jpg",
  "image/png" => ".png",
  "image/svg+xml" => ".svg",
  "image/vnd.microsoft.icon" => ".ico",
  "image/webp" => ".webp",
  "image/x-icon" => ".ico"
}.freeze

def sniff_image_extension(path)
  header = File.binread(path, 64)
  return ".png" if header.start_with?("\x89PNG\r\n\x1A\n".b)
  return ".jpg" if header.start_with?("\xFF\xD8\xFF".b)
  return ".gif" if header.start_with?("GIF87a", "GIF89a")
  return ".webp" if header.start_with?("RIFF") && header[8, 4] == "WEBP"
  return ".bmp" if header.start_with?("BM")
  return ".ico" if header.start_with?("\x00\x00\x01\x00".b)
  return ".avif" if header[4, 8] == "ftypavif" || header[4, 8] == "ftypavis"
  return ".svg" if header.lstrip.start_with?("<svg", "<?xml")

  nil
end

def merge_duplicate_images(duplicates, site_dir, downloaded)
  duplicates.group_by { |_, existing, _| existing[:path] }.each do |path, matches|
    full_path = path
    source = File.read(full_path)
    existing_content = source.split(/^---\s*$\n?/, 3)[2].to_s
    known_urls = image_tags(existing_content).map { |_, url, _, _| url }.to_set
    figures = []

    matches.each do |story, _, _|
      image_tags(story[:content]).each do |_, url, _, _|
        next if known_urls.include?(url) || medium_image_already_present?(existing_content, url)

        local_url = download_image(url, site_dir, downloaded)
        figures << %(<figure><img src="#{CGI.escapeHTML(local_url)}" alt="#{CGI.escapeHTML(story[:title])}" /></figure>)
        known_urls << url
      end

      unless existing_content.include?(story[:url])
        figures << %(<p><a href="#{CGI.escapeHTML(story[:url])}">Versione originale su Medium</a></p>)
        existing_content += story[:url]
      end
    end

    next if figures.empty?

    File.write(full_path, "#{source.rstrip}\n\n#{figures.join("\n")}\n")
  end
end

def command_output(*command)
  output, status = Open3.capture2(*command)
  abort "Comando fallito: #{command.join(' ')}" unless status.success?

  output
end

def article_body(html)
  opening = html.match(
    %r{<section\b(?=[^>]*\bdata-field=["']body["'])(?=[^>]*\bclass=["'][^"']*\be-content\b)[^>]*>}i
  )
  return "" unless opening

  tail = html[(opening.end(0))..]
  depth = 1
  closing_offset = nil
  tail.to_enum(:scan, /<\/?section\b[^>]*>/i).each do
    tag = Regexp.last_match
    if tag[0].start_with?("</")
      depth -= 1
      if depth.zero?
        closing_offset = tag.begin(0)
        break
      end
    elsif !tag[0].end_with?("/>")
      depth += 1
    end
  end

  closing_offset ? tail[0...closing_offset] : tail
end

def image_tags(html)
  html.scan(/<img\b[^>]*>/im).flatten.filter_map do |tag|
    match = tag.match(/\bsrc=["']([^"']+)["']/i)
    [tag, CGI.unescapeHTML(match[1]), match[1], match[0]] if match
  end
end

def image_extension(url)
  extension = File.extname(URI.parse(url).path).downcase
  IMAGE_EXTENSIONS.include?(extension) ? extension : nil
rescue URI::InvalidURIError
  nil
end

def tokens(html)
  CGI.unescapeHTML(html.gsub(/<[^>]*>/, " "))
     .downcase
     .scan(/[[:alnum:]]{3,}/)
     .to_set
end

def similarity(left, right)
  union = left | right
  return 1.0 if union.empty?

  (left & right).length.to_f / union.length
end

def title_key(title)
  CGI.unescapeHTML(title.to_s)
     .unicode_normalize(:nfkd)
     .gsub(/\p{Mn}/, "")
     .downcase
     .gsub(/[^\p{Alnum}]+/, " ")
     .strip
end

def read_wordpress_posts(site_dir)
  Dir.glob(File.join(site_dir, "_posts", "*-wp*.md")).map do |path|
    source = File.read(path)
    _, front_matter, content = source.split(/^---\s*$\n?/, 3)
    data = YAML.safe_load(front_matter, permitted_classes: [Date, Time], aliases: true)
    {
      title: data.fetch("title"),
      permalink: data.fetch("permalink"),
      path: path,
      content: content.to_s,
      tokens: tokens(content.to_s),
      source: "WordPress"
    }
  end
end

def read_medium_stories(archive_path)
  entries = command_output("unzip", "-Z1", archive_path)
            .lines.map(&:chomp)
            .grep(%r{\Aposts/\d{4}-\d{2}-\d{2}_.*\.html\z})
            .reject { |path| File.basename(path).start_with?("draft_") }

  entries.filter_map do |path|
    html = command_output("unzip", "-p", archive_path, path)
    body = article_body(html)
    title = CGI.unescapeHTML(
      html[/<h1\b[^>]*>(.*?)<\/h1>/im, 1].to_s.gsub(/<[^>]*>/, " ").gsub(/\s+/, " ").strip
    )
    filename = File.basename(path)
    date = filename[/\A(\d{4}-\d{2}-\d{2})_/, 1]
    id = filename[/([a-f0-9]{8,16})\.html\z/i, 1]
    abort "Storia Medium con titolo, data o ID mancante: #{path}" if title.empty? || date.nil? || id.nil?

    {
      id: id,
      date: date,
      title: title,
      url: "https://medium.com/p/#{id}",
      content: body,
      photos: image_tags(body).filter_map do |_, url, _, _|
        uri = URI.parse(url)
        url if %w[http https].include?(uri.scheme)
      end.uniq,
      tokens: tokens(body)
    }
  end
end

def mark_duplicates(stories, wordpress_posts)
  kept = []
  duplicates = []
  known = wordpress_posts.dup

  stories.each do |story|
    match = known.filter_map do |existing|
      score = similarity(story[:tokens], existing[:tokens])
      same_title = title_key(story[:title]) == title_key(existing[:title])
      enough_text = [story[:tokens].length, existing[:tokens].length].min >= 20
      duplicate = (enough_text && score >= DUPLICATE_THRESHOLD) ||
        (same_title && score >= SAME_TITLE_DUPLICATE_THRESHOLD)
      [score, existing] if duplicate
    end.max_by(&:first)

    if match
      duplicates << [story, match[1], match[0]]
    else
      kept << story
      known << { title: story[:title], permalink: nil, tokens: story[:tokens], source: "Medium" }
    end
  end

  [kept, duplicates]
end

def local_image_path(url, extension)
  digest = Digest::SHA256.hexdigest(url)
  File.join("assets", "images", "medium", "#{digest[0, 16]}#{extension}")
end

def alternate_image_url(url)
  uri = URI.parse(url)
  return unless uri.host == "cdn-images-1.medium.com"

  match = uri.path.match(%r{\A/max/\d+/(.+)\z})
  return unless match

  uri.host = "miro.medium.com"
  uri.path = "/v2/resize:fit:800/#{match[1]}"
  uri.to_s
end

def download_image(url, site_dir, downloaded)
  return "/#{downloaded[url]}" if downloaded.key?(url)

  extension = image_extension(url)
  relative_dir = File.join("assets", "images", "medium")
  destination_dir = File.join(site_dir, relative_dir)
  FileUtils.mkdir_p(destination_dir)
  digest = Digest::SHA256.hexdigest(url)[0, 16]
  existing = Dir.glob(File.join(destination_dir, "#{digest}.*")).first
  if existing && File.file?(existing) && File.size(existing).positive?
    downloaded[url] = existing.delete_prefix("#{site_dir}/")
    return "/#{downloaded[url]}"
  end

  temporary = File.join(destination_dir, ".#{digest}.download")
  candidates = [alternate_image_url(url), url].compact.uniq
  content_type = nil
  error = nil
  candidates.each do |candidate|
    content_type, error, status = Open3.capture3(
      "curl", "--fail", "--location", "--silent", "--show-error",
      "--max-time", "60", "--retry", "3", "--retry-all-errors", "--retry-delay", "2",
      "--retry-max-time", "15", "--user-agent", "Mozilla/5.0",
      "--output", temporary, "--write-out", "%{content_type}", candidate
    )
    break if status.success?

    File.delete(temporary) if File.file?(temporary)
    $stderr.puts "Download Medium fallito, provo un host alternativo: #{candidate}" if candidate != candidates.last
  end
  unless File.file?(temporary) && File.size(temporary).positive?
    File.delete(temporary) if File.file?(temporary)
    abort "Impossibile scaricare un'immagine Medium: #{url}\n#{error}"
  end

  if content_type.nil?
    File.delete(temporary) if File.file?(temporary)
    abort "Il CDN Medium non ha restituito il tipo di contenuto per: #{url}"
  end

  mime_type = content_type.downcase.split(";", 2).first.strip
  extension ||= MIME_EXTENSIONS[mime_type] || sniff_image_extension(temporary)
  unless extension
    File.delete(temporary) if File.file?(temporary)
    abort "Tipo di immagine Medium non riconosciuto (#{content_type}): #{url}"
  end

  relative = local_image_path(url, extension)
  FileUtils.mv(temporary, File.join(site_dir, relative))
  downloaded[url] = relative
  "/#{relative}"
end

def medium_image_already_present?(html, url)
  digest_prefix = Digest::SHA256.hexdigest(url)[0, 16]
  image_tags(html).any? do |_, existing_url, _, _|
    existing_url.start_with?("/assets/images/medium/#{digest_prefix}.")
  end
end

def localize_images(html, site_dir, downloaded)
  html.gsub(/<img\b[^>]*>/im) do |tag|
    source = image_tags(tag).first
    next tag unless source

    original_url = source[1]
    local_url = download_image(original_url, site_dir, downloaded)
    tag.sub(source[3], %(src="#{CGI.escapeHTML(local_url)}"))
  end
end

def article_slug(title, id, occupied_slugs)
  slug = title.unicode_normalize(:nfkd)
              .gsub(/\p{Mn}/, "")
              .downcase
              .gsub(/[^a-z0-9]+/, "-")
              .gsub(/\A-+|-+\z/, "")
  slug = id if slug.empty?
  slug = "#{slug}-#{id}" if occupied_slugs.include?(slug)
  occupied_slugs << slug
  slug
end

def front_matter(story, slug)
  fields = [
    "layout: post",
    "title: #{JSON.generate(story[:title])}",
    "date: #{JSON.generate("#{story[:date]} 12:00:00")}",
    "permalink: #{JSON.generate("/#{slug}/")}",
    "original_url: #{JSON.generate(story[:url])}",
    "source: Medium",
    "render_with_liquid: false"
  ]
  "---\n#{fields.join("\n")}\n---\n\n"
end

def cleanup_previous_import(site_dir)
  Dir.glob(File.join(site_dir, "_posts", "*-medium-*.md")).each { |path| File.delete(path) }
  Dir.glob(File.join(site_dir, "assets", "images", "medium", ".*.download")).each do |path|
    File.delete(path) if File.file?(path)
  end
end

unless (2..3).cover?(ARGV.length)
  abort "Uso: ruby scripts/import_medium.rb EXPORT.zip JEKYLL_SITE_DIR [--dry-run]"
end

archive_path, site_dir, option = ARGV
archive_path = File.expand_path(archive_path)
site_dir = File.expand_path(site_dir)
abort "Archivio Medium non trovato: #{archive_path}" unless File.file?(archive_path)
abort "Cartella Jekyll non trovata: #{site_dir}" unless File.directory?(site_dir)
abort "Opzione non riconosciuta: #{option}" if option && option != "--dry-run"

stories = read_medium_stories(archive_path)
wordpress_posts = read_wordpress_posts(site_dir)
kept, duplicates = mark_duplicates(stories, wordpress_posts)
all_wp_slugs = wordpress_posts.filter_map do |post|
  post[:permalink].to_s[%r{\A/([^/]+)/?\z}, 1]
end.to_set
occupied_slugs = all_wp_slugs.dup
kept.each { |story| story[:slug] = article_slug(story[:title], story[:id], occupied_slugs) }

puts "Storie pubblicate: #{stories.length}"
puts "Storie con immagini: #{stories.count { |story| !story[:photos].empty? }}"
puts "Storie Medium accorpate in articoli già presenti: #{duplicates.length}"
puts "Nuovi articoli Medium: #{kept.length}"
puts "Immagini Medium da importare: #{kept.flat_map { |story| story[:photos] }.uniq.length}"
duplicates.each do |story, existing, score|
  puts format("Doppione (%.1f%%): %s -> %s", score * 100, story[:title], existing[:title])
end

exit if option == "--dry-run"

cleanup_previous_import(site_dir)
downloaded = {}
output_dir = File.join(site_dir, "_posts")
FileUtils.mkdir_p(output_dir)

merge_duplicate_images(duplicates, site_dir, downloaded)
kept.each do |story|
  content = localize_images(story[:content], site_dir, downloaded)
  filename = "#{story[:date]}-medium-#{story[:id]}.md"
  File.write(File.join(output_dir, filename), front_matter(story, story[:slug]) + content)
end

puts "Immagini Medium scaricate: #{downloaded.length}"
