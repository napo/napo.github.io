---
layout: default
title: Napo — maps, data and ideas
permalink: /en/
lang: en
description: "A space where napo writes about maps, data, sport, free software, ideas and a little something personal."
---

<section class="intro-card" aria-labelledby="intro-title">
  <div class="intro-copy">
    <h1 id="intro-title">napo</h1>
    <p class="aka">aka maurizio napolitano</p>
    <p class="intro-description">A space where I write about maps, data, sport, free software, and ideas that aim to help us understand a little more. And a little something personal.</p>
    <div class="intro-links">{% include social-links.html %}</div>
  </div>
  <img
    class="profile-photo"
    src="{{ '/assets/images/napo400x400.jpg' | relative_url }}"
    alt="Portrait of napo"
    width="400"
    height="400"
    fetchpriority="high">
</section>

<section id="articles" class="archive-section" aria-labelledby="articles-title">
  <div class="section-heading">
    <div>
      <p class="eyebrow">From my archive</p>
      <h2 id="articles-title">Articles</h2>
    </div>
    <span class="article-count" data-article-count data-total="{{ site.posts.size }}">{{ site.posts.size }} articles</span>
  </div>
  <label class="archive-search-label" for="article-search">Search articles</label>
  <input
    id="article-search"
    class="archive-search"
    type="search"
    placeholder="Title or words from an article"
    autocomplete="off"
    data-search-index="{{ '/search.json' | relative_url }}"
    data-empty="No articles found."
    data-loading="Loading the archive…"
    data-load-error="Could not load the archive. Please try again."
    data-count-singular="article found"
    data-count-plural="articles found"
    data-count-all="articles"
    aria-describedby="article-search-status">
  <p id="article-search-status" class="search-status" aria-live="polite"></p>
  <ul class="post-list" data-post-list>
  {% assign articles = site.posts | sort: "date" | reverse %}
  {% for article in articles limit: 15 %}
    <li>
      <time datetime="{{ article.date | date_to_xmlschema }}">{{ article.date | date: "%d/%m/%Y" }}</time>
      <a href="{{ article.url | relative_url }}">{{ article.title | escape }}</a>
    </li>
  {% endfor %}
  </ul>
  <button class="load-more" type="button" data-load-more data-search-index="{{ '/search.json' | relative_url }}">Load more articles</button>
</section>

<script src="{{ '/assets/js/archive.js' | relative_url }}" defer></script>
