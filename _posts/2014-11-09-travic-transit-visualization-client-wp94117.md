---
layout: post
title: "TRAVIC - Transit Visualization Client"
date: "2014-11-09 00:21:56"
permalink: "/travic-transit-visualization-client/"
original_url: "https://de.straba.us/travic-transit-visualization-client/"
render_with_liquid: false
categories:
  - "maps"
  - "opendata"
  - "openstreetmap"
  - "software libero"
tags:
  - "centro di competenza open source"
  - "google maps"
  - "gtfs"
  - "open data"
  - "tpl"
  - "trasporto pubblico"
  - "travic"
---

<figure class="featured-image"><img src="/assets/images/wordpress/2014/11/travic.png" alt="TRAVIC - Transit Visualization Client" /></figure>

<blockquote>"E se prendessimo tutte le fonti GTFS che sono disponibili pubblicamente e ne creassimo un servizio?"</blockquote>
Molto probabilmente è questa la domanda che si sono posti nel team di sviluppo della <a href="http://geops.de/" target="_blank">geOps</a> in un confronto con l'<a href="https://ad.informatik.uni-freiburg.de/" target="_blank">università di Friburgo</a> da cui poi è nato il progetto <a href="http://tracker.geops.ch/" target="_blank">TRAVIC</a>.
TRAVIC sta per Transit Visualizatio<a href="/assets/images/wordpress/2014/11/travic_world.png"><img class="alignright wp-image-94120" src="/assets/images/wordpress/2014/11/travic_world-300x203.png" alt="travic_world" width="500" height="340" /></a>n Client, e, lo scopo, è quello di visualizzare i dati di trasporto archiviati secondo le specifiche "General Transit Feed Specification - <a href="https://developers.google.com/transit/gtfs/" target="_blank">GTFS</a>", il formato <a href="http://maps.google.com/help/maps/mapcontent/transit/" target="_blank">richiesto da Google alle agenzie di trasporto pubblico per apparire</a> sul servizio <a href="http://maps.google.com/intl/it/landing/transit/#dmy" target="_blank">Google Transit</a>.
La <a href="http://maps.google.com/landing/transit/cities/index.html" target="_blank">copertura di Google Transit</a> è diventata quasi globale ma ancora poche sono le agenzie di trasporto pubblico che rilasciano i dati per altri scopi.
Il team di sviluppo di TRAVIC ha deciso di utilizzare quello presente in questa pagina wiki -<a href="https://code.google.com/p/googletransitdatafeed/wiki/PublicFeeds" target="_blank"> https://code.google.com/p/googletransitdatafeed/wiki/PublicFeeds</a>, ottenendo quindi 202 sorgenti dati.
L'applicazione mostra, secondo le tabelle, la posizione prevista da un mezzo di trasporto pubblico nello stesso orario con cui si sta accedendo al servizio.
Si tratta quindi di una previsione e non del valore effettivo, ma è già un ottimo servizio.
Di applicazioni analoghe ne esistono diverse, una fra le prima è stata quella creata sui <a href="http://linz.faehrt.at/" target="_blank">trasporti pubblici di Linz</a>, da cui poi sono nati diversi esperimenti fra cui il progetto <a href="https://github.com/UlmApi/livemap" target="_blank">livemap</a>.
Le problematiche però sono sempre state quelle di riuscire a portare nel browser molte informazioni.
Da qui, il team di TRAVIC, ha avuto una idea geniale: creare un sistema più snello che porti al client le sole informazioni associate nell'area che si sta visitando sulla falsa riga di quella che è la <a href="http://wiki.openstreetmap.org/wiki/Vector_tiles" target="_blank">tecnologia vector tiles</a> ma scalata invece sul formato GTFS.
Da qui è nato il <a href="https://github.com/geops/trajserver" target="_blank">server open source "trajserver"</a>, corredato di tutto il necessario per trattare i dati e fornirli al client.

Il client offre una interfaccia molto intuitiva basata su <a href="http://openlayers.org/" target="_blank">OpenLayers3</a>, all'aumentare dello zoom, appaiono dei pallini colorati in movimento che rappresentano i mezzi di trasporto pubblico previsti su quell'area in quel determinato momento usando, come sfondo, il rendering "<a href="http://www.opencyclemap.org/" target="_blank">open cycle map</a>" creato sui dati di OpenStreetMap.

<a href="http://tracker.geops.ch/?z=14&amp;s=1&amp;x=1239278.2080&amp;y=5790057.2758"><img class="aligncenter wp-image-94119 size-full" src="/assets/images/wordpress/2014/11/travic_bus5.png" alt="travic_bus5" width="824" height="652" /></a>

Al clic su ognuno di questi si ottengono le informazioni sul nome della linea (sono presenti anche treni), il percorso evidenziato, ed uno schema di sintesi del percorso previsto per raggiungere ogni fermata.
È anche possibile far accelerare l'animazione per farsi una idea dei possibili cambi.

Il codice sorgente <a href="https://github.com/geops/TRAVIC" target="_blank">è disponibile su github</a>, il servizio è sperimentale, ma rimane comunque un ottimo esempio di riuso dei dati attraverso formati aperti.
Altro segnale dell'astuzia di Google ma anche dell'ottusità delle agenzie di trasporto pubblico che rilasciano i dati solo alla grande G e non abbracciando il paradigma open data.
Per ora TRAVIC mostra i dati di Torino, Roma, Trentino e qualche treno austro-tedesco che attraversa il nostro Paese.
Chissà se questo sarà ad incentivo a segnalare altre sorgenti italiane GTFS attualmente aperte (es. Toscana, Pavia, Palermo, Bari, Emilia-Romagna ...) e ad avere la mappa ancora più ricca con chi si sta ancora chiedendo se valga la pena aprire i dati.