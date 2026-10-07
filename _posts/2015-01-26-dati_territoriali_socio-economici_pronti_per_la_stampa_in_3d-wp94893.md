---
layout: post
title: "dati territoriali socio economici pronti per la stampa in 3D"
date: "2015-01-26 19:26:48"
permalink: "/dati_territoriali_socio-economici_pronti_per_la_stampa_in_3d/"
original_url: "https://de.straba.us/dati_territoriali_socio-economici_pronti_per_la_stampa_in_3d/"
render_with_liquid: false
categories:
  - "maps"
  - "opendata"
tags:
  - "3d printer"
  - "mappe"
  - "maps"
  - "open data"
  - "stl"
  - "Trentino"
  - "turismo"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2015/01/image3112.png" alt="dati territoriali socio economici pronti per la stampa in 3D" /></figure>

<a href="http://dougmccune.com/blog/2010/06/05/if-san-francisco-crime-was-elevation/"><img class="  alignright wp-image-94903 size-medium" src="http://de.straba.us/wp-content/uploads/2015/01/sanfrancisco_prostitution-199x300.png" alt="sanfrancisco_prostitution" width="199" height="300" /></a>
<h1>SHP2STL</h1>
<a href="http://dougmccune.com/">Doug McCune</a>, ha creato l'interessante libreria "<a href="https://github.com/dougmccune/shp2stl">shp2stl</a>" che trasforma un file in formato <a href="https://it.wikipedia.org/wiki/Shapefile">.shp</a> (usato per i dati geografici vettoriali) in formato <a href="https://it.wikipedia.org/wiki/STL_%28formato_di_file%29">stl</a> (usato nella prototipazione 3D per i CAD).
Il formato stl è comunemente usato nella stampa 3D. Questo formato può essere visualizzato con diversi software, fra cui l'italianissimo <a href="http://meshlab.sourceforge.net/">Meshalb</a>.
GitHub offre un <a href="https://github.com/blog/1465-stl-file-viewing">visualizzatore online</a> di stl se il file caricato in un repository.

L'idea geniale di Doug è stata quella di creare mappe 3D fisiche che rappresentino dati di tipo socio-economico.
L'esempio più affascinante viene dalle <a href="http://dougmccune.com/blog/2010/06/05/if-san-francisco-crime-was-elevation/">stampe del crimine a San Francisco</a>.

<h1>Un esempio con dati.trentino.it</h1>
Affascinato dal tutto ho provato ad elaborare qualcosa partendo da dagli <a href="http://dati.trentino.it/dataset?q=comunita+di+valle&amp;organization=pat-s-statistica">indicatori statistici per comunità di valle del Trentino</a> scaricabili dal portale open data <a href="http://dati.trentino.it">dati.trentino.it</a>.
Come esempio ho preso il dataset del <a href="http://dati.trentino.it/dataset/tasso-di-turisticita">tasso di turisticità</a> (<strong>espresso in percentuale</strong>) incrociato con le <a href="http://dati.trentino.it/dataset/comunita-di-valle-870727">geometrie delle comunità di valle</a> filtrato all'anno 2013.

Ho così ottenuto un file csv con le 16 <a href="https://it.wikipedia.org/wiki/Comunit%C3%A0_di_valle">Comunità di Valle</a> e relativi indicatore di turisticità del 2013.
L'indicatore è calcolato come "l<em>e presenze medie giornaliere in strutture alberghiere. complementari e alloggi privati su popolazione residente per 100</em>" (fonte: <a href="http://www.statistica.provincia.tn.it/">servizio statistica Provincia Autonoma di Trento</a>)

[csv src=https://raw.githubusercontent.com/napo/shp2stl_experiments/master/3dmaps/tasso_turistico_2013_comunita_valle_trentino/tasso_turistico_comunita_valle_2013.csv]
<span style="font-size: xx-small;">(fare clic sulla colonna "valore" per ordinare la tabella)</span>

Apparentemente la tabella sembra presentare un errore in quanto il valore della comunità di valle <a href="https://it.wikipedia.org/wiki/Comunit%C3%A0_Rotaliana-K%C3%B6nigsberg">Rotaliana-Königsberg</a> è ripetuto due volte.
Il file è stato generato incrociando i dati del servizio statistica con il file con le geometrie delle comunità di valle prodotto dal servizio <a href="http://www.urbanistica.provincia.tn.it/">servizio urbanistica e tutela del paesaggio</a>.
Il dato geografico delle comunità di valle presenta 17 geometrie in quanto, il comune di <a href="https://it.wikipedia.org/wiki/Zambana">Zambana</a>, appartenente alla comunità di valle in questione si estende su un'<a href="https://it.wikipedia.org/wiki/Enclave">enclave</a> che si trova a cavallo fra altre comunità di valle.

<script src="https://embed.githubusercontent.com/view/geojson/napo/shp2stl_experiments/master/3dmaps/tasso_turistico_2013_comunita_valle_trentino/tasso_turistico_comunita_valle_2013.topojson"></script>L'associazione fra indicatori e geometrie permette di creare una <a href="https://it.wikipedia.org/wiki/Mappa_coropletica">mappa coropletica</a> colorando le aree con una scala dall'arancio (minimo) al rosso (massimo) in relazione al valore dell'indicatore.<script src="https://embed.githubusercontent.com/view/3d/napo/shp2stl_experiments/master/3dmaps/tasso_turistico_2013_comunita_valle_trentino/tasso_turistico_comunita_valle_2013.stl"></script>
ma la conversione in .stl genera poi quel fascino del 3D che fa poi venire voglia di stampare il risultato
<h1>angolo dello spippolatore</h1>
<h3>La struttura dei dati</h3>
Come già visto precedentemente gli ingredienti base sono:
un file di tipo tabellare con un indicatore associabile ad una geometria o attraverso la stessa oppure tramite un identificatore univoco comune
un file contenente dati geografici in formato vettoriale a cui poter associare, per ogni geometria, un attributo
nell'esempio riportato si è scelto pertanto il <a href="http://www.statweb.provincia.tn.it/indicatoristrutturalisubpro/exp.aspx?idind=48&amp;info=d&amp;fmt=csv">tasso di turisticità delle comunità di valle in formato .csv</a> e il <a href="http://www.territorio.provincia.tn.it/geodati/813_Comunit__di_valle_12_12_2011.zip">vettoriale dei confini delle comunità di valle del Trentino</a>.
Purtroppo le due risorse, così come sono, richiedono prima di qualche accorgimento:
Il file .csv, che usa come separatore il punto e virgola, si presenta su 494 righe e 3 colonne. La prima riga contiene l'intestazione e descrive tre variabili: <em>anno</em>, <em>codEnte</em> e <em>valore</em>.
Di queste quella leggermente sibillina suona la seconda che espansa sta per "codice ente" e rappresenta il codice univoco con cui si distinguono le comunità di valle.
I metadati sono descritti all'indirizzo <a href="http://www.statweb.provincia.tn.it/INDICATORISTRUTTURALISubPro/selezione.aspx?idind=48">http://www.statweb.provincia.tn.it/INDICATORISTRUTTURALISubPro/selezione.aspx?idind=48</a> da cui è anche possibile fare estrazioni mirate per anno e per unità territoriali.
I valori contenuti da "codEnte" vanno da 1001 a 1016 oltre al valore 9999. Ad esclusione dell'ultimo (che rappresenta il valore per l'intero territorio della Provincia Autonoma di Trento) ciascuno riferisce ad una precisa comunità di valle.
Il file con le geometrie delle comunità di valle, invece, si presenta con un file .zip che contiene al suo interno il numero minimo di file con cui distribuire uno shapefile.
Si tratta del file delle geometrie (<em>ammcva.shp</em>), degli attributi (<em>ammcva.dbf</em>) e degli indici fra attributi e geometrie (<em>ammcva.shx</em>). Manca, purtroppo, il file che descrive la proiezione usata per rappresentare i dati.
La <a href="http://dati.trentino.it/dataset/comunita-di-valle-870727">scheda informativa del dataset</a> riporta <em>ETRS89</em>, andando a controllare poi ulteriore documentazione allegata si scopre che si tratta della <em>ETRS89 / UTM zone 32N</em> codice <a href="http://spatialreference.org/ref/epsg/25832/">EPSG:25832</a>.
Al sito <a href="http://spatialreference.org/">spatialreference.org</a> è disponibile la sua codifica in formato <a href="http://spatialreference.org/ref/epsg/25832/prj/">.prj</a> (il quarto file necessario per distribuire shapefile riusabili).
Scaricando il file e rinominadolo in <em>ammcva.prj</em> si risolve il problema.
Lo shapefile può essere così visualizzato in un software come <a href="http://qgis.org">QGIS</a> e, da lì investigarlo.
<h3>creare il file .stl manualmente</h3>
<a href="http://de.straba.us/wp-content/uploads/2015/01/qgis_data.png"><img class="alignright size-medium wp-image-94927" src="http://de.straba.us/wp-content/uploads/2015/01/qgis_data-300x245.png" alt="qgis_data" width="300" height="245" /></a>Gli attributi associati alle geometrie sono 7: <em>AREA</em> (area della geometria), <em>PERIMETER</em> (perimetro della geometria), <em>COMUNITA</em> (identificativo univoco delle geometrie associate ad una singola comunità di valle), <em>PROV</em> (codice istat per la provincia autonoma di trento), <em>DESC_</em> (nome della comunità di valle) e <em>SEDE</em> (nome del comune dove si trova la sede della relativa comunità di valle).
I campi utili per associare i dati del file .csv alle geometrie sono <em>codEnte</em> e <em>COMUNITA</em>. Con la differenza che il primo si presenza con sequenza da 1001 a 1016 e il secondo da 1 a 16.
Inoltre, il file .csv, va filtrato per l'anno che si vuole rappresentare.
A questo punto attraverso un foglio di calcolo (es. <a href="http://www.libreoffice.org/">LibreOffice</a>) vanno modificati i valori di "codEnte" in modo d'averli nella sequenza da 1 a 16 e si estrae una copia dei dati filtrando per l'anno di interesse (es. 2013).
Ottenuto il nuovo file si s<a href="http://www.qgistutorials.com/it/docs/performing_table_joins.html">egue la procedura di QGIS attraverso cui estendere gli attributi di uno shapefile attraverso un file tabellare</a> in formato csv e si genera il nuovo file .shp.
Per la creazione del file .stl serve:
<ul>
	<li><a href="http://nodejs.org/download/">installare node.js</a>
(le istruzioni sono al sito ufficiale)</li>
	<li>installare shp2stl<code>npm install shp2stl</code></li>
	<li>creare un file .js con i comandi di conversioneQuesta operazione richiede la creazione di un file di testo, qui un esempio per il file
<pre class="theme:github lang:js decode:true" title="crea_stl.js">var fs = require('fs');
var shp2stl = require('shp2stl');
var file = 'tasso_turistico_comunita_valle_2013.shp';
shp2stl.shp2stl(file,
{
width: 100, //le unità in STL sono arbitrarie, ma tipicamente le stampanti 3D usano mm
height: 10,
extraBaseHeight: 0,
extrudeBy: "valore",
simplification: 0.2,
binary: true,
cutoutHoles: false,
verbose: true,
extrusionMode: 'straight'
},
function(err, stl) {
fs.writeFileSync('tasso_turistico_comunita_valle_2013.stl', stl);
}
);
</pre>
le informazioni importanti da conoscere sono:
<ul>
	<li>riga 2: nome del file .shp da trasformare</li>
	<li>riga 10: valore (da 0 a 1) per semplificare le geometrie (utile per generare file più piccoli)</li>
	<li>riga 17: nome del file .stl da generare</li>
</ul>
</li>
	<li>eseguire il file .js con il comando <code>nodejs crea_stl.js</code></li>
</ul>
<h3>automatizzare il tutto con uno script</h3>
Quanto descritto sopra è automatizzabile con un po' di bash scripting e appoggiandosi a tool come wget, spatialite e ogr2ogr.
È richiesta un po' di conoscenza di SQL, ma non è così complesso come si può immaginare.
<pre class="theme:github lang:sh decode:true" title="bash shell script">wget -c "http://www.statweb.provincia.tn.it/indicatoristrutturalisubpro/exp.aspx?idind=48&amp;info=d&amp;fmt=csv" -O tasso_turistico_comunita_valle.csv
wget -c http://www.territorio.provincia.tn.it/geodati/813_Comunit__di_valle_12_12_2011.zip
unzip 813_Comunit__di_valle_12_12_2011.zip
wget http://spatialreference.org/ref/epsg/25832/prj/ -O ammcva.prj
cat &gt; cmd.sql &lt;&lt; EOF
CREATE VIRTUAL TABLE "ammcva" USING VirtualShape('ammcva','UTF-8', 25832);
CREATE VIRTUAL TABLE "tasso_turistico_comunita_valle" USING VirtualText('tasso_turistico_comunita_valle.csv',
'UTF-8', 1, POINT, NONE, ';');
create table "tasso_turistico_comunita_valle_2013" as SELECT DISTINCT(cast("b"."COMUNITA" as integer)) AS "id", lower("b"."DESC_") AS "comunita", lower("b"."SEDE") AS "sede","a"."valore" AS "valore","b"."Geometry" AS "geometry"
FROM "tasso_turistico_comunita_valle" AS "a"
JOIN "ammcva" AS "b" ON ("a"."codEnte"-1000 = "b"."COMUNITA") WHERE "a"."anno"=2013;
SELECT RecoverGeometryColumn('tasso_turistico_comunita_valle_2013','geometry',25832,'POLYGON','XY');
.dumpshp tasso_turistico_comunita_valle_2013 geometry "tasso_turistico_comunita_valle_2013" "utf-8"
EOF
spatialite ammcva.sqlite &lt; cmd.sql
ogr2ogr -f "geojson" -t_srs epsg:4326 tasso_turistico_comunita_valle_2013.geojson tasso_turistico_comunita_valle_2013.shp
spatialite -header -csv ammcva.sqlite "select id, comunita, sede,valore from tasso_turistico_comunita_valle_2013" &gt; tasso_turistico_comunita_valle_2013.csv
mkdir -p ../3dmaps/tasso_turistico_2013_comunita_valle_trentino
rm *.zip
rm ammcva*
rm *.sql
nodejs shp2stl_tasso_turistico_comunita_valle_2013.js
mv tasso_turistico_comunita_valle_2013* ../3dmaps/tasso_turistico_2013_comunita_valle_trentino</pre>
Le righe dalla 1 alla 4 servono a scaricare i dati.
Dalla 5 alla 14 invece ad incrociare i dati delle tue tabelle.
Interessante l'uso dei comandi "<em>CREATE VIRTUAL TABLE [...]</em>" i quali permettono di accedere ai file .csv e .shp senza importarli in spatialite ma astraendoli come se fossero tabelle.
Nel comando successivo la query SQL necessaria per unire le tabelle si occupa anche di sistemare i nomi delle colonne e di conciliare i due indici (<em>codEnte</em> e <em>COMUNITA</em>)
E, infine, quella per generare il file .shp.
Il nuovo file csv viene creato da un comando spatialite (riga 15) mentre ogr2ogr si occupa di creare un file <a href="https://github.com/napo/shp2stl_experiments/blob/master/3dmaps/tasso_turistico_2013_comunita_valle_trentino/tasso_turistico_comunita_valle_2013.geojson">.geojson</a> utile allo script per nodejs con cui si genera il file <a href="https://github.com/napo/shp2stl_experiments/blob/master/3dmaps/tasso_turistico_2013_comunita_valle_trentino/tasso_turistico_comunita_valle_2013.topojson">.topojson</a> necessari alla creazione del file <a href="https://github.com/napo/shp2stl_experiments/blob/master/3dmaps/tasso_turistico_2013_comunita_valle_trentino/tasso_turistico_comunita_valle_2013.stl">.stl</a>
La riga 22 esegue il file <a href="https://github.com/napo/shp2stl_experiments/blob/master/scripts/shp2stl_tasso_turistico_comunita_valle_2013.js">shp2stl_tasso_turistico_comunita_valle_2013.js</a>
Qui riportato
<pre class="theme:github lang:js decode:true " title="shp2stl_tasso_turistico_comunita_valle_2013.js">var shapefile = require('shapefile'),
geocolor = require('geocolor'),
shp2stl = require('shp2stl'),
fs = require('fs'),
topojson = require('topojson'),
ogr2ogr = require('ogr2ogr'),
brewer = require('colorbrewer');
geodata = require('geojson');
var fileRoot = "tasso_turistico_comunita_valle_2013",
shpFile = fileRoot + ".shp",
attribute = "valore",
numBreaks = 9,
colorScheme = "Oranges"
var sourceProjection = fileRoot + ".prj";
var obj = JSON.parse(fs.readFileSync(fileRoot + ".geojson", 'utf8'));
geojson = geocolor.jenks(obj, attribute, numBreaks, brewer[colorScheme][numBreaks], {'stroke-width':.3})
fs.writeFileSync(fileRoot + ".geojson", JSON.stringify(geojson));
var topology = topojson.topology(geojson.features, {"property-transform": function(feature) { return feature.properties; }});
fs.writeFileSync(fileRoot + ".topojson", JSON.stringify(topology));
shp2stl.shp2stl(shpFile,
{
width: 100, //le unità in STL sono arbitrarie, ma tipicamente le stampanti 3D usano mm
height: 10,
extrudeBy: attribute,
sourceSRS: sourceProjection,
extraBaseHeight: 0,
simplification: 0.2,
//trasformazione secondo la proiezione di Google Mercatore
//semplicemente per una visualizzazione meno sferica
destSRS: 'EPSG:900913'
},
function(err, stl) {
fs.writeFileSync(fileRoot + '.stl', stl);
}
);</pre>
Questo si distingue rispetto al precedente solo perchè risolve la questione di generare un file .topojson completo della rappresentazione come mappa coropletica facendo uso dell'algoritmo <a href="https://en.wikipedia.org/wiki/Jenks_natural_breaks_optimization">jenks breaks</a> che definisce i colori rispetto all'indicatore scelto e alle dimensioni della geoemtria a cui si applica rispetto alle altre per evitare confusioni di valutazioni quando l'area è piccola rispetto alle altre ma ha un indicatore alto.
Il codice è rilasciato su <a href="https://github.com/napo/shp2stl_experiments">github</a>