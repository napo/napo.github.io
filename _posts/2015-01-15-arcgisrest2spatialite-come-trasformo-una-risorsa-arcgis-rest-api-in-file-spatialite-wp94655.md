---
layout: post
title: "arcgisrest2spatialite: come trasformo una risorsa ArcGIS Rest API in file spatialite"
date: "2015-01-15 19:32:32"
permalink: "/arcgisrest2spatialite-come-trasformo-una-risorsa-arcgis-rest-api-in-file-spatialite/"
original_url: "https://de.straba.us/arcgisrest2spatialite-come-trasformo-una-risorsa-arcgis-rest-api-in-file-spatialite/"
render_with_liquid: false
categories:
  - "gis"
  - "software libero"
tags:
  - "gis"
  - "maps"
  - "open data"
  - "python"
---

Per colpa di <a href="https://twitter.com/aborruso">Andrea Borruso</a> e <a href="https://twitter.com/simonecortesi">Simone Cortesi</a> mi sono messo a guardare le<a href="http://resources.arcgis.com/en/help/arcgis-rest-api/index.html"> ArcGIS Rest API.</a>

Galeotto fu questo blog post<a href="http://de.straba.us/wp-content/uploads/2015/01/fabbricato_umbria_wgs84.png"><img class=" size-medium wp-image-94656 alignright" src="http://de.straba.us/wp-content/uploads/2015/01/fabbricato_umbria_wgs84-300x276.png" alt="fabbricato_umbria_wgs84" width="300" height="276" /></a>
<a href="http://blog.spaziogis.it/2014/12/29/take-the-best-use-the-rest/">http://blog.spaziogis.it/2014/12/29/take-the-best-use-the-rest/</a>

da cui ho iniziato a investigare sui numeri civici e gli edifici della Regione Umbria per creare un file <a href="http://www.gaia-gis.it/gaia-sins/">spatialite</a>
<a href="https://github.com/osmItalia/dati-umbria">https://github.com/osmItalia/dati-umbria</a>

partendo prima da uno <a href="https://github.com/osmItalia/dati-umbria/blob/master/download_civici_umbria.sh">script bash</a> e poi creando uno <a href="https://github.com/osmItalia/dati-umbria/blob/master/download_dati_umbria.py">script python</a> riscrivendo il codice di <a href="https://github.com/Schwanksta/python-arcgis-rest-query">un altro progetto</a>

Divertendomi ho scoperto che sono tanti i geoportali che usano questa tecnologia.
Ecco un elenco ricavato da una semplice query su <a href="https://www.google.it/search?&amp;q=arcgis%2Frest++site:.it">google</a>
<ul>
	<li>Umbria
<a href="http://geo.umbriaterritorio.it/ArcGIS/rest/services">http://geo.umbriaterritorio.it/ArcGIS/rest/services</a></li>
        <li>Puglia
<a href="http://webapps.sit.puglia.it/arcgis/rest/services">http://webapps.sit.puglia.it/arcgis/rest/services</a></li>
	<li>Lombardia
<a href="http://www.cartografia.regione.lombardia.it/ArcGIS10P/rest/services">http://www.cartografia.regione.lombardia.it/ArcGIS10P/rest/services</a>
<a href="http://www.cartografia.regione.lombardia.it/ArcGIS10/rest/services">http://www.cartografia.regione.lombardia.it/ArcGIS10/rest/services</a></li>
	<li>Sicilia
<a href="http://map.sitr.regione.sicilia.it/ArcGIS/rest/services"> http://map.sitr.regione.sicilia.it/ArcGIS/rest/services</a></li>
	<li>Val D'Aosta
<a href="http://prep-mappe.regione.vda.it/ARCGIS/REST/services/"> http://prep-mappe.regione.vda.it/ARCGIS/REST/services/</a></li>
	<li>Provincia di Bologna
<a href="http://cst.provincia.bologna.it/ArcGIS/rest/services/"> http://cst.provincia.bologna.it/ArcGIS/rest/services/</a></li>
	<li>Provincia di Brescia
<a href="http://sit.provincia.brescia.it/arcgis/rest/services"> http://sit.provincia.brescia.it/arcgis/rest/services</a></li>
	<li>Provincia di Cremona
<a href="http://geoportale.provincia.cremona.it/ArcGIS/rest/services"> http://geoportale.provincia.cremona.it/ArcGIS/rest/services</a></li>
	<li>Provincia di Foggia
<a href="http://sportellotelematico.provincia.foggia.it/arcgis/rest/services/"> http://sportellotelematico.provincia.foggia.it/arcgis/rest/services/</a></li>
	<li>Provincia di Trapani
<a href="http://www.provincia.trapani.sitr.it/ArcGIS/rest/services/"> http://www.provincia.trapani.sitr.it/ArcGIS/rest/services/</a></li>
	<li>Provincia di Enna
<a href="http://www.provincia.enna.sitr.it/ArcGIS/rest/services"> http://www.provincia.enna.sitr.it/ArcGIS/rest/services</a></li>
	<li>Provincia di Napoli
<a href="http://sit.provincia.napoli.it/arcgis/rest/services"> http://sit.provincia.napoli.it/arcgis/rest/services</a></li>
	<li>Provincia di Sondrio
<a href="http://geoportale.provinciasondrio.gov.it/ArcGIS/rest/services"> http://geoportale.provinciasondrio.gov.it/ArcGIS/rest/services</a></li>
	<li>Provincia di Ravenna
<a href="http://gis.provincia.ra.it/ArcGIS/rest/services"> http://gis.provincia.ra.it/ArcGIS/rest/services</a></li>
	<li>Comune di Bologna
<a href="http://sitmappe.comune.bologna.it/arcgis/rest/services"> http://sitmappe.comune.bologna.it/arcgis/rest/services</a></li>
	<li>Comune di Venezia
<a href="http://sit.comune.venezia.it:6080/arcgis/rest/services"> http://sit.comune.venezia.it:6080/arcgis/rest/services</a></li>
	<li>Comune di Pavia
<a href="http://webgis.comune.pv.it/arcgis/rest/services"> http://webgis.comune.pv.it/arcgis/rest/services</a></li>
</ul>
... il portale cartografico nazion<a href="http://de.straba.us/wp-content/uploads/2015/01/arcgis2spatialite.png"><img class=" size-medium wp-image-94657 alignleft" src="http://de.straba.us/wp-content/uploads/2015/01/arcgis2spatialite-246x300.png" alt="arcgis2spatialite" width="246" height="300" /></a>ale <a href="http://www.pcn.minambiente.it/arcgis/rest/services">http://www.pcn.minambiente.it/arcgis/rest/services</a> e <a href="http://ags.globogis.it/ArcGIS/rest/services">privati che lavorano con il pubblico</a>

Da qui è nata l'idea di <a href="https://github.com/napo/arcgisrest2spatialite">arcgisrest2spatialite</a>, un oggetto scritto in python accompagnato da alcuni <a href="https://github.com/napo/arcgisrest2spatialite/tree/master/bin">script a linea di comando</a> per abbassare la soglia di difficoltà di uso tutto rilasciato con licenza open source.
Il progettino è qui <a href="https://github.com/napo/arcgisrest2spatialite">https://github.com/napo/arcgisrest2spatialite</a>

Ho accompagnato un po' i documentazione su come installare il tutto.

Ci sono molte cose ancora da fare e, sicuramente c'è qualche bug ... ma intanto per cominciare direi che va bene.

Ogni feedback è benveuto