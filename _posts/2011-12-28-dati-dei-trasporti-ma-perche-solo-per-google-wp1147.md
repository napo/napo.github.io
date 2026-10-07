---
layout: post
title: "dati dei trasporti: ma perchè solo per google?"
date: "2011-12-28 18:04:33"
permalink: "/dati-dei-trasporti-ma-perche-solo-per-google/"
original_url: "https://de.straba.us/dati-dei-trasporti-ma-perche-solo-per-google/"
render_with_liquid: false
categories:
  - "google"
  - "opendata"
tags:
  - "brescia"
  - "genova"
  - "google transit"
  - "gtfs"
  - "la spezia"
  - "marche"
  - "modena"
  - "open data"
  - "open source"
  - "opentripplanner"
  - "reggio emiali"
  - "torino"
  - "toscana"
  - "Trentino"
  - "trento"
  - "vicenza"
---

<img class="alignleft size-medium wp-image-1148" title="google_transit" src="/assets/images/wordpress/2011/12/google_transit-300x220.png" alt="" width="300" height="220" />Da parecchio tempo Google offre il servizio Google Transit - <a href="http://transit.google.com">http://transit.google.com</a>
Si tratta di un servizio molto utile:

quale autobus/treno/tram prendere per spostarsi il più velocemente da un punto ad un altro di una città raggiungendo anche a piedi una delle rispettive fermate/stazioni?

<img src="http://maps.google.com/help/maps/transit/partners/images/walk-64.png" alt="" width="38" height="38" /><img src="http://maps.google.com/help/maps/transit/partners/images/bus-64.png" alt="" width="38" height="38" /><img src="http://maps.google.com/help/maps/transit/partners/images/rail-64.png" alt="" width="38" height="38" /><img src="http://maps.google.com/help/maps/transit/partners/images/tram-64.png" alt="" width="38" height="38" />

L'utente inserisce l'indirizzo dove si trova e quello da raggiungere e il sistema restituisce tutte le informazioni necessarie in relazione anche alla fascia oraria in cui ci si sta spostando.

Per fare questo Google ha bisogno dei dati delle agenzie di trasporto. Il "Google Transit Partner Program" - <a href="http://maps.google.com/help/maps/transit/partners/">http://maps.google.com/help/maps/transit/partners/</a> richiede che i dati siano strutturati secondo il formato GTFS - General Transit Feed Specification per cui Google fornisce specifiche e strumenti - <a href="http://code.google.com/intl/it-IT/transit/spec/transit_feed_specification.html">http://code.google.com/intl/it-IT/transit/spec/transit_feed_specification.html</a> - con licenze aperte con pochissimi vincoli (CC-BY per la documentazione e Apache License 2.0 per gli strumenti software - <a href="http://code.google.com/p/googletransitdatafeed/">http://code.google.com/p/googletransitdatafeed/</a>).

<img class="alignright" src="http://www.gtfs-data-exchange.com/static/logo.png" alt="GTFS Logo" width="220" height="88" />Alcuni dei GTFS feed (= le risorse da cui scaricare le informazioni dei trasporti delle varie agenzie) sono resi pubblici sul sito <a href="http://www.gtfs-data-exchange.com">http://www.gtfs-data-exchange.com</a>. Alcuni di questi dati vengono rilasciati direttamente dalle fonti ufficiali, altri sono il risultato di operazioni di scraping da parte di utenti.

Curiosando fra i dati disponibili per l'Italia - <a href="http://www.gtfs-data-exchange.com/agencies/bylocation">http://www.gtfs-data-exchange.com/agencies/bylocation</a> - si trovano in lista solo Torino (da fonti ufficiali) e la regione Sardegna (da fonti non ufficiali).
Sul sito ufficiale per di Google Transit - <a href="http://www.google.com/intl/it/landing/transit/text.html#eu">http://www.google.com/intl/it/landing/transit/text.html#eu</a> - la lista però è molto più lunga, infatti si trovano ben 12 agenzie:
<ul>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=45.536115,10.224066&amp;spn=0.04,0.1&amp;dirflg=r">Brescia</a> Brescia Trasporti SpA</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=45.88,9.4&amp;spn=0.6,0.97&amp;dirflg=r">Como</a> ASF Autolinee</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=44.413674,8.934374&amp;spn=0.047453,0.083513&amp;dirflg=r">Genova</a> AMT Genova</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=44.227634,9.803687&amp;spn=0.364502,0.600017&amp;dirflg=r">La Spezia</a> ATC</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=43.201172,13.601418&amp;spn=0.27179,0.518074&amp;dirflg=r">Marche</a> TRASFER</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=44.542092,10.889469&amp;spn=0.79969,0.801316&amp;dirflg=r">Modena</a> ATCM S.p.A. - Azienda Trasporti Collettivi e Mobilità</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=40.84,14.22&amp;spn=0.15,0.36&amp;lci=transit_comp">Naples</a> Solo il livello di Transit</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=44.62085,10.545194&amp;spn=0.746789,0.741183&amp;dirflg=r">Reggio Emilia</a> ACT</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=45.069399,7.687683&amp;spn=0.075651,0.136642&amp;dirflg=r">Torino</a> Gruppo Torinese Trasporti</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=43.46,11.05&amp;spn=3.55,5.84&amp;dirflg=r">Toscana</a> Trasporti Regionali</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=23.071897,3.41418&amp;spn=46.142457,15.541&amp;dirflg=r">Trentino</a> Trentino trasporti S.p.A. Servizio Urbano Trento</li>
	<li><a href="http://www.google.com/maps?ie=UTF8&amp;ll=45.548675,11.55021&amp;spn=0.187977,0.221751&amp;dirflg=r">Vicenza</a> AIM</li>
</ul>
A questo punto è normale chiedersi dove si trovano i GTFS feed di queste agenzie e perché sono disponibili solo per google e non a chiunque.
Siamo davanti ad un servizio pubblico la cui informazione deve essere disponibile a tutti (altrimenti chi lo va a prendere l'autobus se non sa quando passa?).
<img src="/assets/images/wordpress/2011/12/opentripplannerlogo-300x56.png" alt="" title="opentripplannerlogo" width="300" height="56" class="alignleft size-medium wp-image-1159" />Permettere anche a terzi di usare questi dati può dare vita a nuovi servizi, a nuove idee, probabilmente maggiormente scalate sulla realtà di chi, in quella città, ci vive.
Oltre agli strumenti proposti da google stessa per interagire con il formato GTFS, ci sono terzi che hanno sviluppato applicazioni analoghe.
Fra questi va segnalato OpenTripPlanner - <a href="http://opentripplanner.org">http://opentripplanner.org</a>, software rilasciato con licenza LGPL, usato già anche da diverse agenzie di trasporto.

Non siamo davanti a qualcosa da tenere nascosto, sono dati di trasporto PUBBLICO, e non è possibile che a trarne maggior vantaggio sia solo una azienda.
Si chiama Open Data, non è difficile, si è già dimostrato di aver fatto già un bel passo avanti nel fornire i dati in GTFS, si tratta solo di rendere pubblici questi indirizzi e di dichiarare che sono di pubblico dominio.
... speriamo che presto qualcosa cambi ...

