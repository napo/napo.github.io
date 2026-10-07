---
layout: post
title: "Software libero e sostenibilità: la storia di SpatiaLite e Alessandro Furieri"
date: "2020-08-05 15:26:17"
permalink: "/software-libero-e-sostenibilita-la-storia-di-spatialite-e-alessandro-furieri/"
original_url: "https://de.straba.us/software-libero-e-sostenibilita-la-storia-di-spatialite-e-alessandro-furieri/"
render_with_liquid: false
categories:
  - "gis"
  - "software libero"
tags:
  - "furieri"
  - "gis"
  - "opensource"
  - "spatialite"
---

<!-- wp:heading -->
<h2>PREMESSA</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Alessandro Furieri è uno sviluppatore italiano geniale che ha creato il progetto Spatialite: una estensione geospaziale a SQLite che contribuisce a tantissimi progetti di successo.<br>L'ultima versione di <a href="https://www.gaia-gis.it/gaia-sins/index.html">Spatialite</a> ha impiegato molto ad uscire per varie ragioni che Alessandro ha scritto nella mailing-list collegata al progetto.<br>Quanto scritto è in inglese, con il suo permesso ho fatto la mia traduzione in italiano.<br>Credo che questa sia una storia importante, su cui riflettere, che aiuta a capire quanto i progetti di software libero abbiano bisogno di persone competenti e di sostenibilità per esistere.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La storia originale si trova qui <a rel="noreferrer noopener" href="https://groups.google.com/g/spatialite-users/c/vKLokX4aSVU/m/qNDZDBoSAwAJ" target="_blank">https://groups.google.com/g/spatialite-users/c/vKLokX4aSVU/m/qNDZDBoSAwAJ</a></p>
<!-- /wp:paragraph -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:heading -->
<h2>Cosa è successo a SpatiaLite negli ultimi anni</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>o anche "<strong>il modello di businnes di Spatialite</strong>", o anche "<strong>la carriera professionale di uno sviluppatore open source</strong>"</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>Suppongo che molti di voi siano curiosi di sapere perché lo sviluppo di SpatiaLite ha subito un brusco rallentamento negli ultimi anni, e la cosa peggiore è stata completamente congelata negli ultimi due anni.<br>Ecco la storia completa; è una lunga storia, quindi preparati per una lettura piuttosto lunga.</p><cite>Alessandro Furieri</cite></blockquote>
<!-- /wp:quote -->

<!-- wp:heading {"level":4} -->
<h4>Passato remoto</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Ho iniziato a lavorare come sviluppatore C freelance e come consulente software all'inizio degli anni '80. <br>Fino alla fine del secolo scorso i miei principali clienti erano sempre i piccoli comuni, gli ospedali di periferia e le piccole compagnie di trasporto situate principalmente in Toscana.<br>Tutti avevano pochissimi soldi da spendere per l'acquisto di sistemi software e sono stato in grado di offrire soluzioni ultra economiche basate su Xenix o SCO Unix a basso prezzo: era sufficiente un solo PC, da due a cinque stupidi terminali ed un paio di stampanti ad aghi per soddisfare i requisiti di queste organizzazioni piccole e poco sofisticate.<br>Anche se il software richiesto era abbastanza semplice da sviluppare ed era gestito da una sola persona (il sottoscritto), era esattamente quello che i miei clienti si aspettavano per risolvere i loro problemi.<br>Molte di queste mie installazioni hanno funzionato ininterrottamente per 10-15 anni e quando hanno trovato il loro corso per cui sono state abbandonate e sostituite da nuove soluzioni industriali hanno lasciato molti utenti in preda a nostalgia e rimpianti.<br>All'inizio degli anni 2000 era diventato difficilissimo resistere alla concorrenza di Windows e quindi tutto questo mio lavoro ha dovuto concludersi.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Nuove esperienze</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Nei primi 10 anni del nuovo secolo sono stato assunto come consulente software dal Dipartimento dei trasporti della Regione Toscana; il mio compito iniziale era quello di progettare e amministrare un database piuttosto grande e complesso contenente tutti gli orari degli autobus e dei treni e i calendari dei servizi che coprono l'intera regione.<br>Solo successivamente è emersa la richiesta di completare il database integrando tutti i dati geografici relativi a fermate, percorsi e rete stradale.<br>Quello è stato il mio primo contatto con i dati geospaziali.<br>Nuovamente, ho dovuto affrontare il problema dei costi insopportabili:  i costi delle licenze del software di ESRI e Oracle Spatial erano completamente al di fuori delle risorse disponibili e le soluzioni alternative open source all'epoca erano piuttosto immature e inaffidabili e / o estremamente complesse, quindi decisi di scrivere il mio software applicativo da zero.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I miei primi tentativi si basavano su MS Access, ma era chiaro che si trattava di una soluzione troppo grezza e limitata. Successivamente però ho scoperto il meraviglioso SQLite con la sua architettura intelligente che consente di aggiungere infinite funzioni SQL … e finalmente <em>SpatiaLite è nato.</em></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108406,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2020/08/spatialite-logo-big.png" alt="" class="wp-image-108406"/><figcaption>il logo di spatialite</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Dopo un periodo iniziale di diffusione limitata all'interno della comunità toscana dei pianificatori di servizi trasporto pubblico, ho capito che SpatiaLite poteva avere un campo di applicazione più generale, quindi ho finalmente deciso di rilasciare un progetto <em>open source </em>a tutti gli effetti.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Gli anni successivi</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Alla fine del mio contrattato  con il dipartimento dei trasporti sono stato in grado di proseguire lo sviluppo di SpatiaLite per due o tre anni utilizzando i miei risparmi: le mie precedenti entrate erano abbastanza buone da permettermi questa soluzione anche grazie al fatto che, essendo io una persona piuttosto parsimoniosa, non avevo grandi costi.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>È poi accaduto che SpatiaLite ha attirato l'attenzione del Sistema Informativo Territoriale e Ambientale della Regione Toscana con la conseguenza che ha iniziato a finanziare generosamente il progetto per diversi anni.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quella la posso considerare l'<em>Età dell'Oro</em> di SpatiaLite, infatti il software divenne uno strumento di elaborazione robusto, completo e potente per elaborare enormi quantità di dati geospaziali in maniera sorprendentemente efficiente senza perdere la sua intrinseca semplicità e leggerezza.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Sfortunatamente, come ogni cosa buona nella vita, era assolutamente chiaro che una tale combinazione magica non poteva resistere per sempre: era assolutamente necessaria una nuova fonte di finanziamento.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Nuove esperienze</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Intorno al 2014 è emersa inaspettatamente una nuova opportunità lavorativa: la Regione Toscana aveva deciso di avviare una riforma rivoluzionaria del suo sistema di trasporto pubblico.<br><br>Invece di continuare con il sistema storico ben consolidato basato su molte società locali indipendenti (principalmente di proprietà di Comuni e Province) che operano in condizioni di monopolio protetto, decise che tutti i servizi di trasporto pubblico di tutta la regione dovevano ora essere gestiti da un'unica società integrata che operasse secondo le norme dell'UE sulla concorrenza del libero mercato.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Di conseguenza venne lanciata una gara pubblica europea per individuare la nuova società incaricata di gestire tutte le reti di trasporto pubblico in Toscana per i successivi 11 anni.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Fornisco qualche numero per capire meglio il contesto; si tratta di circa 5.500 lavoratori e 3.000 mezzi di trasporto, per un valore monetario totale di oltre 4 miliardi di euro.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Come poi è emerso in seguito, questa è stata di gran lunga la più importante e ricca gara pubblica mai lanciata in Europa per il settore del trasporto pubblico.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>I due contendenti</em></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>alla fine dei giochi a partecipare alla gare si sono trovate in competizione solo due offerte: una composta dalla coalizione di tutti gli operatori storici toscani, l'altra invece dalla francese RATP  (l'operatore di servizi di metropolitana e autobus a Parigi e la quinta compagnia di trasporti del mondo) che già gestiva la rete tranviaria di Firenze.<br>I francesi erano ovviamente in forte svantaggio poiché mancavano di esperienza diretta di prima mano sul territorio toscano, ma lo compensarono rapidamente creando un team di consulenti senior locali, Io venni assunto in quel team per supportare tutte le attività del progetto gestendo un database spaziale di tutti i servizi di autobus.<br>Era più o meno lo stesso ruolo che avevo avuto nella mia precedente esperienza, e inizialmente sembrava un impegno molto ragionevole, ben pagato e che non richiedeva uno sforzo straordinario.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'accordo iniziale era di sei mesi per supportare i miei colleghi nella preparazione del progetto industriale e della pianificazione finanziaria; in caso di vittoria, mi aspettavo di sostenere il processo di transizione durante il primo anno di operazioni.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Come si può intendere, è stato un impegno molto ragionevole ed è stato pienamente compatibile con il proseguimento dello sviluppo di <em>SpatiaLite</em>: purtroppo nessuna previsione si è mai rivelata più fallace di questa, come vi spiegherò successivamente.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>La disputa</em></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Alla fine della gara pubblica la Regione Toscana scelse l'offerta francese, principalmente per il fatto di avere una stabilità finanziaria più solida e per una più forte esperienza industriale a livello internazionale.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Di conseguenza io e i miei colleghi abbiamo iniziato a pianificare attentamente quello che sembrava, in apparenza, essere un processo di transizione imminente per iniziare rapidamente le nostre operazioni. Abbiamo però purtroppo scoperto che molti <em>ostacoli imprevisti </em>erano presenti ovunque.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Detto in parole povere, i nostri concorrenti si sono appena rifiutati di accettare l'esito finale della gara pubblica ed hanno iniziato e una serie infinita di ricorsi giudiziari a tutti i livelli possibili, a partire dal Tribunale amministrativo toscano, passando dal Consiglio di Stato italiano e per arrivare fino al Tribunale di Giustizia dell'Unione Europea.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tutte i loro <em>ricorsi</em> venivano regolarmente <em>respinti</em>, ma nel frattempo passavano gli anni e non accadeva nulla in attesa della fine di tutti i processi giudiziari.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dal mio limitato punto di vista personale ciò significava che quello che ci si aspettava fosse un impegno breve che non durasse più di un paio d'anni finì inaspettatamente per essere un impegno a lungo termine non così semplice di sei anni (fino ad ora).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ma il peggio della storia deve ancora arrivare.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Gli ultimi due anni e Spatialite</em></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A partire dagli ultimi mesi del 2018 era piuttosto chiaro che la serie infinita di processi giudiziari stava finalmente raggiungendo la sua fine naturale, quindi ci stavamo preparando per una transizione imminente.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il management francese era diventato nervoso, perché il tempo passava e le prospettive future erano ancora poco chiare, quindi nel cercare di compensare tutto questo  ha elaborato una serie infinita di piani di emergenza costantemente aggiornati in modo da essere pronti ad affrontare qualsiasi possibile scenario futuro.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per me è stata una vera tragedia, perché essendo l'unico membro dello staff in grado di estrarre dati utili dal nostro database spaziale sono stato continuamente sopraffatto da infinite richieste, una più urgente dell'altra.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tutti i nostri sforzi furono vani; i nostri concorrenti si sono semplicemente rifiutati di avviare il processo di transizione come richiesto dalla Toscana, quindi la data del subentro è stata continuamente spostata di mese in mese.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Sono stato costretto a <em>lasciare</em> <em>SpatiaLite</em> al suo destino semplicemente perché <em>non avevo tempo libero</em> da dedicare allo sviluppo del software. Per molti lunghi mesi non ero più uno sviluppatore di software, ero semplicemente diventato una macchina SQL che schiacciava una query dopo l'altra a un ritmo frenetico.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dato che ero già stato fregato da precedenti brutte esperienze, quando qualsiasi previsione sul futuro sviluppo di SpatiaLite si era presto rivelata irrealistica a causa della pressione di eventi esterni completamente al di fuori del mio controllo personale, ho deciso di <em>interrompere</em> qualsiasi <em>interazione</em> della <em>comunità</em>, riservandomi di <em>tornare</em> una volta di nuovo in <em>tempi migliori </em>e solo quando finalmente ho avuto qualche risultato tangibile da mostrare.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108405,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2020/08/Mexican_Standoff.jpg" alt="" class="wp-image-108405"/><figcaption><a href="https://www.flickr.com/people/28293006@N05">Martin SoulStealer</a> - <a href="https://commons.wikimedia.org/wiki/Flickr">Flickr</a>: <a href="https://www.flickr.com/photos/28293006@N05/8144747570">Mexican Standoff</a><br>Scene from a "steampunk" convention, The Asylum, Lincoln, England, September 2012 CC-BY</figcaption></figure>
<!-- /wp:image -->

<!-- wp:heading {"level":4} -->
<h4>Lo stato attuale</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Nel frattempo la "<em>guerra degli autobus toscana</em>" era diventata un caso politico di rilievo, con partiti nazionalisti e anti-UE "<em>Italexit</em>" di estrema destra che protestavano contro l' "<em>invasione francese</em>" annunciata e il conseguente "<em>tradimento di interessi nazionali che conferivano un prezioso valore strategico a i peggiori nemici dell'Italia </em>”.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Finalmente ora abbiamo raggiunto una situazione di stallo perfetto. È il più classico "<a href="https://it.wikipedia.org/wiki/Stallo_alla_messicana" target="_blank" rel="noreferrer noopener">stallo alla messicana</a>" in cui nessuno ha la minima idea del risultato finale di questo duro confronto.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tutti i tribunali amministrativi insistono sul fatto che la Toscana dovrebbe materializzare rapidamente gli effetti pratici della gara pubblica.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'Autorità nazionale antitrust sta minacciando i nostri concorrenti che annunciano punizioni esemplari per i loro comportamenti dilatori che mirano a prolungare per sempre i loro privilegi monopolistici.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dall'altro lato, accettando le lamentele dei nostri concorrenti, il procuratore generale di Firenze sta accusando il presidente della Toscana di frode e falsità per aver favorito illegalmente la vittoria francese per motivi politici.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questa primavera l'emergenza del Coronavirus ha semplicemente aggiunto un tocco finale di ulteriore follia.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Ed ora ...</em></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Fortunatamente, a partire dall'inizio dello scorso luglio è accaduto un miracolo inaspettato; un'improvvisa "<em>tregua armata</em>" è iniziata quando è diventato assolutamente evidente a tutti che la situazione di stallo continuerà almeno fino alla prossima elezione di un nuovo presidente della Toscana fissata per il prossimo 20 settembre.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho subito approfittato di un mese intero di pace e relax inaspettati e la <a rel="noreferrer noopener" href="https://www.gaia-gis.it/fossil/libspatialite/index" target="_blank">Release Candidate of SpatiaLite 5.0..0 </a>è finalmente pronta.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non ho assolutamente idea del futuro; la "<em>guerra degli autobus toscana"</em> può facilmente ricominciare ancora una volta nelle prossime settimane, ogni possibile previsione è semplicemente impossibile.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per ora sono abbastanza soddisfatto per essere stato in grado di raggiungere un punto così critico ed un traguardo tanto atteso.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>… e questa è la fine della storia (almeno, per ora)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"right"} -->
<p class="has-text-align-right">Alessandro Furieri</p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/d33757977570c555.png" alt="Software libero e sostenibilità: la storia di SpatiaLite e Alessandro Furieri" /></figure>
<figure><img src="/assets/images/medium/0bad4a496e806e35.jpg" alt="Software libero e sostenibilità: la storia di SpatiaLite e Alessandro Furieri" /></figure>
<p><a href="https://medium.com/p/19b5993e1b83">Versione originale su Medium</a></p>
