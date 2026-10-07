---
layout: post
title: "TUTORIAL: creare una mappa online con fotografie in uMap aggiornabile con EtherCalc"
date: "2015-05-22 22:09:15"
permalink: "/tutorial-creare-una-mappa-online-con-fotografie-in-umap-aggiornabile-con-ethercalc/"
original_url: "https://de.straba.us/tutorial-creare-una-mappa-online-con-fotografie-in-umap-aggiornabile-con-ethercalc/"
render_with_liquid: false
categories:
  - "maps"
  - "openstreetmap"
tags:
  - "ethercalc"
  - "osm"
  - "tutorial"
  - "umap"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2015/05/mappa_foto2.png" alt="TUTORIAL: creare una mappa online con fotografie in uMap aggiornabile con EtherCalc" /></figure>

<h1>Cosa è uMap</h1>
<a href="http://de.straba.us/wp-content/uploads/2015/05/umap.png"><img class=" size-medium wp-image-99840 alignright" src="http://de.straba.us/wp-content/uploads/2015/05/umap-300x253.png" alt="umap" width="300" height="253" /></a>
<a href="http://umap.openstreetmap.fr/it/">uMap</a> è un software potentissimo per la creazione di mappe online, da inserire nel proprio sito, che fanno uso di <a href="http://osm.org">OpenStreetMap</a> come sfondo.
Il software è creato dall'italo-francese <a href="http://yohanboniface.me/">Yohan Boniface</a>, <a href="https://github.com/yohanboniface/uMap">rilasciato in open source</a> con la licenza "<a href="https://github.com/yohanboniface/uMap/blob/master/LICENSE">do what the fuck you want to public license</a>", scritto in <a href="https://www.djangoproject.com/">django</a> e <a href="http://leafletjs.com/">leaflet</a>, e reso disponibile sugli spazi di <a href="http://www.openstreetmap.fr">OpenStreetMap France</a> - <a href="http://umap.openstreetmap.fr">http://umap.openstreetmap.fr</a>.
L'interfaccia per creare mappe è molto intuitiva e, i risultati che si ottengono danno subito soddisfazione.
Appena premuto il tasto "<a href="http://umap.openstreetmap.fr/it/map/new">Crea una mappa</a>" diventa semplicissimo cominciare ad inserire punti, linee o poligoni sulla mappa, definirne gli stili, le modalità con cui aprire una finestra informativa al clic o crearne uno slideshow automatico.
La mappa di sfondo predefinita è quella di OpenStreetMap in francese, ma il software offre diverse alternative <img class="wp-image-99841 size-full" src="http://de.straba.us/wp-content/uploads/2015/05/cambialayers.png" alt="cambialayers" /> oltre che la possibilità di caricare <img class="alignnone size-full wp-image-99842" src="http://de.straba.us/wp-content/uploads/2015/05/upload.png" alt="upload" width="24" height="24" /> file con coordinate geografiche in latitudine e longitudine (WGS84) che si presentano nei formati: <a href="https://it.wikipedia.org/wiki/GeoJSON">geojson</a>, <a href="https://it.wikipedia.org/wiki/GPS_eXchange_Format">gpx</a>, <a href="https://it.wikipedia.org/wiki/Keyhole_Markup_Language">kml</a>, <a href="https://it.wikipedia.org/wiki/GeoRSS">georss</a>, <a href="http://wiki.openstreetmap.org/wiki/IT:OSM_XML">osm</a> e <a href="https://it.wikipedia.org/wiki/Comma-separated_values">csv</a>.
Tutte le proprietà contenute contenute file caricato diventano automaticamente dati che uMap è in grado di gestire, eccezion fatta per il formato CSV.
In questo caso uMap ha bisogno di avere un minimo di regole: il file può usare come separatore la virgola o il tabulatore o il punto e virgola, può contenere solo entità geografiche fatte da punti, e queste devono essere definite all'interno delle colonne "lat" e "lon" (rispettivamente latitudine e longitudine). A quel punto uMap è in grado di rappresentare i punti e utilizzerà tutte le altre colonne come attributi dei dati da visualizzare.
Inoltre, in uMap, la registrazione utente è opzionale (le mappe create ottengono un indirizzo univoco da memorizzare con la possibilità di averne anche uno dedicato alla configurazione), e i dati generati possono essere scaricati e redistribuiti.
<h1>uMap e Overpass-turbo</h1>
<figure class="wp-caption"><a href="http://overpass-turbo.eu/s/9x5"><img class="wp-image-99843" src="http://de.straba.us/wp-content/uploads/2015/05/fontanelle_acqua-300x225.png" alt="fontanelle_acqua" width="220" height="165" /></a> le fontanelle dell'acqua del Trentino prese da OpenStreetMap grazie a overpass-turbo.eu</figure>

<figure class="wp-caption"><a href="http://overpass-api.de/api/interpreter?data=%0A%5Bout%3Axml%5D%5Btimeout%3A25%5D%3B%0Aarea%283600045756%29-%3E.searchArea%3B%0A%28%20node%5B%22amenity%22%3D%22drinking_water%22%5D%28area.searchArea%29%3B%0A%29%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"><img class="wp-image-99844" src="http://de.straba.us/wp-content/uploads/2015/05/esporta_overpassapi-212x300.png" alt="esporta_overpassapi" width="156" height="221" /></a> funzione di esportazione di overpass-turbo.eu</figure>

Il supporto al formato .osm è stato pensato per poter ottenere, direttamente da uMap di rappresentare al volo un insieme di dati che vengono inseriti in OpenStreetMap da una query a <a href="http://overpass-api.de">overpass-api</a> (prodotto <a href="https://github.com/drolbr/Overpass-API">open source</a> che offre delle API avanzate di interrogazione dei dati osm).
Il risultato è che, ogni volta che un dato viene inserito in OpenStreetMap, può essere visualizzato anche dalla mappa uMap creata.
Prendiamo come esempio le fontanelle dell'acqua presenti in Trentino.
La query a overpass per fare questa operazione è facilmente realizzabile tramite il front-end <a href="https://github.com/tyrasd/overpass-turbo">open source</a> <a href="http://overpass-turbo.eu">overpass-turbo</a> specificando l'output in xml (per semplicità si rimanda a qui <a href="http://overpass-turbo.eu/s/9x3">http://overpass-turbo.eu/s/9x3</a>).
<img class=" wp-image-99849 size-medium alignleft" src="http://de.straba.us/wp-content/uploads/2015/05/carica_remoto-300x225.png" alt="carica_remoto" width="300" height="225" />La query creata a sua volta può essere esportata anche per essere usata in uMap.
<ul>
	<li>creare una nuova mappa da umap</li>
	<li>andare sul box di sinistra di gestione dei layer (<img class="alignnone wp-image-99845 size-full" src="http://de.straba.us/wp-content/uploads/2015/05/icona_layers.png" alt="icona_layers" width="25" height="22" />)</li>
	<li>modificare le proprietà del layer</li>
	<li>e nelle impostazioni selezionare "Dati remoti" aggiungendo come URL quella alla chiamata alle overpass-api generata da overpass-turbo.eu</li>
</ul>
&nbsp;

&nbsp;
<h1>Il caricamento di dati dinamici con overpass-api</h1>
A questo punto uMap caricherà i dati la cui rappresentazione potrà essere cambiata sia nella vista classica ad icone

<img class=" size-medium wp-image-99846 aligncenter" src="http://de.straba.us/wp-content/uploads/2015/05/scegli-300x272.png" alt="scegli" width="300" height="272" />
o quella raggruppata
<img class=" wp-image-99848 size-medium aligncenter" src="http://de.straba.us/wp-content/uploads/2015/05/raggruppa-300x272.png" alt="raggruppa" width="300" height="272" />
o quella a densità
<img class=" size-medium wp-image-99847 aligncenter" src="http://de.straba.us/wp-content/uploads/2015/05/densita-300x272.png" alt="densita" width="300" height="272" />

Grazie al fatto che i dati sono caricati in remoto, il risultato è che, ogni volta che un dato di tipo "<em>amenity=drinking_water</em>" inserito dell'area geografica del Trentino, verrà presentato anche nella mappa quando ricaricata.
<h1>Caricamento dinamico dei dati in uMap usando Ethercalc</h1>
<img class="alignleft size-medium wp-image-99850" src="http://de.straba.us/wp-content/uploads/2015/05/ethercal-300x143.png" alt="ethercal" width="300" height="143" />Il caricamento dinamico dei dati in uMap in realtà richiede che una sorgente dati si occupi di tenere aggiornato un file nei vari formati supportati per poi caricarlo ogni volta che si accede alla propria mappa.
Pertanto un georss (un feed xml di notizie georiferite) può apparire benissimo su uMap, così come un geojson che viene aggiornato periodicamente su un webserver.
Una semplice soluzione può essere quella di creare una tabella online (un foglio di calcolo) da tenere aggiornata in maniera collaborativa.
Tutto sommato si tratta di seguire le regole base di come un file .csv deve essere dato in pasto a uMap (pertanto le due colonne "<em>lat</em>" e "<em>lon</em>").
Ethercalc è un prodotto <a href="https://github.com/audreyt/ethercalc">open source</a> collaborativo utilizzabile dal sito <a href="http://ethercalc.org">http://ethercalc.org</a> senza alcuna necessità di registrazione.
Ogni foglio di calcolo generato può essere esportato nel formato .csv aggiungendo, semplicemente, la stringa .csv all'indirizzo.
Es. se l'url generata da ethercal è <a href="https://ethercalc.org/ridy7cf5er">https://ethercalc.org/ridy7cf5er</a>, con <a href="https://ethercalc.org/ridy7cf5er.csv">https://ethercalc.org/ridy7cf5er.csv</a> si otterrà il file .csv della tabella descritta.
<h1>preparazione di una tabella in ethercalc</h1>
Supponiamo lo scenario di voler far inserire, in maniera collaborativa, le fotografie di una città con relative descrizioni.
Il primo lavoro da fare è definire i campi. Ad esempio: <em>name</em> per il nome, <em>desc</em> per descrizione, <em>url</em> per l'indirizzo web dell'immagine, <em>lat</em> per la latitudine e <em>lon</em> per la longitudine.
Fatta questa operazione si comincia a riempire le righe successive.
Le fotografie possono essere caricate su siti come flickr o commons o archive o postimg (che non richiede registrazione) rispettando però i copyright.
Le coordinate possono essere recuperati in diversi modi: <a href="http://regex.info/exif.cgi">estrando le informazioni dai metadati delle foto</a> (se presenti), rilevandole sul posto con un gps, o ricavandole da un servizio online.
In quest'ultimo caso, si può usare il sito web che ospita la mappa OpenStreetMap creando un marcatore sullo schermo, usando la funzione di condivisione presente sulla bottoniera a sinistra (<img class=" size-full wp-image-99853 alignnone" src="http://de.straba.us/wp-content/uploads/2015/05/osm_share.png" alt="osm_share" width="18" height="15" />) e riportando le coordinate che vengono visualizzate nella barra di navigazione.
Per comodità viene riportato un esempio basato sulle informazioni recuperate dalla pagina <a href="https://it.wikipedia.org/wiki/Trento">Trento</a> presente in Wikipedia.
<a href="https://ethercalc.org/ridy7cf5er"><img class="aligncenter wp-image-99854" src="http://de.straba.us/wp-content/uploads/2015/05/ethercalc_table.png" alt="ethercalc_table" width="470" height="221" /></a>
<a href="http://de.straba.us/wp-content/uploads/2015/05/setup.png"><img class="alignright size-medium wp-image-99856" src="http://de.straba.us/wp-content/uploads/2015/05/setup-143x300.png" alt="setup" width="143" height="300" /></a>Da qui si ripetono i passaggi visti sopra per collegare in maniera dinamica uMap ad una query overpass-api semplicemente inserendo l'url di ethercalc seguita da .csv facendo attenzione a selezionare il formato "<em>csv</em>" e abilitare le variabili "<em>Dinamico</em>" e "<em>Richiesta proxy</em>".
Sulla mappa appariranno subito i dati inseriti nella tabella, che essendo però collegata dinamicamente, ogni volta che sarà aggiunta una riga, si aggiornerà.

Ora si può passare alla personalizzazione della mappa.
Cominciamo con l'inserire un nuovo fornitore di mappe di sfondo, come, ad esempio, uno di quelli offerti da Mapbox.
Entrando nelle impostazioni <img class="alignnone size-full wp-image-99857" src="http://de.straba.us/wp-content/uploads/2015/05/setting.png" alt="setting" width="24" height="24" /> di uMap, seguendo la voce "<em>Sfondo personalizzato</em>" è sufficiente assegnare un nome e aggiungere una url secondo lo schema supportato (es. <em>http://{s}.tiles.mapbox.com/v3/tmcw.map-7s15q36b/{z}/{x}/{y}.png</em>).
Le icone possono essere cambiate in maniera globale alla voce "<em>Proprietà preimpostate</em>".
Per far apparire invece una pagina informativa al clic, occorre andare ad operare alla voce "<em>Default popup options</em>".
Se non viene definito nulla, uMap, va ad utilizzare il campo "name".
Nel nostro caso vogliamo avere un popup che mostri: il nome del luogo, con il link alla descrizione ed una immagine.
Per fare questo occorre usare la sintassi richiesta da uMap che segue questa formattazione

<code>
<span style="font: small;">
*asterisco per l'italico*
**due asterischi per il testo marcato**
# un cancelleto per l'intestazione principale
## due cancelletti per le intestazioni di secondo livello
### tre cancelletti per intestazione di terzo livello
Link semplice: [[http://example.com]]
Link con testo: [[http://example.com|testo del link]]
Immagini: {{http://image.url.com}}
Immagine con larghezza personalizza (in px): {{http://immagine.url.it|larghezza}}
Iframe: {{{http://iframe.url.com}}}
Iframe with custom height (in px): {{{http://iframe.url.com|height}}}
--- per una linea orizzontale</span></code>

Nel caso presentato questo si traduce nel seguente modo

<code>[[{desc}|{name}]]
{{{url}}}
</code>

Salvata la mappa si può subito farne un test e vederne il risultato.

<a href="http://umap.openstreetmap.fr/it/map/mappa-senza-titolo_40807#16/46.0701/11.1233"><img class="aligncenter wp-image-99860" src="http://de.straba.us/wp-content/uploads/2015/05/mappa_foto1.png" alt="mappa_foto" width="500" height="363" /></a>

A questo punto l'indirizzo per le modifiche può essere protetto (<img class="alignnone size-full wp-image-99862" src="http://de.straba.us/wp-content/uploads/2015/05/private.png" alt="private" width="26" height="12" />) e con la funzione di condivisione <img class="alignnone size-full wp-image-99863" src="http://de.straba.us/wp-content/uploads/2015/05/share.png" alt="share" width="24" height="24" />) è possibile ottenere: il codice iframe per incorporare la mappa in un sito, l'url semplificata e il download del dataset.