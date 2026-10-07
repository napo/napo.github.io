---
layout: default
title: Topics
permalink: /en/topics/
lang: en
---

<div class="tag-archive">
  <p class="eyebrow"><a href="{{ '/en/' | relative_url }}#articles">← All articles</a></p>
  <h1>Topics</h1>
  <section class="tag-cloud-section" aria-labelledby="tag-cloud-title">
    <h2 id="tag-cloud-title">Tag cloud</h2>
    <p class="tag-cloud-intro">Select a tag to see related articles.</p>
    <ul class="topic-cloud">
      {% assign tags = site.tags | sort %}
      {% for tag in tags %}
        {% assign frequency = tag[1].size %}
        {% assign scale = 1 %}
        {% if frequency > 2 %}{% assign scale = 2 %}{% endif %}
        {% if frequency > 5 %}{% assign scale = 3 %}{% endif %}
        {% if frequency > 12 %}{% assign scale = 4 %}{% endif %}
        {% if frequency > 25 %}{% assign scale = 5 %}{% endif %}
        <li><a class="cloud-size-{{ scale }}" href="#tag-{{ tag[0] | slugify }}" title="{{ frequency }} articles">{{ tag[0] | escape }}</a></li>
      {% endfor %}
    </ul>
  </section>
  <h2>Categories</h2>
  {% for category in site.categories %}
    <section id="category-{{ category[0] | slugify }}">
      <h2>{{ category[0] | escape }}</h2>
      <ul>
        {% assign articles = category[1] | sort: "date" | reverse %}
        {% for article in articles %}
          <li><a href="{{ article.url | relative_url }}">{{ article.title | escape }}</a></li>
        {% endfor %}
      </ul>
    </section>
  {% endfor %}
  {% for tag in site.tags %}
    <section id="tag-{{ tag[0] | slugify }}">
      <h2>#{{ tag[0] | escape }}</h2>
      <ul>
        {% assign articles = tag[1] | sort: "date" | reverse %}
        {% for article in articles %}
          <li><a href="{{ article.url | relative_url }}">{{ article.title | escape }}</a></li>
        {% endfor %}
      </ul>
    </section>
  {% endfor %}
</div>
