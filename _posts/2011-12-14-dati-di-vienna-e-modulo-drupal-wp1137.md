---
layout: post
title: "Dati di Vienna e modulo Drupal"
date: "2011-12-14 17:43:20"
permalink: "/dati-di-vienna-e-modulo-drupal/"
original_url: "https://de.straba.us/dati-di-vienna-e-modulo-drupal/"
render_with_liquid: false
categories:
  - "opendata"
tags:
  - "drupal"
  - "linked open data"
  - "linz"
  - "rdfa"
  - "sparql"
  - "vienna"
---

<img class="alignleft  wp-image-1138" title="logo_vienna" src="/assets/images/wordpress/2011/12/logo_vienna.png" alt="" width="96" height="82" />
Il comune di Vienna oggi informa - <a href="http://data.wien.gv.at/apps/drupal-modul.html" target="_blank">http://data.wien.gv.at/apps/drupal-modul.html</a> – di una iniziativa da parte dalla comunità austriaca degli sviluppatori Drupal – <a href="http://www.drupal-austria.at/" target="_blank">http://www.drupal-austria.at/</a>

Si tratta di un modulo Drupal sui dati aperti di Vienna.
<img class="alignright" src="http://data.wien.gv.at/apps/images/drupalmodul-kl.jpg" alt="" width="256" height="144" />Il progetto nasce durante il secondo DrupalCamp tenutosi a Vienna permette di rappresentare, su una mappa (che fa uso di OpenStreetMap come background) alcuni geodati della città (stazioni del prestito biciclette, ospedali e università).

A prima vista può sembrare qualcosa di semplice, ma, andando nei dettagli si scopre che ogni dato viene fornito con una definizione della tipologia di contenuto.
Tipologia mappata sui vocabolari di Schema.org – <a href="http://www.schema.org" target="_blank">http://www.schema.org</a>
Operazione permette quindi di distribuire i dati in formato <a href="http://en.wikipedia.org/wiki/RDFa" target="_blank">RDFa</a> (quindi <a href="http://it.wikipedia.org/wiki/Dati_collegati" target="_blank">Linked Open Data</a>) con tanto di servizio endpoint <a href="http://it.wikipedia.org/wiki/SPARQL" target="_blank">SPARQL</a> – <a href="http://austria.drupaldata.com/sparql" target="_blank">http://austria.drupaldata.com/sparql</a>

La demo del modulo Drupal è presente al sito <a href="http://austria.drupaldata.com" target="_blank">http://austria.drupaldata.com</a> da cui è possibile accedere anche al catalogo dei dati in RDFa –<a href="http://austria.drupaldata.com/vienna/datasources" target="_blank"> http://austria.drupaldata.com/vienna/datasources</a>
Oltre ai dati di Vienna sono disponibili anche quelli di Linz (altra città austriaca che ha aperto i dati – <a href="http://data.linz.gv.at/daten" target="_blank">http://data.linz.gv.at/daten</a>).

Il modulo – anche se ancora in via di sviluppo – è disponibile a questo indirizzo <a href="http://drupal.org/project/odv" target="_blank">http://drupal.org/project/odv</a>