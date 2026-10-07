---
layout: post
title: "rhok di berlino: vince una applicazione per la segnalazione georiferita di emergenze"
date: "2010-12-10 13:34:29"
permalink: "/rhok-di-berlino-vincere-una-applicazione-per-la-segnalazione-georiferita-di-emergenze/"
original_url: "https://de.straba.us/rhok-di-berlino-vincere-una-applicazione-per-la-segnalazione-georiferita-di-emergenze/"
render_with_liquid: false
categories:
  - "gis"
  - "maps"
tags:
  - "disaster management"
  - "iphone"
  - "RHoK"
  - "ruby on rails"
---

da:
<a href="http://geospatial.nomad-labs.com/2010/12/07/building-a-real-time-mapping-app-at-random-hacks-of-kindness-berlin/">http://geospatial.nomad-labs.com/2010/12/07/building-a-real-time-mapping-app-at-random-hacks-of-kindness-berlin/</a>

Durante per l'evento di Berlino del "Random Hacks of Kindness" - <a href="http://www.rhok.org/">http://www.rhok.org/</a>

<img src="http://farm6.static.flickr.com/5006/5231538220_9bb7cb9860_m.jpg" alt="RHoK" align="right" />

Un gruppo di ragazzi ha vinto la competizione sviluppando, nella due giorni, una applicazione per il supporto alle operazioni di emergenza della Caritas della Germania.
I requisiti dell'architettura sono descritte nel wiki contente le sfide del RHOK
Nello specifico
<a href="http://www.wiki.rhok.org/Internet-Based_Map_System">http://www.wiki.rhok.org/Internet-Based_Map_System</a>

Il team di sviluppatori ha cosi' dato vita ad una soluzione client/server basata su ruby on rails.

Lato server i dati sono archiviati su mongodb e possono essere interrogati attraverso servizi rest.
La rappresentazione dei dati avviene attraverso una pagina html/javascript con openstreetmap come mappa di sfondo.
L'inserimento dei dati invece attraverso una applicazione iphone
(scelta legata al fatto che, nel team, era presente uno sviluppatore per tale piattaforma).

Lo scenario e' molto semplice: 
l'emergenza viene inserita attraverso iphone.
L'informazione necessita di uno o piu' tag, una descrizione e le relative coordinate.
Una volta inviate le informazioni queste compaiono sulla mappa.

Il codice e' disponibile a questo indirizzo github
<a href="https://github.com/mschneider/disaster_maps">https://github.com/mschneider/disaster_maps</a>
(non e' chiara pero' la licenza)

Qui uno screencast 
<a href="http://www.screencast.com/users/sabman/folders/Jing/media/f11cae5c-e0b0-49f9-9129-d7cbb2da77f6">http://www.screencast.com/users/sabman/folders/Jing/media/f11cae5c-e0b0-49f9-9129-d7cbb2da77f6</a>

