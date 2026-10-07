#!/usr/bin/env ruby

require "fileutils"
require "cgi"
require "json"
require "rexml/document"
require "set"
require "uri"

WORDPRESS_NS = {
  "content" => "http://purl.org/rss/1.0/modules/content/",
  "wp" => "http://wordpress.org/export/1.2/"
}.freeze
IMAGE_EXTENSIONS = %w[.avif .gif .jpeg .jpg .png .svg .webp].freeze
DUPLICATE_THRESHOLD = 0.95
SAME_TITLE_DUPLICATE_THRESHOLD = 0.80

def xpath_text(node, path)
  REXML::XPath.first(node, path, WORDPRESS_NS)&.text.to_s
end

def image_urls(html)
  image_sources = html.scan(/<img\b[^>]*?\bsrc=["']([^"']+)["'][^>]*>/im).flatten
  image_links = html.scan(/<a\b[^>]*?\bhref=["']([^"']+)["'][^>]*>/im).flatten
                   .select do |url|
    IMAGE_EXTENSIONS.include?(
      File.extname(URI::DEFAULT_PARSER.unescape(url.split(/[?#]/, 2).first)).downcase
    )
  end
  (image_sources + image_links).uniq
end

def words(html)
  html.gsub(/<[^>]*>/, " ")
      .gsub(/&(?:nbsp|amp|quot|#39);/, " ")
      .downcase
      .scan(/[[:alnum:]]{3,}/)
      .uniq
end

def similarity(left, right)
  union = left | right
  return 1.0 if union.empty?

  (left & right).length.to_f / union.length
end

def title_key(post)
  post[:title].downcase.gsub(/[[:punct:]]+/, " ").gsub(/\s+/, " ").strip
end

def canonical_slug?(slug)
  !slug.match?(/-\d+\z/)
end

def selected_posts(posts)
  kept = []
  redirects = []
  clusters = []

  posts.each do |post|
    candidate = post.merge(tokens: words(post[:content]))
    cluster = clusters.find do |members|
      reference = members.first
      score = similarity(candidate[:tokens], reference[:tokens])
      same_title = title_key(candidate) == title_key(reference)
      enough_text = [candidate[:tokens].length, reference[:tokens].length].min >= 20
      (enough_text && score >= DUPLICATE_THRESHOLD) ||
        (same_title && score >= SAME_TITLE_DUPLICATE_THRESHOLD)
    end
    (cluster || clusters.push([]).last) << candidate
  end

  clusters.each do |cluster|
    canonical = cluster.max_by do |post|
      [
        canonical_slug?(post[:slug]) ? 1 : 0,
        post[:date]
      ]
    end
    richest = cluster.max_by do |post|
      [image_urls(post[:content]).length, post[:content].length, post[:date]]
    end
    featured_image = cluster.filter_map { |post| post[:featured_image] }.first
    chosen = richest.merge(
      slug: canonical[:slug],
      link: canonical[:link],
      date: canonical[:date],
      featured_image: featured_image
    )
    cluster.each do |post|
      redirects << [post[:slug], chosen[:slug]] unless post[:slug] == chosen[:slug]
    end
    chosen[:categories] = cluster.flat_map { |post| post[:categories] }.uniq
    chosen[:tags] = cluster.flat_map { |post| post[:tags] }.uniq
    kept << chosen
  end

  [kept, redirects]
end

def yaml_value(value)
  JSON.generate(value)
end

def rewrite_caption_shortcodes(html)
  html.gsub(/\[caption[^\]]*\](.*?)\[\/caption\]/im) do
    %(<figure class="wp-caption">#{$1}</figure>)
  end
end

def normalize_media_path(url)
  decoded = URI::DEFAULT_PARSER.unescape(url)
  match = decoded.match(%r{(?:https?:)?//[^/]+/wp-content/uploads/([^?#]+)|\A/wp-content/uploads/([^?#]+)}i)
  return unless match

  path = (match[1] || match[2]).sub(%r{\A/+}, "")
  return if path.split("/").include?("..")
  return unless IMAGE_EXTENSIONS.include?(File.extname(path).downcase)

  path
end

def image_identity(url)
  path = normalize_media_path(url) || URI.parse(url).path || url
  File.join(File.dirname(path), File.basename(path).sub(/-\d+x\d+(?=\.)/, "")).downcase
rescue URI::InvalidURIError
  url.downcase
end

def featured_image_markup(post)
  url = post[:featured_image].to_s
  return "" if url.empty?
  return "" if image_urls(post[:content]).any? { |content_url| image_identity(content_url) == image_identity(url) }

  %(<figure class="featured-image"><img src="#{CGI.escapeHTML(url)}" alt="#{CGI.escapeHTML(post[:title])}" /></figure>\n\n)
end

def rewrite_and_copy_images(html, uploads_dir, site_dir, copied)
  html.gsub(%r{(?:https?:)?//[^/"'\s<>]+/wp-content/uploads/[^"'\s<>]+|/wp-content/uploads/[^"'\s<>]+}i) do |url|
    path = normalize_media_path(url)
    source = path && File.expand_path(path, uploads_dir)
    uploads_root = File.expand_path(uploads_dir) + File::SEPARATOR

    if source && source.start_with?(uploads_root) && File.file?(source)
      relative = File.join("assets", "images", "wordpress", path)
      destination = File.join(site_dir, relative)
      unless copied.include?(relative)
        FileUtils.mkdir_p(File.dirname(destination))
        FileUtils.cp(source, destination)
        copied << relative
      end
      "/#{relative}"
    else
      url
    end
  end
end

def front_matter(post)
  categories = post[:categories].reject(&:empty?)
  tags = post[:tags].reject(&:empty?)
  fields = [
    "layout: post",
    "title: #{yaml_value(post[:title])}",
    "date: #{yaml_value(post[:date])}",
    "permalink: #{yaml_value("/#{post[:slug]}/")}",
    "original_url: #{yaml_value(post[:link])}",
    "render_with_liquid: false"
  ]
  fields << "categories:\n#{categories.map { |value| "  - #{yaml_value(value)}" }.join("\n")}" unless categories.empty?
  fields << "tags:\n#{tags.map { |value| "  - #{yaml_value(value)}" }.join("\n")}" unless tags.empty?
  "---\n#{fields.join("\n")}\n---\n\n"
end

def write_posts(posts, site_dir, uploads_dir)
  output_dir = File.join(site_dir, "_posts")
  FileUtils.mkdir_p(output_dir)
  copied = Set.new

  posts.sort_by { |post| post[:date] }.each do |post|
    content = featured_image_markup(post) + rewrite_caption_shortcodes(post[:content])
    content = rewrite_and_copy_images(content, uploads_dir, site_dir, copied)
    filename = "#{post[:date][0, 10]}-#{post[:slug]}-wp#{post[:id]}.md"
    File.write(File.join(output_dir, filename), front_matter(post) + content)
  end

  copied
end

def write_redirects(redirects, site_dir)
  redirects.uniq.each do |from, to|
    next if from.empty? || to.empty?

    path = File.join(site_dir, "redirects", "#{from}.html")
    FileUtils.mkdir_p(File.dirname(path))
    target = "/#{to}/"
    File.write(path, <<~HTML)
      ---
      permalink: #{yaml_value("/#{from}/")}
      ---
      <!doctype html>
      <html lang="it">
      <head>
        <meta charset="utf-8">
        <meta http-equiv="refresh" content="0; url=#{target}">
        <link rel="canonical" href="#{target}">
        <title>Articolo spostato</title>
      </head>
      <body><p>Questo articolo è stato unito a <a href="#{target}">#{to}</a>.</p></body>
      </html>
    HTML
  end
end

def cleanup_previous_import(site_dir)
  Dir.glob(File.join(site_dir, "_posts", "*-wp*.md")).each { |path| File.delete(path) }
  Dir.glob(File.join(site_dir, "redirects", "*.html")).each { |path| File.delete(path) }
  Dir.glob(File.join(site_dir, "assets", "images", "wordpress", "**", "*")).each do |path|
    File.delete(path) if File.file?(path)
  end
end

unless ARGV.length == 3
  abort "Uso: ruby scripts/import_wordpress.rb EXPORT.xml FTP_UPLOADS_DIR JEKYLL_SITE_DIR"
end

export_path, uploads_dir, site_dir = ARGV.map { |path| File.expand_path(path) }
abort "Export WordPress non trovato: #{export_path}" unless File.file?(export_path)
abort "Cartella uploads FTP non trovata: #{uploads_dir}" unless File.directory?(uploads_dir)
abort "Cartella Jekyll non trovata: #{site_dir}" unless File.directory?(site_dir)

document = REXML::Document.new(File.read(export_path))
all_posts = REXML::XPath.match(document, "//item")
attachments = all_posts.filter_map do |item|
  next unless xpath_text(item, "wp:post_type") == "attachment"

  [xpath_text(item, "wp:post_id"), xpath_text(item, "wp:attachment_url")]
end.to_h
posts = all_posts.filter_map do |item|
  next unless xpath_text(item, "wp:post_type") == "post"
  next unless xpath_text(item, "wp:status") == "publish"

  content = xpath_text(item, "content:encoded")
  thumbnail = REXML::XPath.match(item, "wp:postmeta").find do |meta|
    REXML::XPath.first(meta, "wp:meta_key", WORDPRESS_NS)&.text == "_thumbnail_id"
  end
  featured_image = attachments[REXML::XPath.first(thumbnail, "wp:meta_value", WORDPRESS_NS)&.text.to_s] if thumbnail
  featured_image = nil unless featured_image && IMAGE_EXTENSIONS.include?(File.extname(featured_image).downcase)
  next if image_urls(content).empty? && featured_image.nil?

  categories = REXML::XPath.match(item, "category[@domain='category']").map { |node| node.text.to_s }
  tags = REXML::XPath.match(item, "category[@domain='post_tag']").map { |node| node.text.to_s }
  {
    id: xpath_text(item, "wp:post_id"),
    date: xpath_text(item, "wp:post_date"),
    slug: xpath_text(item, "wp:post_name"),
    title: item.elements["title"]&.text.to_s,
    link: item.elements["link"]&.text.to_s,
    featured_image: featured_image,
    content: content,
    categories: categories,
    tags: tags
  }
end

cleanup_previous_import(site_dir)
unique_posts, redirects = selected_posts(posts)
copied_images = write_posts(unique_posts, site_dir, uploads_dir)
write_redirects(redirects, site_dir)

puts "Articoli con immagini: #{posts.length}"
puts "Articoli dopo deduplicazione: #{unique_posts.length}"
puts "URL duplicati reindirizzati: #{redirects.uniq.length}"
puts "Immagini copiate dal backup FTP: #{copied_images.length}"
