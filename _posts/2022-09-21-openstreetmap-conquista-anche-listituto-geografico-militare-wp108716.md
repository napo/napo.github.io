---
layout: post
title: "OpenStreetMap conquista anche l'Istituto Geografico Militare"
date: "2022-09-21 15:46:37"
permalink: "/openstreetmap-conquista-anche-listituto-geografico-militare/"
original_url: "https://de.straba.us/openstreetmap-conquista-anche-listituto-geografico-militare/"
render_with_liquid: false
categories:
  - "opendata"
  - "openstreetmap"
tags:
  - "geospatial"
  - "hvd"
  - "igm"
  - "odbl"
  - "open data"
  - "opendata"
  - "openstreetmap"
  - "osm"
---

<!-- wp:paragraph -->
<p>Il grimaldello che ha permesso in questa ultima decade di dialogare con le pubbliche amministrazioni sul rilascio dei dati è stata la direttiva europea PSI - Public Sector Information.<br>Nata nel 2003 ed attuata nel 2008 ha messo al centro il settore informativo pubblico portandolo all’attenzione come un bene comune per chiunque può trarne vantaggio dal suo riuso.<br>Negli anni ha subito poi diverse modifiche fino a diventare, nel 2019, la direttiva Open Data o meglio la direttiva "<a rel="noreferrer noopener" href="https://eur-lex.europa.eu/legal-content/IT/TXT/HTML/?uri=CELEX:32019L1024&amp;from=EN" target="_blank">relativa all'apertura dei dati e al riutilizzo dell'informazione del settore pubblico</a>" arrivando a proporre in un allegato l'elenco degli HVD (<a href="https://digital-strategy.ec.europa.eu/en/policies/legislation-open-data">high value datasets</a>):  i dataset ad alto valore per i quali ogni stato membro si deve impegnare nel rilascio.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'attuazione di questa direttiva in Italia ha individuato una serie di attori che si devono occupare del rilascio di questi dati ad alto valore.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per i dati geospaziali il <a rel="noreferrer noopener" href="https://docs.italia.it/AgID/documenti-in-consultazione/lg-opendata-docs/it/bozza/principi-generali/serie-di-dati-di-elevato-valore.html#il-ruolo-dellistituto-geografico-militare-igm" target="_blank">ruolo è stato individuato nell'IGM</a> (<a rel="noreferrer noopener" href="https://www.igmi.org/" target="_blank">Istituto Geografico Militare</a>). Per molti - il sottoscritto per primo - questa scelta ha suscitato un po' di perplessità in quanto, a causa della natura stessa un po' speciale dell'istituto (per intenderci la "M" della sigla) G ha sempre potuto dribblare alcuni vincoli nazionali.<br>Invece, con molto stupore dal 20 settembre 2022 è possibile scaricare in open data una prima versione del <a rel="noreferrer noopener" href="https://www.igmi.org/it/dbsn-database-di-sintesi-nazionale" target="_blank">DBSN - DataBase di Sintesi Nazionale</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108729,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2022/09/image-3.png" alt="" class="wp-image-108729"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Si tratta di un archivio diviso per regioni e province (al momento sono presenti i dati di Basilicata, Calabria, Molise e Puglia) che presentano 9 <a rel="noreferrer noopener" href="https://www.igmi.org/boaga_caloger_api4242_rosbind/dbsn/dbsn_specs_redux.html" target="_blank">temi</a>:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>Viabilità, mobilità e trasporti</li><li>Immobili ed antropizzazioni</li><li>Idrografia</li><li>Orografia</li><li>Vegetazione</li><li>Reti di sottoservizi</li><li>Località significative e scritte cartografiche</li><li>Ambiti amministrativi</li><li>Aree di pertinenza</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>La scala è 1:25.000 e ricca anche la <a rel="noreferrer noopener" href="https://www.igmi.org/boaga_caloger_api4242_rosbind/dbsn/dbsn_specs_all.html" target="_blank">documentazione</a>  per interpretarli.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Lascia un po' sorpresi il fatto che ci si debba <a rel="noreferrer noopener" href="https://www.igmi.org/it/dbsn-database-di-sintesi-nazionale/raccolta-richiesta-di-download/++add++planetek.igm_types.consenso_informato" target="_blank">registrare</a>  e che i dati siano rilasciati in un formato non propriamente aperto (.gdb = ESRI File Geodatabase) anche se supportato dalla <a rel="noreferrer noopener" href="https://gdal.org/drivers/vector/openfilegdb.html" target="_blank">libreria GDAL</a> e di conseguenza da QGIS ed altri software che si appoggiano ad essa.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108728,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2022/09/image-2.png" alt="" class="wp-image-108728"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>La questione la si può giustificare ragionando su quella che può essere l'infrastruttura con cui IGM distribuisce - da sempre - i suoi dati.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Arriviamo però alla questione più interessante in assoluto: la licenza scelta nel rilasciare i dati è la <a href="https://it.okfn.org/odbl/index.html" target="_blank" rel="noreferrer noopener">ODbL</a></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108730,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2022/09/image-4.png" alt="" class="wp-image-108730"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Nel lungo ed infinito elenco di licenze usate nell'opendata questa licenza è nota per essere quella adottata da OpenStreetMap ed ha una particolarità per cui, nel caso degli open government data (= i dati della pubblica amministrazione), viene sconsigliata: quella di obbligare ad utilizzare la stessa licenza e di continuare a tenere la banca dati aperta (ma non i suoi prodotti derivati) - in gergo tecnico si parla di "share alike" ( = condividere allo stesso modo).<br>Questo è un vincolo fa si che, qualsiasi aggregazione di dati alla banca dati originaria - se significativa - ha la conseguenza che debba essere sempre rilasciata come open data.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Diventa pertanto un vincolo da risolvere per chi, fra i suoi servizi e prodotti, offre anche dati.<br>Gli scenari in cui questa licenza trova il suo maggiore successo sono principalmente due:</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>1 - Difendere i prodotti creati dalle comunità<br>e questo è esattamente il caso di OpenStreetMap dove, nella creazione della banca dati georeferenziata collaborativa che sviluppa, il vincolo diventa un obbligo a partecipare al progetto con interessanti scenari (allo stato attuale ci sono grandi player come Meta/Facebook, Apple e Microsoft che partecipano allo sviluppo - lettura consigliata "<a href="https://www.openstreetmap.org/user/Jennings%20Anderson/diary/396271" target="_blank" rel="noreferrer noopener">A 2021 Update on Paid Editing in OpenStreetMap</a>")</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>2 - Offrire prodotti in dual licensing<br>qui siamo davanti ad un modello di business per cui una azienda lascia che i dati di cui è fornitrice vengano usati da chiunque e propone invece un cambio di licenza a chi si trova ad avere la necessità di non poter rispettare i vincoli</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quello che può apparire invece strano è che le Linee Guida di AgID nella sezione "<a rel="noreferrer noopener" href="https://docs.italia.it/italia/daf/lg-patrimonio-pubblico/it/stabile/licenzecosti.html" target="_blank">Licenze</a>" del capitolo "<a rel="noreferrer noopener" href="https://docs.italia.it/italia/daf/lg-patrimonio-pubblico/it/stabile/licenzecosti.html#" target="_blank">Aspetti legali e costi"</a> sconsigliano - anche sulla base delle richieste della Commissione Europea - di usare licenze di tipo "share alike"  e vanno invece a favore della CC-BY (licenza con il solo vincolo di attribuzione) . Si veda la nota in <a rel="noreferrer noopener" href="https://docs.italia.it/italia/daf/lg-patrimonio-pubblico/it/stabile/licenzecosti.html" target="_blank">questa sezione.</a></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La domanda da porsi è quindi: "Perchè IGM ha scelto ODbL"?.<br>Anche se la risposta corretta ci può arrivare solo da chi ha fatto questa scelta, nel leggere la descrizione del Database di Sintesi Nazionale, si trovano delle informazioni molto importanti.</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p><em>Per realizzare il DBSN, con l’obiettivo di elaborare dati sempre più completi ed aggiornati, si è fatto riferimento principalmente ai dati geotopografici regionali come fonte primaria di informazione. Nella fase iniziale del progetto sono stati raccolti i dati nella versione più aggiornata e si è operato una trasformazione di struttura per renderla omogenea a livello nazionale, mantenendo il livello di dettaglio originario. Successivamente si è provveduto all’integrazione con dati di Enti pubblici nazionali, ad esempio le mappe catastali dell’Agenzia delle Entrate, i dati dell’Istat, dati di altri Ministeri, considerando anche altre informazioni disponibili su web come i dati di OpenStreetMap (OSM). </em><br></p><cite>da https://www.igmi.org/it/dbsn-database-di-sintesi-nazionale</cite></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>in particolare la frase "considerando anche altre informazioni disponibili su web come i dati di OpenStreetMap (OSM)"  fa capire che la banca dati contiene dati provenienti da OpenStreetMap e quindi la  <strong>ODbL</strong> diventa <strong>una scelta obbligata</strong> a causa del vincolo "share alike".</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il testo però con cui IGM presenta DBSN porta a riflessioni ancora più interessanti: </p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><li><strong>Una pubblica amministrazione molto importante riconosce il valore di OpenStreetMap</strong><br>è evidente che IGM interpreta in maniera più che corretta il ruolo di attore fondamentale nella realizzazione di un dataset ad alto valore (come voluto dalla commissione europea) rispettando a perfezione il suo mandato e mettendo in evidenza quelle che sono le sue competenze.<br>IGM crea una banca di altissimo valore che va a prendere il meglio di ciò che la pubblica amministrazione italiana offre ( = le Regioni, gli enti pubblici nazionali, agenzia delle Entrate / Catasto, ISTAT ed altri ministeri) andando a fare un lavoro di integrazione e armonizzazione non banale che fino ad ora non si era mai visto (famoso è il caso di ISTAT che, nella ricerca sperimentale per il <a rel="noreferrer noopener" href="https://www.istat.it/it/archivio/257382" target="_blank">calcolo di indicatori per l’incidentalità stradale sulla rete viaria italiana ha utilizzato OpenStreetMap</a> causa la mancanza di un dataset nazionale completo delle strade italiane) e integrando anche un patrimonio di dati importante come quello di OpenStreetMap creato dai cittadini stessi.</li><li><strong>I dati di OpenStreetMap vengono potenzialmente rimessi a disposizione in un circolo virtuoso</strong><br>OpenStreetMap è ormai da anni una fonte di innovazione e creazione di applicazioni incredibili che generano una lunghissima filiera (al punto che molti non si rendono nemmeno conto di farne uso). La comunità quotidianamente raccoglie dati e tiene aggiornata la mappa. Questa operazione viene fatta nelle modalità più disparate: raccolta sul posto con un GPS, modifica a dati esistenti, tracciamento da foto aree di cui sono concessi i permessi, ... e dall'inclusione di dati per cui si ha il permesso di importazione.<br>Quest'ultimo passaggio spesso è noioso e richiede molto tempo a <a rel="noreferrer noopener" href="https://wiki.openstreetmap.org/wiki/Import/Guidelines" target="_blank">causa delle regole di importazione</a> che vedono - giustamente - come primo vincolo una licenza compatibile.<br>Problema che, in questo caso, non si pone e che quindi può agevolare questa operazione.<br>Quello che quindi accade è che, la banca dati creata da IGM, diventa una fonte autorevole e di forte interesse che va a migliorare la banca dati di OpenStreetMap e che, a causa del fatto che IGM stessa guarda a OpenStreetMap nel suo lavoro di aggiornamento, ha il potenziale di essere restituta con ulteriori migliorie creando quindi un circolo virtuoso che ha un grande potenziale</li><li><strong>Come saranno gestite le violazioni? </strong><br>Nonostante si parli di opendata da oltre 10 anni e che la questione delle licenze sia sempre al centro dell'attenzione della nicchia di chi se ne occupa, persistono ancora situazioni per cui il pensiero comune è "se i dati sono online, e per lo più sono di una pubblica amministrazione, allora non ho problemi a riusarli".<br>Anche se, per molti aspetti, il concetto è corretto, purtroppo molte persone sottovalutano le licenze e fanno diverse violazioni.<br>Una licenza CC-BY chiede, molto "banalmente", di citare la fonte e capita invece spesso che questa venga dimenticata o che, addirittura, diventi una questione faticosa nel capire come riportarla o quando è il risultato di una somma di sorgenti diverse (vd la sezione "<a rel="noreferrer noopener" href="https://docs.italia.it/AgID/documenti-in-consultazione/lg-opendata-docs/it/bozza/aspetti-legali-e-di-costo/licenze-e-condizioni-di-riutilizzo.html" target="_blank">Si fa riferimento, a titolo di esempio</a>" nel capitolo "<a rel="noreferrer noopener" href="https://docs.italia.it/AgID/documenti-in-consultazione/lg-opendata-docs/it/bozza/aspetti-legali-e-di-costo/" target="_blank">licenze e condizioni di riutilizzo"</a> delle linee guida di AgID sugli open data).<br>OpenStreetMap già soffre molto di violazioni nel riuso della mappa principale dove si chiede banalmente di citare la fonte, ma poi succede che non viene fatto (vd l'elenco delle <a rel="noreferrer noopener" href="https://github.com/osmItalia/Segnalazioni-Mancata-attribuzione-OSM/issues" target="_blank">mancate attribuzioni </a>che Wikimedia Italia si fa carico di gestire) e la questione della ODbL è spesso ancora più faticosa da comprendere.<br>Cercando di semplificare bisogna prima distinguere fra prodotti e banche dati.<br>Prendiamo come esempio una mappa: <br>questo è un prodotto derivato dai dati, quindi il vincolo che pone l’ODbL è quello di citare la fonte.<br>Se però poi, alcuni toponimi hanno nome sbagliato o sono posizionati nel posto sbagliato o sono mancanti, occorre andare a modificare i dati di origine con la conseguenza che si creerà un nuovo dataset e questo, se reso pubblico, dovrà usare nuovamente la ODbL.<br>Fino a qui tutto appare semplice anche se poi arrivano meccanismi ancora più complessi come il generare dati dal tracciamento di una mappa generata a sua volta da OpenStreetMap e qui, molti giuristi, dicono che si sta ricreando la banca dati di OpenStreetMap e, pertanto, il nuovo dataset dovrà essere in ODbL.<br>Sono moltissimi poi i casi in zona "grigia" dove la OpenStreetMap Foundation sta dando delle soluzioni. Consiglio la lettura di questo vecchio articolo "<a rel="noreferrer noopener" href="https://web.archive.org/web/20150123004813/https://www.openstreetmap.it/2014/08/ai-confini-della-licenza" target="_blank">Ai confini della licenza"</a> per avere qualche idea.<br>Ora la domanda da porsi è: <br>IGM dovrà gestire pontenziali violazioni della licenza? Ci saranno fruitori dei dati che capiranno il significato della ODbL?</li></ol>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Questo lo scopriremo nel tempo, al momento è importante festeggiare, celebrare questa azione e guardare a questa operazione con gli occhi dell'innovazione che vede mettere in discussione pregiudizi, allinearsi con i tempi e creare un bene comune di cui si sente una forte esigenza.<br>Certo ... ora siamo in attesa di vedere aprire anche ANNCSU - l'Archivio nazionale dei numeri civici delle strade urbane.<br>IGM in questa operazione ha fatto una azione per niente banale: forte della sua posizione ha preso tutte le fonti di banche dati rilasciate con licenze diverse fra di loro (fra versioni della stessa licenza, vincoli non commerciali, vincoli di condivisione allo stesso modo ed altro ancora) per creare una nuova banca dati omogenea, verificata e di alta qualità convergendo in una sola licenza.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non è affatto banale quello che è stato fatto e facciamo il tifo affinché questo prosegua non solo con la copertura di tutta Italia ma anche in continui aggiornamenti.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/c4ee16ae63989f29.png" alt="OpenStreetMap conquista anche l’Istituto Geografico Militare" /></figure>
<figure><img src="/assets/images/medium/ba4d13e7eb5fa43f.png" alt="OpenStreetMap conquista anche l’Istituto Geografico Militare" /></figure>
<figure><img src="/assets/images/medium/09726ee048ad9ef9.png" alt="OpenStreetMap conquista anche l’Istituto Geografico Militare" /></figure>
<p><a href="https://medium.com/p/bfcb889c8a48">Versione originale su Medium</a></p>
