---
layout: default
title: Argomenti
permalink: /tag/
---

<div class="tag-archive">
<p class="eyebrow"><a href="{{ '/' | relative_url }}#articoli">← Tutti gli articoli</a></p>
<h1>Argomenti</h1>
<section class="tag-cloud-section" aria-labelledby="tag-cloud-title">
  <h2 id="tag-cloud-title">Nuvola di tag</h2>
  <p class="tag-cloud-intro">Seleziona un tag per vedere gli articoli collegati.</p>
  <ul class="topic-cloud">
    {% assign tags = site.tags | sort %}
    {% for tag in tags %}
      {% assign frequency = tag[1].size %}
      {% assign scale = 1 %}
      {% if frequency > 2 %}{% assign scale = 2 %}{% endif %}
      {% if frequency > 5 %}{% assign scale = 3 %}{% endif %}
      {% if frequency > 12 %}{% assign scale = 4 %}{% endif %}
      {% if frequency > 25 %}{% assign scale = 5 %}{% endif %}
      <li><a class="cloud-size-{{ scale }}" href="#tag-{{ tag[0] | slugify }}" title="{{ frequency }} articoli">{{ tag[0] | escape }}</a></li>
    {% endfor %}
  </ul>
</section>
<h2>Categorie</h2>
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
