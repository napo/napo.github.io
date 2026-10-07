---
layout: default
title: Napo — mappe, dati e idee
lang: it
description: "Uno spazio dove napo racconta di mappe, dati, sport, software libero, idee e qualcosa di personale."
---

<section class="intro-card" aria-labelledby="intro-title">
  <div class="intro-copy">
    <h1 id="intro-title">napo</h1>
    <p class="aka">aka maurizio napolitano</p>
    <p class="intro-description">Uno spazio dove racconto di mappe, di dati, di sport, di software libero, di idee che hanno l’ambizione di far capire qualcosa in più. E anche qualcosa di personale.</p>
    <div class="intro-links">{% include social-links.html %}</div>
  </div>
  <img
    class="profile-photo"
    src="{{ '/assets/images/napo400x400.jpg' | relative_url }}"
    alt="Ritratto di napo"
    width="400"
    height="400"
    fetchpriority="high">
</section>

<section id="articoli" class="archive-section" aria-labelledby="articles-title">
  <div class="section-heading">
    <div>
      <p class="eyebrow">Dal mio archivio</p>
      <h2 id="articles-title">Articoli</h2>
    </div>
    <span class="article-count" data-article-count data-total="{{ site.posts.size }}">{{ site.posts.size }} articoli</span>
  </div>
  <label class="archive-search-label" for="article-search">Cerca negli articoli</label>
  <input
    id="article-search"
    class="archive-search"
    type="search"
    placeholder="Titolo o parole contenute negli articoli"
    autocomplete="off"
    data-search-index="{{ '/search.json' | relative_url }}"
    data-empty="Nessun articolo trovato."
    data-loading="Caricamento dell’archivio…"
    data-load-error="Non è stato possibile caricare l’archivio. Riprova."
    data-count-singular="articolo trovato"
    data-count-plural="articoli trovati"
    data-count-all="articoli"
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
  <button class="load-more" type="button" data-load-more data-search-index="{{ '/search.json' | relative_url }}">Carica altri articoli</button>
</section>

<script src="{{ '/assets/js/archive.js' | relative_url }}" defer></script>
