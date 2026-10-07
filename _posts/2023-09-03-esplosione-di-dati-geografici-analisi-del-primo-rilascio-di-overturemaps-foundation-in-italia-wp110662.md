---
layout: post
title: "Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia"
date: "2023-09-03 16:53:06"
permalink: "/esplosione-di-dati-geografici-analisi-del-primo-rilascio-di-overturemaps-foundation-in-italia/"
original_url: "https://de.straba.us/esplosione-di-dati-geografici-analisi-del-primo-rilascio-di-overturemaps-foundation-in-italia/"
render_with_liquid: false
categories:
  - "opendata"
  - "openstreetmap"
tags:
  - "duckdb"
  - "opendata"
  - "openstretmap"
  - "overturemaps"
---

<!-- wp:heading -->
<h2 class="wp-block-heading">Le origini e l'obiettivo di OvertureMaps Foundation e  primo importante rilascio </h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Nel panorama in continua evoluzione dell'informazione geografica, il mondo ha assistito a <a href="https://napo.medium.com/overturemaps-cos%C3%A8-e-come-si-inserisce-nell-ecosistema-di-openstreetmap-70ce7ea057b3" data-type="link" data-id="https://napo.medium.com/overturemaps-cos%C3%A8-e-come-si-inserisce-nell-ecosistema-di-openstreetmap-70ce7ea057b3">un evento di risonanza globale</a> a dicembre 2022 con la formazione dell'<a href="https://www.overturemaps.org">OvertureMaps Foundation</a>. Questa fondazione, che vanta il coinvolgimento di giganti dell'industria come Amazon, Meta, Microsoft e TomTom, insieme a nuovi partner di spicco come ESRI, ha abbracciato la missione ambiziosa di potenziare i prodotti cartografici attuali e futuri. Il loro obiettivo? Creare dati cartografici aperti, affidabili, facili da usare e interoperabili, proiettando un'ombra di incertezza su come tutto ciò si tradurrà in realtà.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora, a luglio 2023, è giunto il momento di gettare uno sguardo più approfondito su quello che rappresenta il <a href="https://overturemaps.org/download/" data-type="link" data-id="https://overturemaps.org/download/">primo rilascio di dati di questa iniziativa</a>. Conosciuto come <a href="https://github.com/OvertureMaps/data/#accessing-overture-maps-data" data-type="link" data-id="https://github.com/OvertureMaps/data/#accessing-overture-maps-data">Overture 2023-07-26-alpha.0,</a> questo rilascio offre un ricco tesoro di informazioni geografiche globali suddivise in categorie intriganti, tra cui confini amministrativi, luoghi di interesse, edifici e reti di trasporto. Ma come si confrontano questi dati con le aspettative e cosa offrono di nuovo al mondo dell'informazione geografica? Scopriamolo insieme mentre esploriamo i dettagli di questo affascinante rilascio.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110679,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/image-2.png" alt="" class="wp-image-110679"/></figure>
<!-- /wp:image -->

<!-- wp:heading -->
<h2 class="wp-block-heading"><strong>Dati Geografici di Overture: Le quattro categorie scelte</strong></h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Le categorie di dati scelte sono molto "sexy", fra quelle più richieste in assoluto, tant'è che sono entrate nella <a href="https://eur-lex.europa.eu/legal-content/IT/TXT/HTML/?uri=CELEX:32019L1024#d1e32-79-1">lista dei dataset ad alto valore</a> della <a href="https://eur-lex.europa.eu/legal-content/IT/TXT/HTML/?uri=CELEX:32019L1024#d1e39-56-1">direttiva europea sugli open data</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>D'altronde sono alla base delle necessità nella creazione dei prodotti e dei servizi per l'informazione geografica. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Se l'elencare le sole categorie già aumenta l'interesse, per capire al meglio i dati è necessario andare a guardarli per vedere quanto realmente siano sexy.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Un primo indizio viene dal comunicato di OMF  (OvertureMapsFoundation) che elenca queste caratteristiche:  i <strong>confini amministrativi</strong> sono a livello <strong>nazionale e regionale</strong> con i <strong>nomi tradotti in 40 lingue</strong>, i <strong>luoghi di interesse</strong> sono <strong>59 milioni</strong> di punti distribuiti su tutto il globo, gli <strong>edifici</strong> invece sono <strong>780 milioni</strong> rappresentati nel loro <strong>perimetro</strong> con informazioni sulle <strong>altezze</strong>, ed infine, i dati delle <strong>reti di trasporto</strong> si presentano elaborate ed uniformate per essere utilizzate al meglio dai software che si occupano del <strong>calcolo di percorsi</strong> potendo quindi integrare sui singoli segmenti informazioni di traffico in tempo reale o di limiti di velocità. <br>Inoltre spiega anche quali sono  le <strong>sorgenti principali</strong>: dati raccolti, creati e in possesso di Meta, Microsoft, ESRI, TomTom e tanto, tantissimo, da <strong>OpenStreetMap</strong>.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110681,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/image-4.png" alt="" class="wp-image-110681"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Ogni dataset è accompagnato da documentazione dettagliata, che include informazioni sulla geometria (espressa in latitudine e longitudine WGS84) di un oggetto e le relative proprietà. Queste proprietà sono organizzate in sottocategorie, consentendo un maggior dettaglio<br>Ad esempio:<br>un luogo è composto dalle sue coordinate (geometria) ed avere nelle sue proprietà l'attributo del nome che, a sua volta, può presentarsi in tre alternative: nome ufficiale, nome comune e nome alternativo, per poi avere per ciascuna il corrispettivo nome in diverse lingue.<br>Tutto questo naturalmente è espresso nella sintassi di oggetti <a href="https://www.json.org/json-it.html">JSON</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110680,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/image-3.png" alt="" class="wp-image-110680"/></figure>
<!-- /wp:image -->

<!-- wp:heading -->
<h2 class="wp-block-heading">Il formato di distribuzione e l'accesso via sistemi cloud</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>I dati sono <a href="https://github.com/OvertureMaps/data/#5-download-the-parquet-files" data-type="link" data-id="https://github.com/OvertureMaps/data/#5-download-the-parquet-files">distribuiti</a> nel formato <a href="https://aborruso.github.io/posts/duckdb-intro-csv/#parquet" data-type="link" data-id="https://aborruso.github.io/posts/duckdb-intro-csv/#parquet">parquet</a>, con un <a href="https://github.com/OvertureMaps/data/#5-download-the-parquet-files" data-type="link" data-id="https://github.com/OvertureMaps/data/#5-download-the-parquet-files">download</a> totale di oltre<strong> 200 GB</strong>. Inoltre, è possibile interrogarli senza scaricarli utilizzando strumenti come <a href="https://github.com/OvertureMaps/data/#1-amazon-athena-sql" data-type="link" data-id="https://github.com/OvertureMaps/data/#1-amazon-athena-sql">Amazon Athena</a>, <a href="https://github.com/OvertureMaps/data/#2-microsoft-synapse-sql">Microsoft Synapse</a>,  <a href="https://github.com/OvertureMaps/data/#4-apache-sedona-python--spatial-sql">Apache Sedona</a> e <a href="https://github.com/OvertureMaps/data/#3-duckdb-sql">DuckDB</a>.<br>Questa soluzione si presenta molto performante ed intelligente, anche se attualmente non sono ancora presenti accessibili da chi utilizza i classici software <a href="https://it.wikipedia.org/wiki/Geographic_information_system" data-type="link" data-id="https://it.wikipedia.org/wiki/Geographic_information_system">GIS</a>.<br>La documentazione, soprattutto quando si utilizza <a href="https://aborruso.github.io/posts/duckdb-intro-csv/" data-type="link" data-id="https://aborruso.github.io/posts/duckdb-intro-csv/">DuckDB</a>, fornisce istruzioni chiare su come convertire questi dati in formati tradizionali come il vecchio e ancora diffuso ESRI Shapefile, nonché in formati più moderni come geopackage o geoparquet.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110682,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/image-5.png" alt="" class="wp-image-110682"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><br>La sfida principale di OvertureMaps è coprire l'intero globo, e attualmente, l'unica fonte che riesce a farlo è OpenStreetMap. Quindi, non sorprende che i dati distribuiti seguano uno schema definito da OMF con una corrispondenza sulle geometrie e molti degli attributi.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Allo stato attuale quelli che derivano totalmente da OpenStreetMap sono quelli delle reti di trasporto pubblico. Anche quelli degli edifici derivano da OpenStreetMap ma a loro volta sono integrati con quelli offerti da <a href="https://www.microsoft.com/en-us/maps/bing-maps/building-footprints" data-type="link" data-id="https://www.microsoft.com/en-us/maps/bing-maps/building-footprints">Microsoft</a> e dalla distribuzione <a href="https://daylightmap.org/" data-type="link" data-id="https://daylightmap.org/">DayLightMap</a> (una copia dei dati di OpenStreetMap rivisitata e gestita da Meta con strumenti di controllo e verifica) dove <a href="https://daylightmap.org/2022/12/02/building-heights.html" data-type="link" data-id="https://daylightmap.org/2022/12/02/building-heights.html">hanno stimato le altezze </a> su alcune città statunitensi. Per questa ragione, queste due categorie, fanno uso della licenza <a href="https://it.okfn.org/odbl/index.html" data-type="link" data-id="https://it.okfn.org/odbl/index.html">ODbL</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I prodotti luoghi di interesse e i confini amministrativi invece vengono dalle aziende che aderiscono ad OMF e la licenza usata è <a href="https://de.straba.us/community-data-license-agreement-permissive-una-licenza-opendata-ben-studiata/">CDLA-Permissive</a> - una licenza di tipo attribuzione molto agevole e che supera alcuni vincoli della CC-BY.<br>I luoghi di interesse provengono, per la maggiore, da Facebook e sono tutti quei dati in cui, gli iscritti alla piattaforma, hanno segnalato la propria attività commerciale, o segnalato luoghi, ristoranti, associazioni ed altro ancora in una forma georiferibile come un numero civico o un punto su una mappa.<br>I confini invece sono un prodotto di TomTom.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Andando più nello specifico ho analizzato i dati all'interno del confine italiano estraendo i dati con DuckDB una volta scaricati (questa risulta la soluzione che occupa più spazio disco ma con i tempi di attesa più rapidi).<br>Tutti i comandi utilizzati ed i dati convertiti in formato geopackage divisi per regione ed arricchiti dagli attributi ISTAT come codice regione, codice provincia, codice e nome del comune, sono raggiungibili a questa pagina GitHub - <a href="https://github.com/napo/overturemaps_italy">https://github.com/napo/overturemaps_italy</a> </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110683,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/image-6.png" alt="" class="wp-image-110683"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Senza entrare nei dettagli di confronto degli oggetti contenuti con altre sorgenti dati con copertura nazionale (in particolare in <a href="https://www.igmi.org/it/dbsn-database-di-sintesi-nazionale" data-type="link" data-id="https://www.igmi.org/it/dbsn-database-di-sintesi-nazionale">DBSN dell'Istituto Geografico Militare</a>) le considerazioni finali sono le seguenti:</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2 class="wp-block-heading"><strong>Un'analisi dettagliata: confini amministrativi, edifici e altro</strong></h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p><strong>Confini Amministrativi</strong><br>il valore aggiunto della risorsa offerta da OvertureMaps è quello di avere i nomi in più di una lingua (fino a 40), informazione che è comunque disponibile anche da quanto offerto da <a href="https://www.naturalearthdata.com/downloads/" data-type="link" data-id="https://www.naturalearthdata.com/downloads/">NaturalEarthData</a>.<br>Rimane comunque alto il problema della precisione dei confini e dei continui cambiamenti.<br>In Italia, negli ultimi anni, ci sono state <a href="https://energia.regione.emilia-romagna.it/notizie/notizie-home/2021/due-comuni-dalle-marche-allemilia-romagna">regioni che hanno cambiato i loro confini</a>, pertanto - qualora si voglia operare solo nel confine italiano - la risorsa dei <a href="https://www.istat.it/it/archivio/222527" data-type="link" data-id="https://www.istat.it/it/archivio/222527">limiti amministrativi di ISTAT </a>rimane molto più efficace.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Edifici</strong><br>Quello che affascina del comunicato di OMF riguardo gli edifici è la possibilità di vedere integrate in quanto già offre OpenStreetMap anche quelli di Microsoft e, più in particolare, le altezze stimate. <br>Purtroppo però, sul territorio italiano, gli edifici disponibili sono esattamente quelli di OpenStreetMap senza ulteriore aggiunta di informazioni.<br>Pertanto, le altezze, sono quelle inserite da chi contribuisce al progetto o che derivano da dati importati.<br>Nei dati si può trovare sia il valore dell'altezza in metri che il numero di piano. Molti sono quelli vuoti.<br>Il fatto che la comunità si sia attivata ad inserire anche il numero di piani dipende anche molto dalle rappresentazioni che vengono da <a href="https://streets.gl/#41.89026,12.49309,45.00,0.00,1500.00" data-type="link" data-id="https://streets.gl/">streets.gl</a>: basta capire quale è l'edificio, andare in OpenStreetMap, inserire il numero di piani e tornare in streets.gl per vederlo apparire in 3D.<br>La mappa della copertura evidenzia inoltre anche dove si ha una maggiore concentrazione di contributi in OpenStreetMap vedendo quindi il nord italia e alcune regioni del sud (in particolare la Puglia) particolarmente ricche di dettagli ed altre meno ricche.<br>Qui, l'attuale risorsa italiana con una copertura maggiore è quella del <a href="https://www.igmi.org/it/dbsn-database-di-sintesi-nazionale" data-type="link" data-id="https://www.igmi.org/it/dbsn-database-di-sintesi-nazionale">DBSN dell'Istituto Geografico Militare</a> ma è comunque priva delle altezze. Una informazione molto importante che permette di migliorare la pianificazione delle città in particolare su questioni come energia, cambiamento climatico, rumore ecc...</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Reti di Trasporto</strong><br>qui la risorsa, come scritto in precedenza, è totalmente basata su OpenStreetMap e si divide in due categorie: archi stradali e punti di collegamento.<br>Qui il valore aggiunto che offre OMF è quella del lavoro di suddivisione in archi che permette così, a chi lavora nel settore dei trasporti, di trovarsi davanti ad un prodotto pre-confezionato utile per gli esperti di dominio.<br>Allo stato attuale attributi come numero di corsie, larghezza della strada, tipo di pavimento, limiti di velocità, tipologia di mezzi che possono accedere, ecc... sono presenti ma non in maniera uniforme. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Luoghi di Interesse</strong><br>Viste le premesse il prodotto dei luoghi di interesse appare essere quello in assoluto più nuovo in quanto cattura una esigenza del quotidiano ( = conoscere un luogo da raggiungere che sia una piazza, una attività commerciale o una biblioteca o ...) e lo fa sulla base dei dati con cui gli utenti popolano Facebook.<br>Ci si aspetterebbe quindi un ampio elenco di punti con numerose tipologie, aggiornato e ben curato.<br>In realtà non è così ed il motivo è abbastanza semplice: quando si crea una pagina Facebook o si compila il proprio profilo, si comincia a fare attenzione a tutta una serie di informazioni fra cui l'indirizzo dove si trova l'attività. C'è chi inserisce un punto su una mappa, chi si accontenta del suggerimento, anche perché poi spesso ci si chiede quale sia il punto significativo da mostrare (es. una società sportiva mette la sede legale o il campo di gioco principale?) e quindi poi non completa l'iscrizione, inoltre, quando poi una attività funziona, i dati della posizione vengono poi "dimenticati" e quando, purtroppo, chiude (e con il covid ne abbiamo avute molte) la pagina continua a rimanere aperta.<br>Si aggiungono poi questioni di profili goliardici, luoghi inesistenti, luoghi ridondanti (es. una piazza di una città) ed altro ancora.<br>Sicuramente la fonte principale non è solo Facebook (si trovano riferimenti anche a Microsoft) e, molto probabilmente, si tratta anche di dati importati da altre fonti (es. i musei del ministero dei beni culturali), il risultato però è che si hanno dati di luoghi inesistenti o di attività che non esistono più o - ancora peggio - mal posizionati.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><a href="https://bdon.org/">Brandon Liu </a>ha creato una <a href="https://bdon.github.io/overture-tiles/places.html#5.17/43.045/12.384">mappa</a> che mostra questi dati.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110673,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/image.png" alt="" class="wp-image-110673"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>I punti sono talmente mal posizionati che alcuni finiscono in mare.... </p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":110674,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image aligncenter size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/Screencast-from-2023-09-03-16-31-07.gif" alt="" class="wp-image-110674"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>i dati sono completi anche di un valore di confidenza da 0 a 1 che indica quanto un punto esiste realmente ... solo che, anche se può dare indicazione che il luogo realmente esista, anche su un intervallo di confidenza molto alto (es. 0,98) qualche punto continua a rimanere in mezzo al mare....</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110677,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/Screencast-from-2023-09-03-16-53-55-2.gif" alt="" class="wp-image-110677"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>I dati messi a disposizione nel repository GitHub che ho creato hanno i soli punti che si trovano sulla terra ferma.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Si tratta comunque di una risorsa molto importante e che può decisamente essere utile.</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2 class="wp-block-heading">Conclusione</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p><br>Questo rilascio<strong> alpha zero </strong>di OvertureMaps ci mostra cosa sta bollendo in pentola ed offre un lavoro importante di <strong>riorganizzazione</strong> di sorgenti <strong>dati</strong> a cui le aziende che ne fanno parte possono accadere.<br>L'attenzione che ci stanno mettendo è anche molto alta al fine di creare <strong>prodotti riusabili,</strong> la <strong>dipendenza</strong> verso <strong>OpenStreetMap</strong> è molto <strong>alta</strong>, in particolare in luoghi come l'<strong>Italia</strong>.<br>Allo stato attuale il <strong>lavoro</strong> più grosso è in quello di creare uno<strong> schema condiviso</strong>, il successivo sarà sicuramente quello dell'<strong>integrazione</strong> fra più <strong>sorgenti</strong> e di strumenti di <strong>verifica</strong> della <strong>qualità</strong>.<br>Si tratta di un lungo percorso nella creazione di una nuova sorgente <strong>opendata</strong> che si spera aiuti il movimento (a partire dalle quelle leggi che lo sostengono), aumenti la qualità e continui a dare energia ad OpenStreetMap. <br>Tuttavia, riguardo a quest'ultimo aspetto, sarà compito della comunità anche fare valere i propri diritti</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per chi, intanto, vuole <strong>curiosare</strong> sui dati senza download il consiglio è quello di guardare la <a href="https://msbarry.github.io/planetiler-overture-demo/#5.03/43.9/12.37">mappa</a> creata da<strong> </strong><a href="https://twitter.com/msb5014" data-type="link" data-id="https://twitter.com/msb5014">Mike Barry</a>: i dati sono mostrati nella loro forma grezza con tutti gli attributi disponibili.<br></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":110678,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2023/09/image-1.png" alt="" class="wp-image-110678"/></figure>
<!-- /wp:image -->

<figure><img src="/assets/images/medium/9079063643eeea3b.png" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/fc33320683638396.png" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/3b468c3a5fa350ff.png" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/f9abc4f956b867fe.png" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/00131beb23bea10f.png" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/7ce257cdd6f08fbe.png" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/2999b5d819ecbc96.gif" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/2cff3f7be10be335.gif" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<figure><img src="/assets/images/medium/7f05235d088feb93.png" alt="Esplosione di dati geografici: analisi del primo rilascio di OvertureMaps Foundation in Italia" /></figure>
<p><a href="https://medium.com/p/94f2114a25f8">Versione originale su Medium</a></p>
