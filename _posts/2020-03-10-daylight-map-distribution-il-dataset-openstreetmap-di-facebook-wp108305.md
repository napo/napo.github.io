---
layout: post
title: "Daylight Map Distribution - il dataset OpenStreetMap di Facebook"
date: "2020-03-10 23:48:17"
permalink: "/daylight-map-distribution-il-dataset-openstreetmap-di-facebook/"
original_url: "https://de.straba.us/daylight-map-distribution-il-dataset-openstreetmap-di-facebook/"
render_with_liquid: false
categories:
  - "maps"
  - "opendata"
  - "openstreetmap"
tags:
  - "facebook"
  - "maps"
  - "opendata"
  - "openstreetmap"
---

<!-- wp:paragraph -->
<p>Quando guardi una pagina Facebook che contiene una mappa, quella è costruita con i dati di OpenStreetMap.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108306,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://i0.wp.com/de.straba.us/wp-content/uploads/2020/03/Peek-2020-03-10-22-30.gif?fit=1024%2C629&amp;ssl=1" alt="" class="wp-image-108306"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>da qualche anno Facebook  ha fatto questa scelta trovando, in OpenStreetMap, la soluzione ad avere indipendenza verso provider di mappe e controllo sui dati.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questa scelta ha fatto si che l'azienda di Zuckerberg diventasse anche parte attiva nell'arricchimento dei dati di OpenStreetMap.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il progetto più interessante è <a rel="noreferrer noopener" aria-label="MapwithAI (opens in a new tab)" href="https://mapwith.ai/#13/36.70335/67.07788/0/55" target="_blank">MapwithAI</a> dove, attraverso l'uso di tecniche di deeplearning, vengono estratti dati come strade ed edifici da immagini satellitari, per poi renderli disponibili alla comunità che può integrarli direttamente nel database.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108314,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2020/03/Selection_9991392.png" alt="" class="wp-image-108314"/><figcaption>schema riassuntivo del funzionamento di Map With AI (fonte: Facebook)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Assieme a questo strumento il team di Facebook ha sviluppato anche una piattaforma di "continuous ingestion" presentata all'edizione <a href="https://2019.stateofthemap.org">2019 di State of the Map</a> - la conferenza annuale internazionale degli utenti OpenStreetMap.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La presentazione <a href="https://2019.stateofthemap.org/sessions/3WQKAX/">"Keepin' it fresh (and good)!” - Continuous Ingestion of OSM Data at Facebook</a> presenta il servizio <a href="https://engineering.fb.com/ml-applications/mars/">MaRS</a> - Machine-augmented automatic Review System - che mette in fila una serie di controlli sui dati di OpenStreetMap prima di importarli nel proprio database da cui generano poi le loro mappe.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'approccio classico di importazione dei dati da OpenStreetMap per generare altri servizi (mappe, geocoding, routing...) è quello di creare una copia dei dati su una propria macchina che viene poi aggiornata progressivamente.<br></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108308,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2020/03/Map-Updates_OSM.jpg" alt="" class="wp-image-108308"/><figcaption>esempio classico di workflow di lavoro sul riuso dei dati openstreetmap (fonte: Facebook)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Nel caso invece di MaRS i dati vengono prima controllati da vari algoritmi che classificano se sono validi o meno rispetto a determinate logiche (es. possibili errori o vandalismi) per poi venire verificati nuovamente e decidere così si importarli o meno</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108309,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2020/03/Eng-Blog-_Map-Updates_V1-11.jpg" alt="" class="wp-image-108309"/><figcaption>lo schema di validazione di MaRS (fonte: Facebook)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>da qui quindi un workflow più complesso che permette di individuare errori e migliorare i dati e facilitare il lavoro poi di verifica manuale.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108310,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2020/03/Eng-Blog-_Map-Updates_V1-13.jpg" alt="" class="wp-image-108310"/><figcaption>il workflow di MaRS (fonte: Facebook)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>dal 10 marzo 2020 -  <a href="https://www.openstreetmap.org/user/migurski">Michal Migurski</a> di Facebook <a href="https://www.openstreetmap.org/user/migurski/diary/392416">annuncia</a> - sulla sua pagina OpenStreetMap la risorsa "Daylight Map Distribution" </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108311,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://i0.wp.com/de.straba.us/wp-content/uploads/2020/03/daylight-header.jpg?fit=1024%2C310&amp;ssl=1" alt="" class="wp-image-108311"/><figcaption>l'attuale logo di Dalylight Map Distribution (fonte: Michal Migurski)<br></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Un <a href="https://daylight-map-distribution.s3.amazonaws.com/pbf/planet-v0.1.osm.pbf">file in formato pbf da 42gb</a> composto al 100% da dati OpenStreetMap estratti in data 6 marzo 2020 che rispecchia le stesse caratteristiche del suo genitore (<a href="https://planet.openstreetmap.org">planet</a>) - e pertanto anche la stessa licenza (ODbL) - con la sola differenza di contenere dati validati da Facebook.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>... un contributo che sicuramente cambierà il modo di vedere OpenStreetMap</p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/4b025f35d774e819.gif" alt="Daylight Map Distribution — il dataset OpenStreetMap di Facebook" /></figure>
<figure><img src="/assets/images/medium/4f1a33e920607d93.png" alt="Daylight Map Distribution — il dataset OpenStreetMap di Facebook" /></figure>
<figure><img src="/assets/images/medium/903f508231acca52.jpg" alt="Daylight Map Distribution — il dataset OpenStreetMap di Facebook" /></figure>
<figure><img src="/assets/images/medium/d475fcb02ed7ea8d.jpg" alt="Daylight Map Distribution — il dataset OpenStreetMap di Facebook" /></figure>
<figure><img src="/assets/images/medium/452ef6717abeb285.jpg" alt="Daylight Map Distribution — il dataset OpenStreetMap di Facebook" /></figure>
<figure><img src="/assets/images/medium/b64424e567fb31e5.jpg" alt="Daylight Map Distribution — il dataset OpenStreetMap di Facebook" /></figure>
<p><a href="https://medium.com/p/c14befeb2867">Versione originale su Medium</a></p>
