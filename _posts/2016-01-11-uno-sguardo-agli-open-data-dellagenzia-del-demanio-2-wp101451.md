---
layout: post
title: "uno sguardo agli open data dell’agenzia del demanio"
date: "2016-01-11 11:36:12"
permalink: "/uno-sguardo-agli-open-data-dellagenzia-del-demanio-2/"
original_url: "https://de.straba.us/uno-sguardo-agli-open-data-dellagenzia-del-demanio-2/"
render_with_liquid: false
categories:
  - "opendata"
tags:
  - "geocoding"
  - "gis"
  - "mappe"
  - "opendata"
  - "opendemanio"
---

Luglio 2015 – l’Agenzia del Demanio lancia il portale open data <a href="http://dati.agenziademanio.it/">dati.agenziademanio.it</a> e subito se ne discute sulla mailing list di <a href="https://groups.google.com/d/msg/spaghettiopendata/3urxhbaSwqk/bG5iTolCCwAJ">Spaghetti Open Data</a>.
Il primo pensiero è stato “Poche idee ma ben confuse” visto che non erano chiari i termini della licenza e, comunque, i dati rilasciati erano terribilmente aggregati.
Il <a href="http://www.agenziademanio.it/export/download/demanio/sala_stampa/15_07_31-Comunicato-stampa-OpenDemanio_Agenzia-del-Demanio.pdf">comunicato stampa</a> faceva però ben sperare su eventuali evoluzioni della piattaforma.
E così, ai primi di gennaio 2016, finalmente<img class=" wp-image-100015 alignright" src="http://de.straba.us/wp-content/uploads/2016/01/opendtademanio.png?resize=398%2C296" sizes="(max-width: 398px) 100vw, 398px" srcset="http://de.straba.us/wp-content/uploads/2016/01/opendtademanio.png?resize=300%2C223 300w, http://de.straba.us/wp-content/uploads/2016/01/opendtademanio.png?w=600 600w" alt="opendtademanio" width="105" height="21" /> una nuova versione molto più ricca con chiarezza sulle licenze e con l’elenco dei fabbricati del patrimonio immobiliare dello Stato in gestione all’Agenzia del Demanio sull’intero territorio nazionale.
Un dataset con al suo interno ben 32.691 voci di cui, per ogni edificio, è possibile conoscere l’indirizzo, la categoria patrimoniale corredati da descrizione e, dove possibile anche dei metri quadri disponibili.
Unica pecca però: l’aggiornamento dei dati è dichiarato al 31 dicembre 2014, pertanto un dataset si utile, ma che richiede poi di maggiori verifiche.

Il sito inoltre presenta anche i dati su mappa: argomento sicuramente utile, ma che mette in evidenza anche alcune problematiche quali la precisione delle coordinate.
E così, usando i vari zoom sulla mappa, cominciano ad apparire alcune imprecisioni che lasciano intendere che le geolocalizzazione è calcolata attraverso l’interrogazione di un geocoder senza una reale verifica che il dato sia corretto (es. vedere se cade all’interno dei confini nazionali/regionali/provinciali/comunali dichiarati).

L’interrogazione sulla mappa inoltre mette in evidenza alcuni attributi che, nel file presente in open data, sembrano proprio assenti.<img class=" wp-image-100016 alignleft" src="http:///de.straba.us/wp-content/uploads/2016/01/agenziademanio_errore_mappa.png?resize=392%2C281" sizes="(max-width: 392px) 100vw, 392px" srcset="http://de.straba.us/wp-content/uploads/2016/01/agenziademanio_errore_mappa.png?resize=300%2C215 300w, http://de.straba.us/wp-content/uploads/2016/01/agenziademanio_errore_mappa.png?w=599 599w" alt="agenziademanio_errore_mappa" width="195" height="21" />
Uno di questi è la disponibilità dell’immobile (= libero o occupato).

Da qui la curiosità spinge a guardare le chiamate che fa la mappa, e scoprire quindi che i dati sono disponibili attraverso le rest API del prodotto arcgis esri.
Guardando quindi le chiamate al <a href="http://dati.agenziademanio.it/arcgis/rest/services/demanio/ricercaPOI/MapServer/0/">servizio del demanio</a> e la <a href="http://resources.arcgis.com/en/help/rest/apiref/">documentazione delle api</a> diventa poi facile investigare i dati e scoprire che quelli presenti sul server (e quindi sulla mappa) sono molti di più di quelli disponibili per il download (41.782 rispetto ai 32.691).

<img class="wp-image-100019 alignright" src="http://de.straba.us/wp-content/uploads/2016/01/disponibilitaimmobile.png?resize=325%2C289" alt="disponibilitaimmobile" width="325" height="289" />

Inoltre sono molti di più gli attributi disponibili: quantomeno gli attributi “<em>DESCRSTATOOCCUPAZIONE</em>” e “<em>DESCRTIPOUTILIZZATORE</em>” permettono di capire rispettivamente se lo stabile è libero e chi ne fa uso.

.. e così il buon <a href="https://twitter.com/aborruso">Andrea Borruso</a>, anticipando molti, ha avuto modo di creare un file geojson con tutti i <a href="https://gist.github.com/aborruso/c0bfd9a19ff5dff58db2">dati disponibili</a> che, messi su mappa, mostrano anche che il geocoder utilizzato non è proprio perfetto visto che molti dati cadono al di fuori dei confini nazionale anche se i loro attributi dichiarano di rappresentare comuni italiani.

<img class="wp-image-100018 aligncenter" src="http://de.straba.us/wp-content/uploads/2016/01/demanioandrea.png?resize=741%2C414" sizes="(max-width: 741px) 100vw, 741px" srcset="http://de.straba.us/wp-content/uploads/2016/01/demanioandrea.png?resize=300%2C168 300w, http://de.straba.us/wp-content/uploads/2016/01/demanioandrea.png?resize=768%2C429 768w, http://de.straba.us/wp-content/uploads/2016/01/demanioandrea.png?w=984 984w" alt="demanioandrea" width="584" height="21" />

Non c’è ombra di dubbio che il lavoro in atto da parte dell’agenzia del demanio è delicato e che la scelta, oltre ad avere un elevato valore morale, è anche coraggiosa.
Questi piccoli rilasci fanno ben sperare all’arrivo di un prodotto che sarà sempre più importante e strategico.
La parola d’ordine è collaborazione.