---
layout: post
title: "I dati dei trasporti di Roma sono #opendata"
date: "2013-12-13 19:51:07"
permalink: "/i-dati-dei-trasporti-di-roma-sono-opendata/"
original_url: "https://de.straba.us/i-dati-dei-trasporti-di-roma-sono-opendata/"
render_with_liquid: false
categories:
  - "opendata"
  - "openstreetmap"
  - "software libero"
tags:
  - "autobus"
  - "gephi"
  - "gtfs"
  - "mobilità"
  - "opendata"
  - "roma"
---

<a href="/assets/images/wordpress/2013/12/rete_autobus_roma1.png"><img class="aligncenter size-medium wp-image-91240" alt="rete_autobus_roma" src="/assets/images/wordpress/2013/12/rete_autobus_roma1-300x118.png" width="300" height="118" /></a>
La nuvola colorata in questa immagine rappresenta la rete di collegamento fra le fermate degli autobus di Roma.
Non si tratta di una disposizione geografica, ma di distanza fra i collegamenti.
L'immagine è stata elaborata con gephi, la colorazione avviene attraverso l'algoritmo modularity class, le dimensioni delle varie circonferenze e delle scritte invece sono scalate in relazione al numero di collegamenti che si hanno fra i vari nodi.
Le fermate sono i nodi, i collegamenti invece le fermate raggiungibili da quel nodo.
In totale ci sono 1162 nodi, che generano fra di loro 5625 archi (= collegamenti).
Facendo qualche zoom la cosa si nota meglio.
<a href="/assets/images/wordpress/2013/12/zoomnetromabus.png"><img class="aligncenter size-medium wp-image-91241" alt="zoomnetromabus" src="/assets/images/wordpress/2013/12/zoomnetromabus-300x170.png" width="300" height="170" /></a>
Da questo grafo di rete si capiscono quali sono i nodi più importanti.
Giusto per fare un esempio, la fermata "<a href="http://www.openstreetmap.org/node/1468207589">TEATRO MARCELLO- ARA COELI</a>", vicina al Campidoglio<a href="http://www.openstreetmap.org/node/1468207589#map=18/41.89337/12.48167"><img class="aligncenter size-medium wp-image-91242" alt="map2" src="/assets/images/wordpress/2013/12/map2-300x219.png" width="300" height="219" /></a>
si presenta come il nodo più connesso da cui si riescono a raggiungere altre 27 fermate (i termini di <a href="http://en.wikipedia.org/wiki/Social_network_analysis">social network analysis</a> il suo <a href="http://en.wikipedia.org/wiki/Degree_centrality">degree</a> è 27).
Il valore medio per fermata è 9,682.
Questa la top 10.
<ol>
	<li><a href="http://www.openstreetmap.org/node/1468207589">TEATRO MARCELLO- ARA COELI</a></li>
	<li><a href="http://www.openstreetmap.org/node/561193781">ACRI- ARDIGO'</a></li>
	<li><a href="http://www.openstreetmap.org/node/1793880283">BERTINAZZI</a></li>
	<li><a href="http://www.openstreetmap.org/node/1678479960">VIALE SOMALIA- MASCAGNI</a></li>
	<li><a href="http://www.openstreetmap.org/node/1686425671">COLLI PORTUENSI- ARTOM</a></li>
	<li><a href="http://www.openstreetmap.org/node/1800051997">DAL VERME- GATTAMELATA</a></li>
	<li><a href="http://www.openstreetmap.org/node/1271055500">DALLA CHIESA</a></li>
	<li><a href="http://www.openstreetmap.org/node/1665325189">DEL FIOCCO- VALLE GIULIA</a></li>
	<li><a href="http://www.openstreetmap.org/node/1410071634">PIAZZA DELLA ROVERE</a></li>
	<li><a href="http://www.openstreetmap.org/node/1759727113">TUSCOLANA- CENTRALE ENEL</a></li>
</ol>
(da notare che sono tutti su openstreetmap).
Attraverso altri indicatori si possono individuare altre caratteristiche.
I calcoli degli attributi sono disponibili a questo indirizzo
<a href="http://de.straba.us/fermate_autobus_roma_sna/attributi_sna_fermate_roma.csv">http://de.straba.us/fermate_autobus_roma_sna/attributi_sna_fermate_roma.csv</a>
Mentre alla pagina <a href="http://de.straba.us/fermate_autobus_roma_sna/autobus_roma.gexf">http://de.straba.us/fermate_autobus_roma_sna/autobus_roma.gexf</a> è possibile scaricare il file gefx e a questo indirizzo
<a href="http://de.straba.us/fermate_autobus_roma_sna/">http://de.straba.us/fermate_autobus_roma_sna/</a>
prendere visione dei dati (il file è grosso, quindi impiega a caricare, il consiglio è di cercare una fermata, esempio <em>TERMINI</em>, nell'apposita box).
Questi dati sono rilasciati come open data in <a href="http://creativecommons.org/publicdomain/zero/1.0/">CC0</a>.
Questo calcolo è stato fatto attraverso lo script python <a href="https://github.com/paulgb/gtfs-gexf">gtfs-gefx</a> partendo elaborando i dati dell'<a href="http://www.agenziamobilita.roma.it/servizi/open-data/">agenzia della mobilità di Roma</a> che di recente ha rilasciato questo patrimonio come open data (licenza cc-by).

Il sito dell'agenzia della mobilità di Roma inoltre offre diverse risorse molto interessanti, oltre al file in formato gtfs con gli <a href="http://dati.muovi.roma.it/gtfs/google_transit.zip">orari dei trasporti aggiornatissimi</a> (e si tratta dello stesso che viene utilizzato da google transit), sono presenti tantissimi <a href="http://www.agenziamobilita.roma.it/servizi/open-data/dataset.html">dataset</a> geografici (varchi ztl, semafori, parcheggi di scambio ...) ciascuno accessibile via <a href="http://www.esri.com/industries/landing-pages/geoservices/geoservices">GeoServices REST</a> con tanto di <a href="http://hub.qgis.org/wiki/17/Arcgis_rest?version=3">indicazioni sul come usarli con software come qgis</a> ed anche <a href="http://www.agenziamobilita.roma.it/servizi/open-data/servizi-real-time.html">API per interrogare la posizione degli autobus</a> in tempo reale.
Infine, tantissima della tecnologia utilizzata dall'agenzia, è anche disponibile con il <a href="http://www.agenziamobilita.roma.it/servizi/open-data/codice-sorgente.html">codice sorgente.</a> (licenza GPL 2.0).
Decisamente un esempio da seguire.
