---
layout: post
title: "i benefici ambientali degli alberi di Trento in euro"
date: "2022-07-22 17:47:13"
permalink: "/i-benefici-ambientali-degli-alberi-di-trento-in-euro/"
original_url: "https://de.straba.us/i-benefici-ambientali-degli-alberi-di-trento-in-euro/"
render_with_liquid: false
categories:
  - "civic hacking"
  - "data science"
  - "dataviz"
  - "gis"
tags:
  - "alberi"
  - "co2"
  - "ecobenefit"
  - "itreetools"
  - "mappe"
  - "trento"
  - "verde"
---

<!-- wp:heading {"level":3} -->
<h3>Introduzione</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>In questi giorni di gran caldo chiunque è alla ricerca di uno spazio al fresco e, gli alberi sono fra i primi luoghi di riparto che si cercano all'aperto</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il messaggio che gli alberi sono importanti per il benessere di chiunque e che dobbiamo attivarci per piantarne sempre di più nelle città, è fra quelli che spesso si sentono ripetere ed in cui è molto difficile non credere.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Chiunque di noi apprezza tutti i benefici che gli alberi portano, non solo sul fronte dell'ambiente (abbattimento delle temperatura, riduzione delle PM 2.5, riduzione dei rumori, drenaggio) ma anche su quello ornamentale come l'effetto di tappeti dorati che lasciano le foglie del <a href="https://www.mangiaviviviaggia.com/ginkgo-biloa-tempio-buddhista-cina/">ginkgo biloba</a> in autunno.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108683,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2022/07/1400-old-ginkgo-tree-yellow-leaves-buddhist-temple-china-1-768x552-1.jpg" alt="" class="wp-image-108683"/><figcaption>il millenario ginkgo biloba che ogni anno crea un tappeto dorato in un tempio buddista cinese ai piedi del monte Zhongnan</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Sappiamo anche che esiste il rovescio della medaglia quello dove i rami (o gli alberi interi) cadono, le radici rompono i marciapiedi, le foglie in autunno fanno inciampare le persone o i ricci degli ippocastani, che oltre a cadere in testa a chi passeggia sulla via alberata, contribuiscono anche a bucare le ruote delle biciclette ...</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questioni che devono aiutarci anche a riflettere sul fatto che gli alberi non si curano da soli e che le cure ed monitoraggi sono costi necessari ed importanti.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Gli alberi sono quindi una importante infrastruttura (consigliatissimi gli articoli "Trees as infrastructure: <a rel="noreferrer noopener" href="https://www.climate-kic.org/opinion/trees-as-infrastructure-pt-1/" target="_blank">part one</a> e part two" di <a rel="noreferrer noopener" href="https://darkmatterlabs.org/" target="_blank">Dark Matters Lab </a>e i progetto <a rel="noreferrer noopener" href="https://treesasinfrastructure.com/#/" target="_blank">TreesAI</a>) e quindi una domanda legittima da farsi è </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>Il calcolo dell'eco benefit</h3>
<!-- /wp:heading -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>"ma quanto dovremmo pagarli per il lavoro che fanno? Quale è il valore di questo eco benefit?"</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108685,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2022/07/1_gEpd55UAV-i1GUi3rFTr7g-scaled-1-1024x582.jpeg" alt="" class="wp-image-108685"/><figcaption>i servizi che gli alberi riescono a dare ad una città - Dark Matters Lab</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La domanda, nel tempo, se la sono posta molte persone e, pertanto, esistono già strumenti come l'<a rel="noreferrer noopener" href="https://github.com/OpenTreeMap/otm-ecoservice" target="_blank">ecoservice</a> di <a rel="noreferrer noopener" href="https://opentreemap.github.io/" target="_blank">OpenTreetMap</a> o <a rel="noreferrer noopener" href="https://www.itreetools.org/tools/i-tree-eco" target="_blank">i-Tree-Eco</a> di <a rel="noreferrer noopener" href="https://www.itreetools.org/" target="_blank">I-Tree-Tools</a> che sulla base della letteratura scientifica, a partire da alcuni dati importanti degli alberi come specie, altezza, circonferenza, larghezza della chioma, coordinate geografiche ... effettuano il calcolo di questo lavoro e, da qui, associano il "prezzo" ad una serie di (eco) benefici che gli alberi producono.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>La nostra rappresentazione</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Ho così deciso di ragionare sul modo di rappresentare questo eco- benefit.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In questo ho invitato Giacomo Cattelan - studente dell'università di Trento a svolgere uno stage presso FBK  su questo tema.<br>Nella primavera del 2020 avevo raccolto dei dati dai<a rel="noreferrer noopener" href="https://gis.comune.trento.it/it/map/cartografia-generale/qdjango/22/" target="_blank"> servizi webgis del Comune di Trento</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dati incompleti ma comunque utili allo scopo e sui cui, con Giacomo, abbiamo lavorato per ripulirli, armonizzarli e riempire, dove possibile, informazioni verosimili sulla base degli attributi presenti (es. abbiamo stimato la larghezza della chioma a partire dalla specie dell'albero, la sua altezza e il diametro del tronco. Dove questo non era possibile abbiamo scelto di non considerare i record.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La nostra tabella si è così ridotta a 12.511 punti: un numero ragionevole e significativo per sviluppare il nostro progetto.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per il calcolo dell'eco benefit siamo andati nella direzione di i-Tree-Eco, mentre, per la visualizzazione ci siamo documentati su diverse soluzioni esistenti e, quella che ci è sembrata più interessante è quella adottata dalla città di <a rel="noreferrer noopener" href="https://tree-map.nycgovparks.org/" target="_blank">New York</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108686,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2022/07/image-1024x672.png" alt="" class="wp-image-108686"/><figcaption>la piattaforma che mostra il valore degli alberi della città di New York</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Il risultato del lavoro di Giacomo è pertanto una mappa raggiungibile all'indirizzo <a rel="noreferrer noopener" href="http://dcl.fbk.eu/trentotreesecobenefit/" target="_blank">http://dcl.fbk.eu/trentotreesecobenefit/</a> che evidenzia il valore di parte degli alberi in gestione dal Comune di Trento nel 2020 (con i pro e i contro sopra descritti) a partire dalla sua suddivisione amministrativa, fino a scendere a livello dei poli sociali e di un singolo albero o di selezionare un'area a proprio piacimento.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108689,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2022/07/image-2-1024x779.png" alt="" class="wp-image-108689"/><figcaption>come si presenta l'applicazione</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>si scopre così che i 12.511 alberi censiti, appartenenti a 224 specie (di cui il Celtis Australis - detto anche Bagolaro - il più presente con 1028 unità),  rimuovono 1,801 kg di inquinamento, assorbono 71,714 kg di CO2 e trattengono 2,270 kg d'acqua.<br>Dando un costo a ciascuna di questa si attività si arriva a € 25.099.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Sicuramente con dati più precisi e completi - quantomeno per numero di unità - si arriva a valori molto più grandi.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La mappa evidenzia da subito che la circoscrizione "Centro Storico Piedicastello" è quella con più alberi censiti (e d'altronde anche la zona più urbana e dove si ha anche la necessità di avere più verde in gestione).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Con l'aumentare dello zoom aumenta anche la suddivisione mostrando i "sobborghi / poli sociali" di Trento, come Cristo Re, Piedicastello, San Giuseppe, Santissimo, Bolghera ....</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108692,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2022/07/image-5-1024x883.png" alt="" class="wp-image-108692"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>al clic su ciascuno di questi si ripetono i calcoli dell'eco benefit degli alberi censiti presenti in zona, fino a vedere sparire questi "confini" ed arrivare ai singoli alberi</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108693,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2022/07/image-6-1024x841.png" alt="" class="wp-image-108693"/><figcaption>il valore di un singolo albero</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Qui inoltre, chi visita il sito, attraverso la funzione della creazione di un poligono, può ottenere anche il calcolo di una singola zona</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108694,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2022/07/image-7-1024x709.png" alt="" class="wp-image-108694"/><figcaption>il calcolo dell'eco benefit degli alberi nella zona del parco di Maso Ginocchio - in alto a destra, in giallo, gli strumenti per la creazione del poligono</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Applicazione è un prototipo e sicuramente c'è molto da fare per migliorarla, renderla più fruibile, fare passare i messaggi in maniera più incisiva nel comunicare e per ... avere dati più aggiornati.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questo è un inizio e quello che speriamo e di contribuire a dialogare sul tema.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>Ulteriori spunti</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Alcune riflessioni casuali in coda:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>il calcolo non è difficile è però onerosa la gestione dei dati che descrivono gli alberi e serve investire anche in persone che si occupa della gestione. Le soluzioni software sono diverse come il già citato OpenTreeMap o <a rel="noreferrer noopener" href="https://www.r3gis.com/it/greenspaces" target="_blank">GreenSpaces</a> (prodotto proprietario di  <a rel="noreferrer noopener" href="https://www.r3gis.com/" target="_blank">R3GIS</a>  fra i più diffusi in Italia)</li><li>sarebbe bello sottrarre da questi calcoli i costi che la pubblica amministrazione ha nel verde pubblico (voce di cui tutti ne capiscono il valore ma spesso una delle prime a subire tagli)</li><li>ulteriori esempi per restituire il valore degli alberi di una città vengono dai progetti <a rel="noreferrer noopener" href="https://verdevale.eu/" target="_blank">Verde Vale</a> e  <a rel="noreferrer noopener" href="https://www.mantovacittaverde.it/" target="_blank">Mantova Città Verde</a></li><li>piantare un albero non basta, serve curarlo, attendere il momento che cominci a "rendere" e sapere anche dove piantarlo - su questo ultimo si veda il lavoro di Iacopo Testi - <a rel="noreferrer noopener" href="https://storymaps.arcgis.com/stories/708e395ca43a4da491afaf5fa1462d30" target="_blank">Urban Forestry Science</a> che, a partire dal calcolo di indice di "disagio" calcolato da temperature alte, monossido di carbonio, inquinamento acustico, ecc... individua le aree migliori dove piantare alberi e quindi abbassare questo disagio.</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/0bcd074e45178456.jpg" alt="i benefici ambientali degli alberi di Trento in euro" /></figure>
<figure><img src="/assets/images/medium/993b1abc13705c87.jpg" alt="i benefici ambientali degli alberi di Trento in euro" /></figure>
<figure><img src="/assets/images/medium/7a633ce267454b73.png" alt="i benefici ambientali degli alberi di Trento in euro" /></figure>
<figure><img src="/assets/images/medium/0e7b3b266a229313.png" alt="i benefici ambientali degli alberi di Trento in euro" /></figure>
<figure><img src="/assets/images/medium/2776a8c15f8464a9.png" alt="i benefici ambientali degli alberi di Trento in euro" /></figure>
<figure><img src="/assets/images/medium/5c4281a695ee3c4f.png" alt="i benefici ambientali degli alberi di Trento in euro" /></figure>
<figure><img src="/assets/images/medium/9a39e077a84892e2.png" alt="i benefici ambientali degli alberi di Trento in euro" /></figure>
<p><a href="https://medium.com/p/ffd94d6b495e">Versione originale su Medium</a></p>
