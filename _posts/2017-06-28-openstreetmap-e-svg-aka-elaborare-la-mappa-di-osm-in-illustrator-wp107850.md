---
layout: post
title: "OpenStreetMap e SVG (aka elaborare la mappa di OSM in Illustrator)"
date: "2017-06-28 23:46:41"
permalink: "/openstreetmap-e-svg-aka-elaborare-la-mappa-di-osm-in-illustrator/"
original_url: "https://de.straba.us/openstreetmap-e-svg-aka-elaborare-la-mappa-di-osm-in-illustrator/"
render_with_liquid: false
categories:
  - "maps"
  - "opendata"
  - "openstreetmap"
tags:
  - "adobe illustrator"
  - "export"
  - "maperitive"
  - "openstreetmap"
  - "svg"
---

<h1>Il problema</h1>

Una richiesta che mi sento ricorrente da chi opera nel mondo della grafica è

<blockquote>"Ma come posso portare la mappa di OpenStreetMap in Illustrator?".</blockquote>

La risposta più semplice ed efficace è

<blockquote>"Basta che esporti i dati in SVG!"</blockquote>

Questo accende subito il sorriso di gioia sulle labbra di chi domanda che arriva con la seconda domanda

<blockquote>"E come si fa?".</blockquote>

Girando su <a href="http://wiki.openstreetmap.org">wiki.openstreetmap.org</a> si trovano molte risposte a questa domanda. Semplicemente cercando la parola SVG si arriva ad una <a href="http://wiki.openstreetmap.org/wiki/SVG">pagina ricca di risposte</a> e con riferimenti anche al caso di chi usa <a href="http://wiki.openstreetmap.org/wiki/Exporting_to_Adobe_Illustrator">Illustrator</a> invece che <a href="https://inkscape.org/it/">Inkscape</a>.
La necessità di avere il formato vettoriale (es. SVG) invece che raster (es. una immagine in jpg) nasce dall'esigenza di poter cambiare tutti gli oggetti che sono rappresentati sulla mappa.
Solitamente un grafico (poco smart) fa lo screenshot dello schermo e poi comincia a ricalcare quello che vede (o che interessa avere) e a definirne i colori.
Qualora invece si disponga di un formato vettoriale questo diventa tutto più facile in quanto, ogni oggetto che forma la mappa, può essere modificato o nella forma o nel modo di rappresentarlo.
Nota aggiuntiva: un esperto di sistemi informativi territoriali invece vuole avere i dati in formato geografico (generalmente esri shapefile) e poi fare la stessa operazione.

<h1>Esportare in SVG da www.openstreetmap.org</h1>

<img class="size-full wp-image-107851 alignright" src="http://de.straba.us/wp-content/uploads/2017/06/Selezione_032.png" alt="" width="283" height="495" />Tornando però al problema di convertire una mappa openstreetmap in un formato valido per Illustrator, le soluzioni sono diverse: <a href="http://www.avenza.com/resources/blog/2011/06/28/how-get-open-street-map-data-adobe-illustrator-mapublisher">plung proprietari per Illustrator</a>, librerie come <a href="http://kartograph.org/docs/kartograph.py/osm.html">kartograph</a>, software come <a href="http://www.qgis.org">QGIS</a> o <a href="https://tilemill-project.github.io/tilemill/">TileMill</a> o <a href="https://www.mapbox.com/mapbox-studio/">Mapbox</a> o ... che dopo aver convertito i dati di openstreetmap in formati gis e definito gli stile di rappresentazione permettono l'esportazione in SVG, o, infine, servizi online come <a href="https://www.lokaler.de/editor/">Lokaler</a> o <a href="http://sharemap.org/">Sharemap</a>, ecc..

La via però più immediata viene dalla stessa mappa di OpenStreetMap che offre una funzione di esportazione in vari formati (e che molti non si accorgono della sua esistenza).
Si tratta semplicemente di fare clic sull'inconcina della condivisione (rappresentato da un quadrato da cui esce una freccia) e ... magia! Fra i vari formati disponibili compare anche SVG e si può procedere con il download.
Il comando in realtà chiama il servizio <a href="http://render.openstreetmap.org//cgi-bin/export?">render.openstreetmap.org</a> a cui vengono passati i valori degli estremi delle coordinate del quadrato (bbox) che contiene la mappa, la scala (scale) e il formato (format=svg).
Qui un <a href="http://render.openstreetmap.org/cgi-bin/export?bbox=11.10346555709839,46.06474494674703,11.127283573150637,46.07227791246789&amp;scale=6003&amp;format=svg">esempio</a>
Non sempre però il file che si ottiene viene gestito bene da Illustrator, inoltre, in diversi casi, vengono scelte aree molto grandi per cui il file impiega troppo ad essere generato e, quindi, il server rifiuta la chiamata.
In questi casi è utile usare una delle soluzioni elencate sopra.

<h1>Esportare per Adobe Illustrator da Maperitive</h1>

Quella che ritengo la via più semplice per chi viene dal mondo della grafica, è dato da <a href="http://maperitive.net/">Maperitive</a>: si tratta di un software proprietario (= i sorgenti non sono disponibili) distribuito però gratuitamente. Il programma è scritto in .NET C#, e - per tale motivo - può essere eseguito su Windows (nativamente), Linux e MacOSX (in entrambi i casi installando mono e lanciando il file Maperitive.sh)
Il motto di questo software è "<em>Paint the World</em>" (= "dipingi il mondo").
L'idea di fondo è semplicissima:
1. seleziona un area
2. scarica i dati da openstreetmap
3. eventualmente scarica altri dati (es. isoipse)
4. eventualmente scarica anche la mappa come immagine (tile) da OpenStreetMap o altri rendering disponibili utilizza delle regole per definire gli stili degli oggetti da rappresentare
6. eventualmente creane di nuove o modifica le esistenti
7. esporta il risultato in svg o in immagini o in formato 3D o ...

Per soddisfare la richiesta di avere un file .svg da dare in pasto a Illustrator basato sui dati di OpenStreetMap bastano quattro passaggi nello specifico (1, 2, 5 e 7).
Supponiamo che l'area da prendere in considerazione sia quella del centro storico di Trento.

<img class="aligncenter wp-image-107853 size-large" src="http://de.straba.us/wp-content/uploads/2017/06/Selezione_033-1024x462.png" alt="" width="1024" height="462" />

questa area possiamo selezionarla sia navigando la mappa su Maperitive che andando a curiosare su quali sono le coordinate del rettangolo che la contiene premendo "export" dalla mappa di OpenStreetMap.

Maperitive ha il vantaggio di essere utilizzabile sia attraverso l'interfaccia grafica che da una linea di prompt comandi disponibile sotto la mappa.

<h2>Maperitive interfaccia grafica</h2>

Da interfaccia grafica è sufficiente seguire questi passaggi:

<h3>1. navigare la mappa sull'area di interesse</h3>

<img class="aligncenter wp-image-107864 size-full" src="http://de.straba.us/wp-content/uploads/2017/06/first.png" alt="" width="571" height="635" />

<h3>2. eliminare l'immagine della mappa</h3>

<img class="aligncenter wp-image-107857 size-full" src="http://de.straba.us/wp-content/uploads/2017/06/remove.png" alt="" width="386" height="230" />

<h3>3. scaricare i dati da OpenStreetMap via overpass-api</h3>

<img class="aligncenter wp-image-107858 size-full" src="http://de.straba.us/wp-content/uploads/2017/06/download.png" alt="" width="572" height="372" />

<h3>4. applicare uno stile</h3>

<img class="aligncenter wp-image-107859 size-full" src="http://de.straba.us/wp-content/uploads/2017/06/rules.png" alt="" width="667" height="437" />

<h3>5. esportare per Adobe Illustrator</h3>

<img class="aligncenter wp-image-107860 size-full" src="http://de.straba.us/wp-content/uploads/2017/06/export.png" alt="" width="624" height="406" />

<h2>Maperitive: tutto da linea di comando</h2>

La versione "quick&amp;dirty" da linea di comando invece si presenta con questa sequenza:
<code>
remove-source 1
download-osm-overpass bounds=11.1321,46.0635,11.1104,46.0711
apply-ruleset 1
export-svg file=/tmp/output.svg zoom=14 ai-autorescale=true compatibility=illustrator
</code>

<strong><em>remove-source 1</em></strong>
Maperitive si presenta caricando la mappa da OpenStreetMap. Attraverso questo comando la mappa viene rimossa.
Questa operazione è necessaria per il fatto che l'immagine verrebbe inglobata nel SVG, quando invece non serve.
<strong><em>download-osm-overpass bounds=11.1321,46.0635,11.1104,46.0711</em></strong>
questo comando va a scaricare i dati da OpenStreetMap attraverso overpass-api.
Le coordinate sono recuperate guardato il botton "export" da OpenStreetMap e partendo dal valore più a destra proseguendo in senso orario.
<strong> <em>apply-rulset 1</em></strong>
Maperitive offre diversi stili di rappresentazione dei dati. Quando viene installato lo stile numero 1 è quello usato sulla mappa di OpenStreetMap. Se ne si volesse uno in stile Google Maps basta scegliere il 3.
<strong> <em>export-svg file=/tmp/output.svg zoom=14 ai-autorescale=true compatibility=illustrator</em></strong>
Questo è il comando che esporta la mappa in un formato svg compatibile con Adobe Illustrator (si veda l'ultimo parametro).
Il file generato viene creato secondo quanto definito dalla variabile omonima. Ulteriori parametri sono quelli sul livello di zoom e una impostazione per migliorare l'output per Illustrator.

<h1>Ricordati di citare la fonte!</h1>

Come vedete è molto molto semplice.
Solo una nota conclusiva per tutti i grafici:
l'uso dei dati di OpenStreetMap in questo modo ricade come opera derivata dai dati, pertanto, seguendo i vincoli della licenza ODbL (quella con cui i dati sono distribuiti), è importante ricordarsi di scrivere sulla mappa
<strong>"Map Data © OpenStreetMap contributors"</strong>
Semplice no? Si tratta solo di buona educazione!