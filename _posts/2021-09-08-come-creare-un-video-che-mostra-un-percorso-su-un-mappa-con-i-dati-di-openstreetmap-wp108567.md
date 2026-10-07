---
layout: post
title: "Come creare un video che mostra un percorso su un mappa con i dati di OpenStreetMap"
date: "2021-09-08 16:15:51"
permalink: "/come-creare-un-video-che-mostra-un-percorso-su-un-mappa-con-i-dati-di-openstreetmap/"
original_url: "https://de.straba.us/come-creare-un-video-che-mostra-un-percorso-su-un-mappa-con-i-dati-di-openstreetmap/"
render_with_liquid: false
categories:
  - "civic hacking"
  - "dataviz"
  - "gis"
  - "maps"
  - "opendata"
  - "openstreetmap"
tags:
  - "gpx"
  - "open data"
  - "opendata"
  - "openstreetmap"
  - "osm"
  - "trento"
  - "video"
---

<!-- wp:heading -->
<h2>Epilogo</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p><strong>Matteo</strong> - "C<em>iao! Hai visto che ci sono i campionati europei di ciclismo a Trento? Ci piacerebbe fare una mappa animata dei percorsi. Ci puoi dare un mano?</em>"</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Napo</strong> - "<em>Volentieri! Fammi avere le i</em>nformazioni che ora sono in giro"</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Su WhatsApp dopo 15 minuti mi arriva il messaggio </p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>"Ciao, Matteo mi ha detto che ci puoi fare le mappe. Trovi le indicazioni sul sito del Comune di Trento alla pagina .... Grazie Renzo".</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>Il risultato lo vedete nel video che trovate nell'articolo "<a href="https://www.ladige.it/video/europei-di-ciclismo-ci-siamo-il-calendario-della-chiusura-delle-strade-e-la-videomappa-del-percorso-1.2988671">Europei di ciclismo, ci siamo: il calendario della chiusura delle strade e la videomappa del percorso" </a></p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2>HOWTO</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>La "ricetta" per creare il video con la mappa di per se è abbastanza semplice, tant'è che anche Google Earth 5 ha una sua funzione per fare questa <a href="https://support.google.com/earth/answer/148174?hl=it">operazione</a> partendo dal menu "Aggiungi -&gt; Tour" che può essere fatta manualmente oppure attraverso una traccia GPX.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La traccia GPX contiene il percorso nella sua sequenza temporale da tratto a tratto.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Google Earth non è il solo software in grado di fare questo. Una ottima alternativa, con possibilità di cambiare sfondi (a meno però della parte 3D) viene da <a href="https://gpx-animator.app/">GPX Animator</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Un ulteriore vantaggio di GPX Animator è quello di poter definire arbitrariamente i valori delle sequenze temporali dei tratti di una traccia GPX.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I passaggi quindi sono 2:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>creare il grafo stradale</li><li>utilizzare GPX Animator per creare il video</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Ecco come ho fatto nel caso specifico</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>creare il grafo stradale</h3>
<!-- /wp:heading -->

<!-- wp:image {"align":"left","id":108569,"width":252,"height":230,"sizeSlug":"full","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="alignleft size-full is-resized"><img src="https://de.straba.us/wp-content/uploads/2021/09/image-1.png" alt="" class="wp-image-108569" width="252" height="230"/><figcaption>la pagina informativa del sito del Comune di Trento</figcaption></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Il Comune di Trento ha creato una <a href="https://www.comune.trento.it/Citta/Campionati-europei-di-ciclismo-8-12-settembre-2021/Viabilita">pagina</a> per far conoscere ai cittadini quali saranno le zone interessate dal percorso questa informazione, assieme a quella dei percorsi ufficiali </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I percorsi sono descritti giorni per giorno ed ho cominciato da quello dell'8 settembre 2021 dove si legge</p>
<!-- /wp:paragraph -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:paragraph -->
<p><strong>mercoledì 8 settembre</strong></p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li><strong>dalle 8.30 alle 12 e dalle 13.45 alle 17:&nbsp;</strong><em>corso del Lavoro e della Scienza, via Sanseverino, via Jedin, via al Desert, via del Ponte, via Stella, strada provinciale 90 </em>(fino a rotatoria Aldeno e ritorno)<em>, strada provinciale 21 via della Gotarda, via Nazionale, via S. Vincenzo, via Madonna Bianca, via Degasperi, via Monte Baldo, via Olivetti</em>.</li></ul>
<!-- /wp:list -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:paragraph -->
<p>Soluzione però dispendiosa in quanto poi è necessario guardarsi ogni geometria, trovare gli incroci, tagliare cosa non serve ecc... <br>Alternativa quindi di maggior successo quella di fare calcolare ad un software di routing il percorso scegliendo i vari incroci come tappe da raggiungere.<br></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La scelta è caduta così in maniera naturale su OpenRouteService in quanto, fra le tante funzionalità, permette anche l'esportazione dei tragitti creati in vari formati (geojson e gpx per primi).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>E così ho cominciato a costruire il percorso dal punto di partenza aggiungendo le varie tappe (in questo caso incroci)</p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":108581} -->
<figure class="wp-block-video"><video controls src="https://de.straba.us/wp-content/uploads/2021/09/ors.mp4"></video><figcaption>come si usa openrouteservice</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p>Come tipologia di mezzo ho scelto l'automobile in quanto, essendo una gara ciclistica professionistica, le strade utilizzate dai corridori sono esattamente quelle delle auto.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Da qui ho scaricato il file in formato ed elaborato in <a href="http://umap.openstreetmap.fr/en/map/camponati-europei-ciclismo-2021-mercoledi-8-settem_653160#12/46.0235/11.1348">uMap</a> facendo qualche pulizia e per mettere online la traccia generata scegliendo anche stil, messaggi di popup ed altro ancora.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108586,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2021/09/join.png" alt="" class="wp-image-108586"/><figcaption>da openrouteservice a umap</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>in alternativa avrei potuto usare anche <a href="https://gpx.studio/">GPX.studio</a> rinunciando però alla pubblicazione della mappa ma ottenendo alcune elaborazioni come - ad esempio - il profilo altimetrico (clip comunque utile per un eventuale montaggio video)<br></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108591,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2021/09/Selection_217.png" alt="" class="wp-image-108591"/><figcaption>la traccia GPX vista con GPX.studio</figcaption></figure>
<!-- /wp:image -->

<!-- wp:heading {"level":3} -->
<h3>creare il video</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>a questo punto il lavoro diventa tutto in discesa partendo dal download della traccia in formato GPX dal progetto uMap creato (o da GPX Studio).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il software usato per il video è <a href="https://gpx-animator.app/">GPX Animato</a>r - un software scritto in java e quindi multi-piattaforma.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'installazione avviene senza tanti problemi.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La prima operazione da svolgere è quella di inserire la traccia (Add Track) e configurarla con le impostazioni che preferiamo.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La mia configurazione ha scelto il colore rosso per la traccia (1), una durata di un minuto  e quindi secondi per ogni tratta (2), a definizione di 7 minuti per fare tutto il percorso (3) ed infine ho aggiunto l'iconcina di una bicicletta per dare l'idea del percorso (ho preso quella di default e l'ho semplicemente modificata).</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108593,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2021/09/image-7.png" alt="" class="wp-image-108593"/><figcaption>la configurazione di una traccia di GPX Animator</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Come mappa di background c'è l'imbarazzo della scelta fra tutte quelle che sono utilizzate da chi collabora al progetto OpenStreetMap (dai vari rendering ufficiali a quelli più specifici come OpenTopoMap a ortofocarta con copertura globale come Mapbox/ESRI/Maxar a quelle più specifiche di nazione per nazione di cui è stato dato il permesso di riuso).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Una volta ottenuto il bottone di rendering, in pochi minuti ho avuto il mio video.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>... video che poi ho ruotato di 90 gradi usando un software di video editing (<a href="http://avidemux.sourceforge.net/" target="_blank" rel="noreferrer noopener">a</a><a rel="noreferrer noopener" href="http://avidemux.sourceforge.net/" target="_blank">videmux</a>) in quanto Trento si sviluppa sull'asse est-ovest, ma le mappe sono orientate in direzione nord.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108596,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/09/short-1-1024x576.gif" alt="" class="wp-image-108596"/><figcaption>uno zoom su una zona del percorso</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>GPX Animator fa di suo già tante cose belle (scelta del livello di scala, inquadramento su un'area geografica, inserimento di una immagine, scelta dei loghi ecc...) e, a giudicare dal suo repository <a href="https://github.com/zdila/gpx-animator">github</a>, si vedranno presto sviluppi sempre più interessanti.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Happy (videomap) hacking :)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>Link ai prodotti utilizzati</h3>
<!-- /wp:heading -->

<!-- wp:list -->
<ul><li><a href="https://maps.openrouteservice.org">OpenRouteService</a>:  per creare i percorsi</li><li><a href="https://umap.openstreetmap.fr">uMap</a>: per avere una mappa navigabile</li><li><a href="https://gpx.studio">GPX.studio</a>: per ripulire il flle gpx e il profilo altimetrico</li><li><a href="https://gpx-animator.app/">GPX Animator</a>: per creare il video con la traccia GPX disegnata</li><li>.. il software di video editing che preferisci</li></ul>
<!-- /wp:list -->

<figure><img src="/assets/images/medium/a7279d28d6d3e521.png" alt="Come creare un video che mostra un percorso su un mappa con i dati di OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/1197560f422dd1ad.png" alt="Come creare un video che mostra un percorso su un mappa con i dati di OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/58cf268a6bdb035f.png" alt="Come creare un video che mostra un percorso su un mappa con i dati di OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/a2c1d89dce6b8230.png" alt="Come creare un video che mostra un percorso su un mappa con i dati di OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/1862d363691cb7c9.gif" alt="Come creare un video che mostra un percorso su un mappa con i dati di OpenStreetMap" /></figure>
<p><a href="https://medium.com/p/619720f15188">Versione originale su Medium</a></p>
