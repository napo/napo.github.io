---
layout: post
title: "un tutorial a Vroom estraendo dati da OpenStreetMap"
date: "2019-05-02 16:35:44"
permalink: "/un-tutorial-a-vroom-estrando-dati-da-openstreetmap/"
original_url: "https://de.straba.us/un-tutorial-a-vroom-estrando-dati-da-openstreetmap/"
render_with_liquid: false
categories:
  - "maps"
  - "me"
  - "opendata"
  - "openstreetmap"
tags:
  - "openstreetmap"
  - "routing"
  - "travellingsalesmanproblem"
  - "vroom"
---

<!-- wp:heading -->
<h2>Quando Andrea mi ha chiesto il percorso migliore per visitare le pasticcerie di Trento</h2>
<!-- /wp:heading -->

<!-- wp:heading {"level":3} -->
<h3>Il problema del commesso viaggiatore<br></h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Andrea è un amico che, ogni volta che viene a trovarmi a Trento è appassionato di prodotti gastronomici. La sua curiosità non è solo nel prodotto in sé, ma, più in generale, in tutta la cura dei negozi al dettagli: quali sono i prodotti esposti, come sono prodotti, dove si trovano i locali, come si presentano, quali colori trova, profumi ed altro ancora.<br><br>Questa volta Andrea ha deciso che vuole visitare tutte le pasticcerie della città facendo un giro in auto.<br>La sua esigenza pertanto è quella di avere l'elenco di tutte le singole pasticcerie di Trento e di trovare poi il percorso ottimale per visitarle  tutte.<br>Una esigenza classica di chi si occupa di logistica che viene categorizzata con il problema del commesso viaggiatore.<br><br>Gli ingredienti per risolvere questo problema sono:<br>- l'elenco dei punti da visitare<br>- un grafo stradale su cui muoversi<br>- l'algoritmo che lo risolve<br>- una mappa che mostra il percorso da fare<br><br>Nel mondo del software libero e degli open data questo si risolve utilizzando i dati di OpenStreetMap analizzati con <a href="http://vroom-project.org/">VROOM - Vehicle Routing Open-source Optimization Machine.</a><br></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108131,"align":"right"} -->
<div class="wp-block-image"><figure class="alignright"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999351.png" alt="" class="wp-image-108131"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>VROOM è software molto potente e veloce la cui demo può essere provata al sito <a href="http://map.vroom-project.org">http://map.vroom-project.org </a><br>La demo offre già tutto il necessario per risolvere il problema di Andrea.<br>Tutto il software i dati del grafo stradale di OpenStreetMap più il reverse geocoding sono già caricati.<br>L'utente  può decidere di inserire i dati che Vroom dovrà calcolare o con una  serie di clic sulla mappa, oppure caricando un file .json secondo le <a href="https://github.com/VROOM-Project/vroom/blob/master/docs/API.md">specifiche proposte</a>, o, ancora più semplicemente, caricando un file .csv dove ogni riga contiene latitudine e longitudine divisi da una virgola</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<h3>Come trovare le coordinate delle pasticcerie a Trento</h3>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>In OpenStreetMap le pasticcerie vengono categorizzate il tag <a href="https://wiki.openstreetmap.org/wiki/Tag:shop%3Dpastry">shop=pastry</a>.<br>Con <a href="http://overpass-turbo.eu">Overpass Turbo</a> pertanto diventa molto facile, utilizzando il wizard, ottenere il codice necessario ad interrogare le API di OpenStreetMap per scaricare questo elenco.<br><br>Al clic su "Wizard" basterà scrivere "<a href="https://wiki.openstreetmap.org/wiki/Tag:shop%3Dpastry">shop=pastry in Trento</a>"</p>
<!-- /wp:paragraph -->

<!-- wp:gallery {"ids":[108126]} -->
<ul class="wp-block-gallery columns-1 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999346-1024x690.png" alt="" data-id="108126" data-link="http://de.straba.us/?attachment_id=108126" class="wp-image-108126"/></figure></li></ul>
<!-- /wp:gallery -->

<!-- wp:paragraph -->
<p>ed ottenere così la mappa con tutte le pasticcerie della città </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108127} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999347-1024x686.png" alt="" class="wp-image-108127"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>utilizzando il bottone Esporta è possibile esportare i dati in vari formati.<br>Solo che, fra questi, non c'è il formato CSV richiesto da Vroom.<br>Serve pertanto rivedere la query che genera overpass-turbo in modo che l'output sia un file csv.<br>La sintassi è ben descritta in questa pagina -<a href="https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_QL#CSV_output_mode"> https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_QL#CSV_output_mode</a> <br>Nei fatti si tratta di sostituire la riga di output (la numero 6) nel seguente modo:</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"md"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="md" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">[out:csv(::lat,::lon;false; ",")][timeout:25];</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:paragraph -->
<p>dove <br><em>::lat</em> =&gt; estrae l'informazione sulla latitudine<br><em>::lon </em>=&gt; estrae l'informazione sulla longitudine<br><em>false</em> =&gt; dichiara che non deve essere stampata la riga di intestazione<br><em>","</em> =&gt; dichiara quale è il carattere di separatore</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>va comunque fatta una ulteriore considerazione:<br>in OpenStreetMap i dati non sempre sono rappresentati con dei punti, anzi, molto spesso oggetti come attività commerciali, possono essere rappresentati come poligoni (usati per descrivere l'edificio).<br>In questo caso si pone il problema di avere un solo punto di riferimento.<br>La soluzione tampone (anche se non del tutto congeniale) è quella di chiedere alle overpass-api di restituire il centroide del poligoni (qualora ci sia).<br>Questo viene fatto cambiando il valore di <em>out</em> da <em>body</em> a <em>center</em> (riga 17)</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock -->
<pre class="EnlighterJSRAW" data-enlighter-language="generic" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">out center;</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:image {"id":108147} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999348-1.png" alt="" class="wp-image-108147"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>ed eliminando l'ultima istruzione (<em>out skel qt;</em>) altrimenti comparirebbero sia i punti dei centroidi che i poligoni) <br><br>Una volta eseguito il codice overpass-turbo non mostrerà più la mappa ma l'<a href="http://overpass-turbo.eu/s/IDd">elenco delle coordinate strutturate in formato csv</a>.<br></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108129} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999349.png" alt="" class="wp-image-108129"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>per ottenere il file basta sceglere il bottone "<strong>Esporta</strong>" e la voce del menu "<em>dati grezzi direttamente da <strong>Overpass API</strong></em>"<br></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108130} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999350.png" alt="" class="wp-image-108130"/></figure>
<!-- /wp:image -->

<!-- wp:heading {"level":3} -->
<h3>Il calcolo del percorso</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Il calcolo del percorso diventa così una cosa semplicissima<br>Dal <a href="http://map.vroom-project.org/">sito demo di Vroom</a> si carica il file e subito sulla mappa appariranno i dati arricchiti anche con le informazioni del più vicino numero civico presente. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108132} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999352-1024x754.png" alt="" class="wp-image-108132"/></figure>
<!-- /wp:image -->

<!-- wp:image {"id":108135,"align":"right"} -->
<div class="wp-block-image"><figure class="alignright"><img src="http://de.straba.us/wp-content/uploads/2019/05/gears.png" alt="" class="wp-image-108135"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>premendo poi il bottone per effettuare il calcolo si ottiene il percorso ottimale</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108133} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999353-1024x758.png" alt="" class="wp-image-108133"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>I punti presenti sulla mappa possono anche essere aggiunti manualmente o modificati o cancellati o scelti come punto di partenza o di arrivo</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108136} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999354.png" alt="" class="wp-image-108136"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>in modo poi da poter creare nuovamente il percorso</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108137} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/05/Selection_999356-1024x757.png" alt="" class="wp-image-108137"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Nel caso di Andrea, lui ha deciso di eliminare quelle del centro storico perché le aveva già visitate a piedi.<br><br>Poi però mi ha chiesto di scrivere questo tutorial perchè vuole rifare la stessa esperienza in altre città :)<br><br>Di mio ho anche fatto presente che deve anche ringraziare la comunità di OpenStreetMap per tenere aggiornati i dati delle pasticcerie e che, nel suo viaggiare, può sempre continuare a contribuire al progetto :)<br></p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/000972b58635a4c6.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/effca25d4f2aeb18.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/841363ef65f84430.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/1be81e641fff1eda.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/f687397c0f96966b.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/4b5c8295c7ba8509.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/7a094c9052b8041b.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/69cf4b10c6dfde70.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<figure><img src="/assets/images/medium/4671848b3fbb29c9.png" alt="un tutorial a Vroom estraendo dati da OpenStreetMap" /></figure>
<p><a href="https://medium.com/p/d26db202d551">Versione originale su Medium</a></p>
