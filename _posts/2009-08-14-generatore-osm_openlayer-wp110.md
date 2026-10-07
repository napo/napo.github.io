---
layout: post
title: "Generatore openlayers con mappe OSM"
date: "2009-08-14 14:37:18"
permalink: "/generatore-osm_openlayer/"
original_url: "https://de.straba.us/generatore-osm_openlayer/"
render_with_liquid: false
categories:
  - "maps"
  - "openstreetmap"
  - "software libero"
tags:
  - "openlayers"
  - "webmapping"
---

<br/>
<br/>
<br/>
e dopo il post<a href=" http://de.straba.us/2009/08/10/embed_a_osm_map/"> HOWTO: inserire una mappa OSM nel proprio sito</a> ecco che il buon <a href="http://wiki.openstreetmap.org/wiki/User:Alessioz">alessio</a> segnala 

<h1><a href="http://osmtools.de/easymap/index.php?lang=it&page=editor">OSM SlippyMap Generator</a></h1>

<img src="http://de.straba.us/wp-content/uploads/2009/08/OSM_SlippyMap_Generator.jpg" alt="OSM_SlippyMap_Generator" title="OSM_SlippyMap_Generator" width="450" height="359" class="alignnone size-full wp-image-111" />

Dall'interfaccia sul sito è possibile scegliere:
<ul>
	<li>uno o più rendering openstreetmap</li>
	<li>i controlli della mappa (zoom, barra di scala, mappa di overview)</li>
	<li>marcatori (fra cui anche la possibilità di disegnare)</li>
        <li>...</li>
</ul>

Il risultato è un download di una pagina html, completa di codice <a href="http://www.openlayers.org">OpenLayers</a>, pronta per essere utilizzata nel proprio spazio web.

Nota: assieme all'html generato si devono scaricare anche questi due file
<ul>
<li>
<a href="http://osmtools.de/easymap/temp/util.js">util.js</a></li>
<li><a href="http://osmtools.de/easymap/temp/map.css">map.css</a></li>
</ul>
che vanno inseriti nello spazio dove il file .html sarà ospitato.


