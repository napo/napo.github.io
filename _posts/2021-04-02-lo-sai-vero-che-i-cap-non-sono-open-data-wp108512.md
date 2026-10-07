---
layout: post
title: "Lo sai vero che i CAP non sono open data?"
date: "2021-04-02 22:31:00"
permalink: "/lo-sai-vero-che-i-cap-non-sono-open-data/"
original_url: "https://de.straba.us/lo-sai-vero-che-i-cap-non-sono-open-data/"
render_with_liquid: false
categories:
  - "opendata"
tags:
  - "cap"
  - "dati aperti"
  - "opendata"
  - "poste itaiane"
---

<!-- wp:paragraph -->
<p>CAP -  Codice di Avviamento Postale uno degli acronimi fra i più noti in assoluti visto che è una di quelle risposte che si deve dare nella maggior parte dei moduli che riempiamo quando ci interfacciamo con la pubblica amministrazione (e non solo). Una informazione che ci viene chiesta talmente tante volte e di cui - se non abbiamo la risposta - troviamo sempre qualcuno in grado di darcela (o alla peggio andiamo sito di <a href="https://www.poste.it/cerca/index.html#/risultati-cerca-cap/">Poste Italiane</a>) che è normale ritenerla di pubblico dominio. Pertanto risulta abbastanza naturale pensare che se, se si ha bisogno dei dati dei CAP (in download) questi siano open data.<br>La triste verità però è che, questa percezione, è completamente sbagliata: i dati del CAP non sono dati aperti (secondo la definizione del <a href="https://docs.italia.it/italia/piano-triennale-ict/codice-amministrazione-digitale-docs/it/v2018-09-28/_rst/capo5_sezione1_art52.html">CAD</a>). Un primo indizio è il fatto che, alla pagina dedicata alla <a href="https://www.poste.it/cerca/index.html#/risultati-cerca-cap/">ricerca dei CAP</a> appare il reCAPTCHA <em>"Non sono un robot"</em>, come primo ostacolo a chi vuole fare lo scraping.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108515,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/04/immagine-1.png" alt="" class="wp-image-108515"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>affidandosi poi ad un motore di ricerca si arriva nella sezione <a href="https://business.poste.it/professionisti-imprese/prodotti/cap-zone-dati-integrabili-in-sistemi-geografici-gis.html?wt.ac=1473808657679">Business di Poste Italiane</a> per trovare delle risorse meravigliose sui CAP gestite da Poste Italiane prive di download e chiaramente a pagamento (i cui costi e modalità di acquisto sono delegati ad un "contattaci")</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":108516,"sizeSlug":"large","linkDestination":"none"} -->
<div class="wp-block-image"><figure class="aligncenter size-large"><img src="https://de.straba.us/wp-content/uploads/2021/04/immagine-2.png" alt="" class="wp-image-108516"/><figcaption>i prodotti basati sui CAP di Poste Italiane</figcaption></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Il prodotto '<a href="https://business.poste.it/professionisti-imprese/prodotti/cap-zone-dati-integrabili-in-sistemi-geografici-gis.html?wt.ac=1473808657679">CAP Zone</a>" è sicuramente quello che si aspettano tutte le persone che fanno la domanda "<em>Dove posso avere un file con le geometrie con le aree geografiche dei CAP d'Italia?</em>".<br>E l'aspettativa è quindi è quella di avere un file, in formato geografico (es. ESRI Shapefile) che contiene i poligoni delle oltre 4.600 aree CAP d'Italia. E questo prodotto risponde esattamente a quella domanda, e l'unico file disponibile pubblicamente (senza alcuna informazione sui termini di riuso) è quello con i <a href="https://business.poste.it/business/files/1476497631594/banchedati-cap-zone-demo-database.zip">CAP di Milano</a>.<br>La descrizione del dataset spiega, con poche parole chiave, la rilevanza degli scenari di riuso di cosa poter fare con questi dati</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>"La classificazione del territorio può essere utilizzata in contesti di logistica, marketing, vendite e gestione delle emergenze."</p><cite>Cap Zone - Poste Italiane</cite></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>Inoltre, la <a href="https://business.poste.it/business/files/1476497594035/banchedati-cap-zone-scheda-prodotto.pdf">documentazione tecnica</a>, mostra quale sia la quantità di dati che Poste Italiane dispone: su ciascuna area CAP sono disponibili informazioni come il numero di abitazioni, di negozi e uffici presenti con aggiornamento bimestrale.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ciascuno dei prodotti di Poste Italiane legati ai CAP fa rimanere ancora più sorpresi. In particolare il prodotto "<a href="https://business.poste.it/professionisti-imprese/prodotti/cap-delivery-points.html?wt.ac=1473808657679">Cap Delivery Points</a>"  che contiene<em> "l'elenco delle cassette delle lettere associate ai civici per ciascun comune"</em> d'Italia con "<em>oltre 15 milioni di punti civici, con latitudine e longitudine, e 1 milione di strade</em>" con due aggiornamenti all'anno.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I numeri civici!!!<br>Una delle banche dati più richieste in assoluto, che AgID e Team Digitale <a href="https://docs.italia.it/italia/daf/pianotri-schede-bdin/it/stabile/anncsu.html">individuano</a> in ANNCSU - Archivio Nazionale dei Numeri Civici delle Strade Urbane ritenendola giustamente di interesse nazionale ... e che ancora non abbiamo visto disponibile (nemmeno con uno screenshot).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora, sappiamo benissimo che Poste Italiane è una azienda privata, e quindi quei dataset possono essere considerati asset aziendali, però dobbiamo anche guardare quale è il ruolo di questa azienda, la sua storia, come è composta (si tratta di una partecipata in cui compaiono anche <a href="https://it.wikipedia.org/wiki/Cassa_depositi_e_prestiti">cassa depositi e prestiti</a> e <a href="https://it.wikipedia.org/wiki/Ministero_dell%27economia_e_delle_finanze">Ministero dell’economia e finanze</a>) ed altro ancora.<br>Caratteristiche che ne giustificano chiaramente il ruolo importante e la legittimazione sui codici di avviamento postale, ma che, allo stesso tempo, inquadrano questa azienda come una di quelle a cui la <a href="https://eur-lex.europa.eu/legal-content/IT/TXT/?uri=CELEX:32019L1024">direttiva europea PSI</a> (quella che vede l'apertura del patrimonio informativo pubblico) si rivolge nell'obbligo del rilascio dei dati.<br>Non può quindi essere che questo rimanga inosservato ancora lungo.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Probabilmente uno dei timore di chi può prendere la decisione di questa apertura è la perdita della sostenibilità che la vendita di questi dati riesce a dare a quel processo di mantenimento anche se mancano diverse variabili per farsi una idea concreta (molto banalmente quanto costano?). Quello che è certo è che Poste Italiane è comunque il fornitore dati e quindi può decidere il rilascio di quei dati giocando su variabili come frequenza di aggiornamento, quantità, attributi di dettaglio ed altro ancora con cui decidere cosa è aperto e cosa no.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Certo, si possono cercare tante motivazioni che provano a giustificare il motivo per cui questa risorsa non sia ancora stata rilasciata in open data, solo che<a href="https://web.archive.org/web/20071018194112/http://mail.fsfeurope.org/pipermail/press-release-it/2006q4/000137.html"> a 15 anni dalla prima azione di rilascio dei dati</a> fatta da  <a href="https://twitter.com/smaffulli">Stefano Maffull</a>i con  Free Software Foundation Europe e le richieste sempre più frequenti di  CAP su <a href="https://forum.italia.it/t/elenco-di-basi-di-dati-chiave-come-mai-non-ci-sono-piu-i-cap/1049">forum</a>, <a href="https://groups.google.com/g/spaghettiopendata/c/sCczOlYUONQ?pli=1">mailing-list </a>e <a href="https://www.facebook.com/groups/1417918208513933/search/?q=CAP">social network</a> fa pensare che ormai siano solo alibi.<br>Sconcerta poi scoprire che, nel lontano 2009, i dati dei <a href="https://de.straba.us/download/cap_istat_06042009_cc_by_nc.zip">CAP </a>venivano resi disponibili da ISTAT nel suo l<a href="https://blog.spaziogis.it/index.html_p=1173.html">'Atlante Amministrativo</a>,  (uno <a href="https://web.archive.org/web/20101113224228if_/http://www.istat.it/dati/catalogo/20090728_00/cartografia.zip">zip da 136mb</a> con confini amministrativi, cap, prefetture, porti ...)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non è quindi un caso che, come pesce d'aprile del 2021, sia apparsa una gif animata che mostra la presenza dei Codici di Avviamento Postale in open data su dati.gov.it </p>
<!-- /wp:paragraph -->

<!-- wp:image {"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="http://de.straba.us/download/datigovit_cap.gif" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Una immagine le cui <a href="https://twitter.com/napo/status/1377535523485532161">reazioni</a> sono state prime di gioia per poi diventare amare una volta capita l'ironia  </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108518,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/04/immagine-3.png" alt="" class="wp-image-108518"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Cosa dobbiamo fare affinché questo avvenga realmente?</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Alcune curiosità:<br>- i codici di avviamento postale italiani comprendono anche la suddivisione di Città del Vaticano e San Marino.<br>- Campione d'Italia ha un codice svizzero e Domodossola sia uno italiano che uno svizzero<br>- da wikidata/wikipedia è possibile estrarre i cap, ma privi di entità geografiche degli stradari<br>- in openstreetmap le geometrie dei cap non sono presenti, è possibile fare una ricostruzione con dei voronoi a partire dai punti dove sono associati ai numeri civici (solo che sono ancora pochi)<br>- <a href="https://github.com/matteocontrini">matteo contrini,</a> su GitHub<a href="https://github.com/matteocontrini/comuni-json">, tiene aggiornato un json con i cap</a> (sempre privi di coordinate geografiche)</p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/cd26a2217f5ff474.png" alt="Lo sai vero che i CAP non sono open data?" /></figure>
<figure><img src="/assets/images/medium/14b55c5b53e6b760.png" alt="Lo sai vero che i CAP non sono open data?" /></figure>
<figure><img src="/assets/images/medium/5973d8d89a65a5b5.gif" alt="Lo sai vero che i CAP non sono open data?" /></figure>
<figure><img src="/assets/images/medium/8bdb1f15ec7533c3.png" alt="Lo sai vero che i CAP non sono open data?" /></figure>
<p><a href="https://medium.com/p/f40402915a6">Versione originale su Medium</a></p>
