---
layout: post
title: "Perché OpenStreetMap è in guai seri"
date: "2018-02-18 10:18:28"
permalink: "/perche-openstreetmap-e-in-guai-seri/"
original_url: "https://de.straba.us/perche-openstreetmap-e-in-guai-seri/"
render_with_liquid: false
categories:
  - "opendata"
  - "openstreetmap"
tags:
  - "critiche"
  - "futuro"
  - "openstreetmap"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2018/02/Openstreetmap_logo.svg_.png" alt="Perché OpenStreetMap è in guai seri" /></figure>

questo post è la traduzione in italiano dell'articolo "<a href="https://blog.emacsen.net/blog/2018/02/16/osm-is-in-trouble/">Why OpenStreetMap is in Serious Trouble</a>" di Serge Wroclawski

<hr />

<h1>Perché OpenStreetMap è in guai seri</h1>

Sono stato per lungo tempo collaboratore di OpenStreetMap e per molto tempo ho promosso OpenStreetMap, ma il progetto si è bloccato mentre il mondo della mappatura proprietaria ha continuato a migliorare la qualità dei dati. Per quelli di noi che si preoccupano di open data, questo è un problema.
In questo articolo, esploro i motivi per cui ritengo che OSM sia in fase di stallo, così come descrivo delle soluzioni per riportare il progetto in carreggiata.

Sono stato un contributore al progetto OpenStreetMap dal 2008 fino a circa il 2016. Ho dedicato molta energia al progetto.
In quel periodo ho mappato, organizzato mapping party in due città, contribuito alla creazione di <a href="https://www.openstreetmap.us/">OpenStreetMap US</a>  - una organizzazione no-profit dedicata a OpenStreetMap negli Stati Uniti, tenuto conferenze su OpenStreetMap, contribuito al codice di OpenStreetMap.org, fatto da mentor a due studenti per il Google Summer of Code, lanciato un gruppo di lavoro dedicato all'importazione di dati in OpenStreetMap negli Stati Uniti, creato e coordinato diversi bot di verifica dei dati negli Stati Uniti, moderato la pagina Reddit <a href="https://reddit.com/r/openstreetmap">r/OpenStreetMap</a> e sono stato membro Data Working Group, che mi ha dato crescenti privilegi (sia politicamente che tecnicamente) per il progetto.
Ci sono alcune parti di OpenStreetMap in cui non ho avuto alcun coinvolgimento diretto o indiretto.

Sono anche l'autore di un articolo intitolato <a href="https://blog.emacsen.net/blog/2014/01/04/why-the-world-needs-openstreetmap/">Why the World Needs OpenStreetMap</a>, che è apparso su media importanti come The Guardian Online e Gizmodo, è stato due volte in prima pagina su Hacker News ed è stato <a href="http://blog.spaziogis.it/2014/01/10/perche-abbiamo-bisogno-di-openstreetmap/">tradotto </a>in almeno quattro lingue diverse.
Ero un fiero sostenitore di OpenStreetMap!

<em>Prima di criticare il progetto, voglio affermare con enfasi che continuo a credere con tutto il cuore nei principi fondamentali di OpenStreetMap.</em>
Abbiamo bisogno di un dataset geografico libero (Free as in Freedom) tanto quanto oggi come in passato.
Quando ho scritto il mio articolo su OSM nel 2012, le auto a guida autonoma e altri servizi erano ancora un sogno
Oggi l'importanza di avere un dataset geografico altamente preciso e gratuito è più importante che mai e sostengo coloro che lavorano per realizzarlo.

Detto questo, mentre credo ancora negli obiettivi di OpenStreetMap, ritengo che il progetto OpenStreetMap, allo stato attuale, non è in grado di adempiere questa missione a causa di scarse decisioni tecniche, politiche e di un generale malessere nel progetto.
In questo articolo descriverò dove credo che OpenStreetMap abbia sbagliato.
È del tutto possibile che OSM riformerà e affronterà gli ostacoli al suo successo - e spero che lo faccia.
Abbiamo bisogno di un dataset geografico libero (Free as in Freedom).

Questo post non è un elenco completo di tutti i problemi del progetto. Ci sono solo quelli che ho trovato, che influenzano direttamente il successo del progetto e che non sono stato in grado di affrontare nel mio tempo sul progetto

<h2>Quando il mondo ha bisogno di una mappa, dagli un database</h2>

Il primo problema che sento è che la Fondazione OpenStreetMap considera la missione del progetto quella di fornire al mondo un database geografico, ma non i servizi geografici.
OSM offre alle persone gli strumenti per creare la propria mappa invece che offrire loro una soluzione semplice e immediata.
Fornire la possibilità per persone e organizzazioni di creare la propria mappa può funzionare bene, ma scoraggia le organizzazioni di piccole e medie dimensioni dall'utilizzo di OSM e quindi nell'impegnarsi nel progetto. Ed anche se usano i nostri dati, il loro coinvolgimento è attraverso terze parti, invece che direttamente con noi.

Quando vai su <a href="http://www.openstreetmap.org">OpenStreetMap.org</a>, vedi una mappa e alcune funzioni extra, come una finestra di ricerca, insieme ad alcuni pulsanti come "<a href="https://www.openstreetmap.org/login?referer=%2F">Accedi</a>" e "<a href="https://www.openstreetmap.org/edit">Modifica</a>". Questo fa presumere che OpenStreetMap sia una mappa, come Google Maps o altri progetti di mappe, ma mentre c'è una mappa su OpenStreetMap.org, OpenStreetMap non vuole che venga usata. Invece, quello che si vuole è che vengano usate le informazioni di OpenStreetMap per creare mappe personalizzate o trovare qualcuno che crei la mappa per te.

<em>Se lo trovi strano o confuso, sappi che non sei il solo.</em>

Una mappa non è altro che una visualizzazione di una raccolta di dati. Possiamo capirlo in termini di geometria. Immaginiamo un negozio di mobili chiamato Mobili di Frida. La nostra mappa è un semplice piano bidimensionale, proprio come lo avevamo in classe per le lezioni di geografia, e si può quindi individuare il negozio nella posizione 10,10. Potremmo anche immaginare una strada dal nome Main Street che va dalla posizione 2,9 fino alla 15,9.

La posizione del negozio e la strada sono fatti geografici, ma se volessimo rappresentare questi dati visivamente, allora dobbiamo fare uso di una mappa. Dovendo decidere di rappresentare la strada, cosa sceglieremo? Una semplice linea o qualcosa di più simile ad una strada? Quanto deve essere larga la linea? Di quale colore? Dove va messo nome della strada? Seguendo la linea, o al suo fianco, o in qualche altra posizione?. E il negozio lo vogliamo rappresentare come un punto o con una icona?

Anni fa, i creatori di mappe gestivano questo processo manualmente. Con i computer questo processo (chiamato rendering) ora avviene automaticamente e vanno prese molte decisioni su come il rendering deve avvenire. Va scelto cosa va rappresentato nel contesto in cui la mappa sarà usata, le convenzioni locali o più semplicemente definire come dovrà essere mantenuto lo stile della mappa dall'organizzazione che ne fa uso.

Tutto ciò non interessa alla maggior parte della persone. La maggior parte vuole avere solo una mappa. OpenStreetMap ha una mappa sul suo sito web ma scoraggia il suo utilizzo da parte di terzi. Preferisce invece affinché gli utenti trovino un servizio commerciale che offra mappe basati su suoi dati oppure che siano i singoli a svilupparsi la soluzioni.

I leader del progetto affermano questo perché vogliono che le persone, usando OpenStreetMap, capiscano la differenza tra i dati geografici e la loro rappresentazione visiva e vogliono incoraggiare un ecosistema di un libero mercato di fornitori di mappe. C'è anche da tenere presente però che anche molte delle persone che spingono per questa separazione vendono a loro volta servizi di mappe commerciali. Più avanti nell'articolo darò maggiori dettagli in merito a questo conflitto di interessi.

<h3>Politiche di riuso non chiare</h3>

Ho precedentemente detto che OpenStreetMap scoraggia l'uso delle sue mappe su altri siti web. Lo fa attraverso delle restrizioni tecniche di riuso. Come funzionano queste restrizioni è una questione abbastanza semplice. Il servizio è concesso ad una persona o una organizzazione attraverso una certa quantità. La quantità dipende da alcune variabili come il numero di richieste di mappe, o dalla larghezza di banda fornita, ecc.. In OpenStreetMap questo concetto è completamente diverso in quanto viene permesso l'uso gratuito della mappa ma allo stesso tempo viene scoraggiato. Non è concesso ad ogni singola applicazione che si interfaccia alla mappa di OpenStreetMap di andare oltre il 5% della larghezza della banda disponibile. Questa politica è bizzarra a diversi livelli.

Per spiegare questa ambiguità userò una metafora. Immaginiamo che io sia un produttore di gelato e che abbia esposto la mia ricetta per creare il gelato fuori dalla porta suggerendo a chiunque di prenderne riferimento per farsi il proprio gelato. Allo stesso tempo però offro assaggi gratuiti da consumare a casa mia, mettendo però sulla porta di casa un ulteriore cartello che recita "Per favore non chiedetemi assaggi gratuiti". Succede però che, quando qualcuno entra e chiede un assaggio, io lo offro volentieri. Questa mia disponibilità nell'offrire gelato gratis viene condivisa con chiunque. Ora succede che, Fred - un fan del mio gelato - comincia ad invitare tutti i suoi amici per passare da casa mia a mangiare il gelato ed io continuo a distribuire il gelato gratis a chiunque lo chieda. L'entusiasmo di Fred non si ferma e continua ad invitare sempre più persone a casa mia fino a che sarò costretto a dover chiudere l'accesso.

Quello che dovrebbe accadere solitamente è che io invito Fred a dire di smettere che i suoi amici hanno mangiato troppo gelato gratis, invece, in questo caso, sarò io a contattare ogni singolo amico. 
Ma quale è il numero massimo di persone che posso servire?  La risposta per OpenStreetMap è oltre il cinque percento della quantità totale di gelato gratuito che ho distribuito quel giorno. Dato che Fred non avrà mai idea di quante persone ho servito, quindi l'unica cosa che può fare alla fine è quella di non portare più persone a casa mia.

Questa metafora funziona per capire il problema: ciascun singolo servizio non ha idea di cosa stanno gli altri. Non c'è modo di sapere quante altre applicazioni hanno fatto richieste di mappe. Inoltre, dal momento che i servizi e le applicazioni migliori cambieranno nel tempo, il tutto potrebbe andare bene un giorno e male il successivo. Nuovamente, non c'è modo di saperlo. Inoltre, quando si supera il limiti massimo di riuso del servizio, ad ottenere un messaggio poco simpatico sulla mancata disponibilità sono gli utenti della tua applicazione e non tu.

OpenStreetMap potrebbe creare una politica di utilizzo standard, specificando esattamente quanto è consentito l'uso gratuito. Potrebbe anche scegliere di creare "abbonamenti premium" e incoraggiare le persone a utilizzare il proprio servizio di tile (map rendering), ma al momento, usare le tile di OSM senza passare per una terza parte è difficile.

<h3>Un pessimo geocoder</h3>

Il geocoding è quando si scrive il nome di un indirizzo, e sulla mappa si ottiene la posizione. Quando, invece, il tuo GPS o il tuo telefono sanno dove ti trovi e restituiscono le informazioni di un edificio o un indirizzo, si è davanti al ceocoding inverso. <a href="http://nominatim.openstreetmap.org/">Nominatim</a> è il geocoder presente su OpenStreetMap.org ed è terribile.

Nominatim <a href="https://wiki.openstreetmap.org/wiki/Search_engines">non è l'unico geocoder</a> per OpenStreetMap. Così come è possibile creare diversi rendering di una mappa, è possibile scrivere un proprio geocoder o utilizzare un servizio di geocodifica commerciale. Solo che Nominatim è il geocoder più popolare disponibile per OpenStreetMap, al punto che è usato sul sito web, inoltre il servizio è elencato su OpenStreetMap.org <a href="https://wiki.openstreetmap.org/wiki/API_v0.6">sotto le sue API</a>.

In sua difesa, lasciatemi dire che il geocoding è difficile e lo stesso Nominatim è piuttosto complesso, è quasi una impresa di ingegneria. Gli sviluppatori che ci lavorano si sono impegnati molto nello scrivere Nominatim. Il problema è che tale software deve essere mantenuto o talvolta sostituito completamente per essere utile. Durante il lavoro di manutenzione di Nominatim, non è stato dato il tempo o l'attenzione di cui ha bisogno e merita.

Per capire perché Nominatim è pessimo, si deve comprendere come la maggior parte delle persone usa un geocoder. Solitamente cercano una attività commerciale o qualcosa di vago come "<em>graffette Springfield centro</em>". Quella semplice domanda di tre lettere richiede molta analisi. Infatti si sta chiedendo al computer di sapere cosa è <em>Springfield</em> e di limitare la richiesta a quell'area. Inoltre, chiede anche di limitarla a (o vicino a!) una area chiamata "<em>centro</em>" e, infine, di mostrare i risultati solo per "<em>graffette</em>".

Nomintim non è in grado di rispondere a tali domande. Riesce a malapena a gestire semplici query di indirizzo, come "<em>123 Main Street</em>". Ad esempio, se inserisco in Nominatim un indirizzo vicino alla mia posizione a New York, potrei avere come risultato qualcosa in Iowa. Risultato errato che Nominatim, per una qualche ragione, sembra più propenso a mostrarmi.

Inoltre, se provo a specificare la mia posizione aggiungendo "<em>Manhattan</em>", quello che accade - al momento che sto scrivendo questo articolo - è che Nominatim mi proporrà che intendo Manhattan in Kansas, ignorando sia la prominenza di associare Manhattan a New York sia il fatto che la query stessa provenga da New York City. Peggio ancora, non è possibile cercare le intersezioni. Se digito "<em>53esima e sesta, New York City</em>" non lo capisce. Anche se provo a perfezionare la ricerca come "<em>53rd Street e 6th Avenue, New York City</em>", non funziona. Le intersezioni non sono indirizzi. Nominatim non riconosce negozi "vicini" o categorie come "ristorante". I risultati che ne derivano sono spesso irrilevanti e il servizio è piuttosto lento.

Esistono altri geocoder per OSM, come <a href="https://github.com/pelias/pelias">Pelias</a> e <a href="https://github.com/komoot/photon">Photon</a>, ma solo Nominatim viene istanziato e supportato da OpenStreetMap Foundation.

<h2>Nessun modello di moderazione/revisione</h2>

Uno dei problemi tecnici più significativi con OSM è la mancanza di un modello di revisione, cioè di una modifica alla mappa da allestire e quindi rivista prima dell'applicazione. Non avere questa funzionalità ha causato diversi problemi in tutto il sistema. Di alcuni di questi ne parlo qui.

<h3>Il problema del nuovo mappatore</h3>

L'inserimento di dati su OSM può essere difficile per un principiante e, poiché il progetto ha cercato di attirare nuovi mappatori (contributori), ci imbattiamo spesso in persone che hanno appena mappato in modo errato. Sfortunatamente, a causa del fatto che il modello dei dati di OSM non include una fase di revisione, le modifiche errate vengono caricate ugualmente sulla mappa e spesso lasciate non rilevabili, e se poi vengono anche rimosse, chi le ha inserite non sa il motivo.

Dare la possibilità per un mappatore di apportare modifiche e quindi rivedere quelle modifiche avrebbe potuto potenzialmente lasciare la mappa con dati di qualità più elevata attraverso una sorta di modello di mentorship tra nuovi contributori e quelli più esperti.

Speravo che questo sarebbe migliorato quando ho proposto una funzionalità collocata in OpenStreetMap chiamata "Commenti al changeset", in cui gli utenti potevano lasciare un feedback per le modifiche reciproche. Sfortunatamente, questa funzione non è stata usata da molti in maniera costruttiva, ed è stato un disastro.

<h3>Senza moderazione, i bot sono difficili da sviluppare</h3>

I bot potrebbero essere molto utili in OSM nel trovare errori causati da fonti di dati imprecise o modificando errori. Ad esempio, se c'era una strada denominata "Main Str<em>ee</em>t" collegata a un'altra strada chiamata "Main Str<em>e</em>t", si tratta molto probabilmente un errore di ortografia e dovrebbe essere corretta. Ma sarebbe una buona cosa se i cambiamenti fossero prima esaminati da una persona.

Dato che OSM non fornisce alcun meccanismo per le modifiche revisionate, questi tipi di modifiche suggerite non esistono. Entrambe le modifiche ai bot vengono eseguite senza supervisione, il che potrebbe portare a errori, oppure non vengono affatto eseguiti e il progetto non ne fa uso.

<h3>Le importazioni dei dati non sono semplici</h3>

Le importazioni sono impegnative per una serie di motivi, ma avere un modello di moderazione o revisione renderebbe le cose molto più semplici e consentirebbe la messa in atto delle modifiche. L'incapacità di mettere in scena e rivedere enormi modifiche alla mappa ha causato problemi in passato e molte importazioni fatte male sono passate inosservate. Se il progetto avesse un sistema che effettua revisione alle modifiche prima dell'importazione, quelle sbagliate potrebbero essere individuate prima che comincino a causare problemi.

OpenStreetMap manca anche di sistemi di staging, che sono invece stati scritti per altri progetti correlati. Attualmente questi sistemi richiedono spesso che i contributori inseriscano manualmente queste modifiche. Questo processo richiede molto lavoro e rende alcune importazioni così difficili da morire prima che vengano iniziate.

<h3>Il vandalismo è difficile da gestire</h3>

Come Wikipedia, OpenStreetMap ha persone che intenzionalmente vandalizzano il progetto. I vandalismi avvengono per vari motivi. Alcuni vandali appartengono alla razza di "troll di Internet" che amano causare problemi. In altri casi ci sono aziende che vogliono vedere qualcosa sulla mappa nonostante non si abbia il consenso della comunità e modificano la mappa in base alle proprie esigenze nonostante la contrarietà del progetto. A volte i mappatori usano OpenStreetMap per fare dichiarazioni politiche come nel caso dei territori contestati, e a volte, un gioco basato su dati geospaziali come Pokemon Go, usa OpenStreetMap per generare i suoi dati con la conseguenza che i giocatori scopriranno che possono cambiare la mappa a proprio vantaggio. 
Qualunque sia la ragione, OpenStreetMap ha dei vandali.

Il vandalismo in OpenStreetMap è difficile da gestire perché senza un sistema di moderazione, la prima azione per sistemare le cose è quella di "ripulire" invece che prevenire. Individuare atti di vandalismo è difficile. Diverse persone hanno creato strumenti di monitoraggio per cercare di trovare modifiche e importazioni problematiche. Io ero una di quelle.

Anche se vengono rilevate modifiche problematiche, rimuoverle significa apportare ulteriori modifiche. La storia del progetto è disseminata di molte piccole modifiche che sono lì solo per rimuovere alcune modifiche precedenti. Peggio ancora, se il vandalismo non viene rilevato in anticipo, qualcun altro potrebbe modificare un oggetto precedentemente vandalizzato, creando una situazione in cui uno strumento o una persona dovrebbero separare le buone modifiche dal cattivo, un processo manuale che può essere laborioso.

Uno strumento di moderazione impedirebbe molto di questo. Molti vandali scoprirebbero velocemente che il loro lavoro non entra nel database e quindi cesserebbero l'attività. Eventuali modifiche malevoli in corso, potrebbero essere sgamante in fretta prima che diventino un problema.

<h3> Gli strumenti esterni sono difficili</h3>

Uno dei miei contributi a OpenStreetMap è stato nel migliorare <a href="http://maproulette.org/">MapRoutlette</a>, uno strumento che aiuta a trovare problemi in OpenStreetMap e che offre agli utenti l'opportunità di risolverli. Una funzione che volevamo in MapRoutlette era quella di poter presentare agli utenti semplici domande tipo "Sì/No". Sfortunatamente, anche se non impossibile, questo risultato complicato in OpenStreetMap. Se queste le modifiche invece passassero in una coda di moderazione, in alcuni casi avremmo potuto essere più fiduciosi e probabilmente non nemmeno necessari per MapRoutlette.

Molti sviluppatori volevano risolvere questo stesso problema, offrendo la possibilità di aggiungere modifiche utili ma anonime al progetto. Ma dal momento che OpenStreetMap richiede che ogni modifica venga fatta da un singolo utente, piuttosto che da un account aziendale o bot, la barriera di accesso per i mappatori casuali è spesso troppo alta.

<h2>La mancanza di layer in OpenStretMap</h2>

La maggior parte dei database geografici utilizza un approccio a più livelli (layer) per rappresentare diverse funzionalità. Uno layer può rappresentare dei limiti politici, un altro può rappresentare la rete stradale, un terzo può rappresentare le caratteristiche dell'acqua e così via.

Invece dei livelli tradizionali, OpenStreetMap sceglie di utilizzare un singolo livello e quindi i tag (coppie chiave/valore) su singoli oggetti. All'inizio sembrava una buona idea, ma alla fine finisce per creare una grande confusione.

<h3>Gli strumenti sono più difficili da scrivere</h3>

Immaginate di voler scrivere un editor per OpenStreetMap per gestire solo la rete stradale. Questo compito appare facile in quanto dovremmo solo estrarre le funzionalità che corrispondono a tag come strada, come <code>highway=*</code>. Purtroppo non lo è per niente.

Innanzitutto, un editor che modifica queste caratteristiche stradali non deve solo rilevare le strade (<em>ways</em> nella terminologia OSM) ma anche i punti (<em>node</em>) che compongono quella strada. In secondo luogo, se la strada è particolarmente complicata, può essere rappresentata come una <em>relation</em>. 
Modificare con editor tematici richiederebbe molto tempo ma sarebbe molto più semplice.

Il problema è che non lo è in quanto, una geometria che descrive una strada, potrebbe giocare un doppio ruolo, come quello di un confine o di qualsiasi altra caratteristica. Ad esempio, la modifica delle strade, potrebbe inavvertitamente comportare la modifica di un confine fra Stati.

Avere funzioni cartografiche che rappresentano un significato così radicalmente diverso impone a entrambi i produttori di strumenti e al singolo editor che lavora su OSM di essere a conoscenza di eventuali modifiche che possono avere conseguenze che vanno al di là di quello che pensano di fare.

<h3>Le importazioni sono difficili senza i layer</h3>

Una delle chiavi del movimento del software Free e Open Source è stato il riuso del codice, l'idea che è possibile integrare software da diverse fonti e farlo funzionare perfettamente insieme. Si potrebbe pensare che sarebbe più o meno lo stesso con i dati geografici, ma a causa della mancanza di layer (livelli), è molto difficile importare dati in OpenStreetMap.

Senza layer, è difficile estrarre un'area specifica per una funzione e analizzarla o sostituirla. Invece, a causa del suo complesso sistema di etichettatura, deve essere analizzato nel suo complesso. Le importazioni sono possibili ma sono rese più difficili causa la mancanza dei livelli che renderebbero più semplice il lavoro di analisi dei dati.

<h2>Nessun supporto per osservazioni o altri tipi di dati</h2>

Uno dei principi fondamenti di OpenStreetMap è che memorizza solo dati permanenti verificabili da chiunque. Le uniche eccezioni a questo sono i confini politici - e anche queste eccezioni possono essere problematiche. Sfortunatamente, questo presenta anche un problema con terze parti che vogliono usare OpenStreetMap per attività al di fuori dell'ambito del progetto.

Prendiamo ad esempio Pokemon Go. 
Pokemon Go è un gioco di realtà aumentata in cui le caratteristiche della vita reale sono collegate a creature immaginarie in cui il giocatore deve combatterle e raccoglierle. La frequenza e la posizione di dove appaiono queste creature si basa su varie caratteristiche della mappa.

I giocatori di Pokemon Go volevano usare OpenStreetMap per documentare la posizione delle creature per rendere più facile per gli altri giocatori trovare creature rare e migliorare la loro collezione. La raccolta di questo tipo di dato non è prevista in OpenStreetMap. Lo stesso vale, ad esempio, per chi si interessa di bird watching. Raccoglie i dati dei luoghi dove sono passati gli uccelli appare un dato interessante, ma non è concesso in OpenStreetMap in quanto non rappresenta luoghi permanenti. Pertanto, chi ha inserito questi tipi di dati, si è visto subito rimuoverli.

Non si deve per forza pensare a qualcosa di banale come un gioco: questi livelli possono consentire la raccolta anche di dati più particolari come buche, telecamere a luci infrarosse o anche avvistamenti di uccelli o animali. Questo renderebbe il progetto utile a molte più persone.

<h2>Mancanza di ID permanenti</h2>

In qualsiasi database, gli oggetti hanno un campo ID, di solito un valore numerico per cercare il record. OpenStreetMap non è diverso e ogni oggetto all'interno del sua banca dati ha un campo ID. Sfortunatamente, i campi ID rappresentano gli oggetti di basso livello piuttosto che qualsiasi altro concetto di alto livello. Questo crea un enorme problema. 
Questa idea di un concetto di alto livello la definisco "oggetto concettuale" ed ora vi spiegherò come la mancanza di ID permanenti su questi tipi di oggetti è prolematica.

<h3>Immersione profonda</h3>

Per capire perché la mancanza di ID permanenti è un problema, dobbiamo immergerci un po' più a fondo su come funziona OpenStreetMap. Sebbene molti di questi dettagli di basso livello vanno oltre lo scopo di questo articolo, presenterò le basi su come OSM memorizza le informazioni. Un punto in OSM è chiamato <em><a href="https://wiki.openstreetmap.org/wiki/Node">node</a></em> e ogni node ha un ID. I punti possono essere raccolti in una linea, e quella linea è chiamata <em><a href="https://wiki.openstreetmap.org/wiki/Way">way</a></em>. Insiemi di node e way possono essere combinati in un oggetto più complesso chiamato <em>relation</em>. Una <a href="https://wiki.openstreetmap.org/wiki/Relation">relation</a> può contenere anche altre relation. 
Pertanto node, way e relation hanno tutti i campi ID.

Per capire meglio il problema immaginiamo un edificio con ogni sua proprietà. L'edificio si trova in una determinata posizione, ha una dimensione, una forma e un indirizzo specifico. Se è abbastanza grande, potrebbe avere più indirizzi. Sono tante proprietà, ma il concetto di edificio appare unico. In OpenStreetMap, un edificio può essere rappresentato da un singolo node, che a sua volta rappresenta l'indirizzo. Oppure da una way che rappresenta il contorno dell'edificio, oppure da una relation che comprende i dettagli delle varie altezze dell'edificio, livelli e tipi di tetto. Il problema è che se ho necessità di estrarre un edificio, non esiste un modo semplice per farlo in quanto dovrò cercare tutte caratteristiche dell'edificio, come il suo indirizzo o la sua posizione.

<h3>La perdita della storia delle modifiche</h3>

Per quanto strano possa sembrare, in OpenStreetMap è possibile trascinare un nodo da una parte all'altra del Mondo e utilizzarlo per qualsiasi altro scopo. Ad esempio, è possibile prendere una parte di una casa, spostarla in un altro continente e utilizzarla come parte di una strada. Anche se questo è molto insolito non è vietato. Se vado a verificare la storia del nodo, lo vedrò muoversi nello spazio.
OpenStreetMap quindi mantiene la storia dell'elemento (= il nodo) ma non mantiene la storia concettuale di un oggetto (era una casa).

Ad esempio, se iniziamo a rappresentare un edificio come un singolo nodo, quando poi lo evolviamo da una relazione complessa, questo non rifletterà nella cronologia dell'oggetto e quindi le modifiche nel tempo andranno perse.

Gli ID permanenti su oggetti concettuali potrebbero essere d'aiuto fornendo una cronologia di ciò che rappresentano i dati invece che i dati stessi.

<h3>Importazione di conflazione</h3>

Tra gli altri problemi, il fatto di non avere un ID permanente per un oggetto concettuale, fa si che si rischi di confondere gli oggetti in altri dataset. 
Ad esempio, se viene fornito un dataset con gli edifici da una pubblica amministrazione locale, dove, ciascun edificio ha ID. A questo punto vogliamo confrontare i singoli edifici con quelli presenti in OpenStreetMap attraverso gli ID del dataset. Per fare questa operazione abbiamo due scelte: o creiamo un nuovo identificatore (chiave) basato sull'insieme degli ID degli oggetti di OpenStreetMap che compongono l'oggetto concettuale, oppure dovremmo utilizzare gli identificativi del dataset che ci ha dato la pubblica amministrazione all'interno di OpenStreetMap.
Nessuna di queste soluzioni sarà quella ottimale.

<h3>È difficile creare connessioni con altri set di dati</h3>

Molte persone hanno immaginato progetti che si collegano a OpenStreetMap per offrire recensioni o altri dati, ma senza un ID permanente, questo non è fattibile. Gli oggetti in OpenStreetMap possono contenere alcuni dati come il tipo di cucina o gli orari di apertura insieme al nome e all'indirizzo, ma il sito delle recensioni dovrà essere in grado di avere un collegamento permanente agli oggetti in OSM, che al momento non è possibile.

<h2>Nessuno standard nella rappresentazione dei dati</h2>

In OpenStreetMap, non ci sono standard formali nel progetto per la rappresentazione delle caratteristiche sulla mappa. Prendiamo l'esempio di un marciapiede. I marciapiedi sono cose utili da avere su una mappa perché ci informano se la strada è pedonale. A volte i marciapiedi sono rappresentati da un attributo sulla strada stessa. A volte i marciapiedi sono rappresentati come una linea (way) che corre parallela alla strada. A volte queste way hanno il nome della strada come nome proprio e, a volte, non hanno alcun nome.

Se sei un mappatore, questo è fonte di confusione, dal momento che non esiste un modo standard per mappare le cose. Se stai cercando di creare strumenti per lavorare con OpenStreetMap, la mancanza di standardizzazione dei dati nel progetto rende difficile lavorare nel suo insieme.

Esiste un processo informale per la rappresentazione dei dati, fatto principalmente sul <a href="https://wiki.openstreetmap.org/wiki/Map_Features">wiki</a>, ma poiché questo non è formalmente applicato, e il cambiamento dei dati in massa può essere considerato una forma di vandalismo, chi userà poi i dati si trova costretto a scrivere strumenti che accettano molte rappresentazioni degli stessi dati.

<h2>Le API evolvono lentamente</h2>

Al momento in cui sto scrivendo questo articolo, la versione delle API ufficiali di OpenStreetMap è la 0.6. Le API non hanno cambiato versione dal 2009. Avere delle API stabili può essere una buona cosa per un progetto software maturo, nel caso di OpenStreetMap però, questo è più un riflesso della cattiva gestione del progetto.

Le API fanno parte di un protocollo che consente ad un client di comunicare con un server o ai server di comunicare tra loro. In questo caso, stiamo parlando delle API di editing di OpenStreetMap utilizzate tra OSM e i software di editing.

Le API di editing di OpenStreetMap sono molto potenti e complete, ma ha alcune scelte progettuali che avevano senso nel 2009 ora sono state largamente sostituite da migliori scelte. Si tratta di piccole modifiche, come il formato di serializzazione dei dati, o di modifiche più significative come la rappresentazione dei dati interni.

Ad esempio, nel 2012 sono state fatte diverse proposte per creare un nuovo tipo di dati chiamato <em>area</em> che aiuterebbe a semplificare di molto la rappresentazione di determinati tipi di caratteristiche geografiche. Nonostante questo e l'offerta di assistenza tecnica, il progetto non ha fatto progressi significativi su questo o su altri importanti problemi tecnici.

<h2>OpenStreetMap ha gatekeeper nascosti</h2>

A seguito della sezione precedente, dobbiamo chiederci perché il progetto non ha compiuto ulteriori progressi tecnici, e la risposta è che purtroppo le chiavi del castello OSM non sono in gran parte nelle mani di OpenStreetMap Foundation, ma nelle mani di uno o due persone che fungono da guardiani del codice sorgente e dell'infrastruttura del progetto.

Sebbene non sia raro che un progetto software Open Source abbia un "dittatore benevolo per la vita", questi ruoli vengono spesso sostituiti da una struttura più formale man mano che crescono le esigenze del progetto. Nel caso di OpenStreetMap, esiste un'entità formale proprietaria dei dati, chiamata OpenStreetMap Foundation. Ma allo stesso tempo, le scelte finali per il sito web, il database geografico e l'infrastruttura non sono sotto il controllo diretto della Fondazione, ma sono gestiti da una persona, che (pur essendo amichevole) spazia dallo scettico a all'apertamente ostile alle modifiche

Come ex professionista di amministratore di sistemi, faccio riferimento a questa categoria di persone. 
Solitamente le esigenze di questa categoria devono essere bilanciati dalle necessità generali del progetto in modo che possa progredire e mantenere lo slancio per avere degli utenti felici e impegnati.

Non è questo il caso di OpenStreetMap e, il tutto, va a discapito del progetto.

<h2>La cultura della OpenStreetMap Foundation</h2>

È facile paragonare la OpenStreetMap Foundation (OSMF) alla Wikimedia Foundation, ma a parte la visione ad alto livello di essere entrambi titolari di dati liberi, i due progetti sono gestiti in modo radicalmente diverso.
Wikimedia Foundation è un'organizzazione multi-milionaria che gestisce oltre a Wikipedia anche altri progetti, come i meno conosciuti Wikidata e Wikinews. Questi progetti contribuiscono alla vasta missione dell'organizzazione di fornire informazioni di alta qualità al mondo. Per seguire questa missione, Wikimedia spende una grande quantità di denaro per la sua infrastruttura, oltre a dirigere e finanziare lo sviluppo di nuovi strumenti ad uso della comunità.

D'altra OpenStreetMap si basa principalmente su servizi di hosting donati e funziona con un budget ridotto. Non ha dipendenti retribuiti e non finanzia né dirige lo sviluppo della sua base di software.

Ciò ha portato alcune organizzazioni a cercare di prendere il sopravvento e migliorare la situazione, compresa una organizzazione che ho aiutato a fondare, la OpenStreetMap US, (organizzazione no profit he si concentra sulla promozione di OpenStreetMap negli Stati Uniti). 
Tra gli obiettivi che avevamo in OpenStreetMap US c'era quello di colmare le lacune di sviluppo e mappatura delle risorse da parte dell'OSMF. Questo ci è riuscito parzialmente a causa della frammentazione delle organizzazioni e abbiamo avuto meno successo di quanto sperassimo.

Oltre a OpenStreetMap US ed altri "chapter" in tutto il mondo, esiste l'organizzazione non-governativa Humanitarian OpenStreetMap Team (HOT) la cui missione è contribuire a promuovere l'OSM nelle nazioni in via di sviluppo e mobilitare la comunità OSM durante le crisi umanitarie. Non vi è alcun motivo per cui HOT debba essere una organizzazione indipendente al di là della mancanza di volontà da parte dell'OSMF di espandere il proprio ruolo. Anche Steve Coast, uno dei fondatori di OpenStreetMap, ha visto e cercato di risolvere questo problema con la sua organizzazione, "Map Club".

La domanda che viene spontanea è chiedersi perché la leadership di OpenStreetMap assume le posizioni che ha, nonostante l'evidente necessità di cambiamento. Le risposte a mio avviso sono il gli aspetti commerciali nel progetto, insieme al desiderio culturale di conservare la sensazione dei primi giorni del progetto.

Mentre ci sono aziende costruite attorno al motore di Wikipedia (il server Mediawiki), non ci sono molte aziende che fanno soldi dal riconfezionamento di Wikipedia. Il progetto OpenStreetMap, d'altra parte, è inserita in ha un ecosistema commerciale dove la maggior parte dal business è creazione di mappe personalizzate per i clienti.

Molti dei fondatori del progetto, così come altri, hanno lanciato servizi commerciali basati su OSM. Sfortunatamente, ciò crea un incentivo a mantenere il progetto piccolo e limitato nel campo di applicazioni per tracciare il divario con i servizi commerciali che si possono vendere. Ciò vale anche per l'HOT, che ha un incentivo finanziario per ottenere sovvenzioni per se stesso e non avere quelle risorse destinate all'OSMF.

Oltre a questi conflitti di interesse c'è il desiderio di mantenere il progetto di portata limitata dai membri senior della comunità che vedono il progetto come un hobby della mappatura e vogliono evitare le importazioni o altre attività che potrebbero essere viste come la rimozione del fattore umano dal progetto. Vedono anche i pericoli insiti nella creazione di una struttura organizzativa che richiede denaro e teme che creerebbe un ciclo perenne di dover trovare i donatori semplicemente per supportare un livello di gestione.

Non sono d'accordo e vedo la mancanza di una struttura più attiva da parte dell'OSMF come causa del ristagno del progetto e di una significativa influenza commerciale.

<h2>Il mondo è cambiato</h2>

Quando fu lanciato OpenStreetMap, i governi non rilasciarono i loro dati sotto licenze libere. Hanno iniziato a farlo solo <em>perché</em> OSM esiste ora come concorrente. Tuttavia, a causa dei problemi che ho delineato, le importazioni OSM sono difficili e l'aggiornamento delle importazioni, una volta entrati in OSM, è quasi impossibile. Questo è un problema critico per il progetto.

Allo stesso modo, quando è stato lanciato OSM, i droni non erano economici e disponibili. L'intelligenza artificale non era in grado di fare un buon rilevamento visivo delle strade, e le macchine volanti erano ancora fantascienza. Ora tutti questi strumenti esistono, eppure OpenStreetMap è ancora bloccata in gran parte e l'inserimenti di dati avviene per lo più manualmente.

Se OpenStreetMap si basa esclusivamente sulla manodopera non è in grado di lavorare con altri set did ati, la sua qualità nei dati continuerà a diminuire e il progetto alla fine ristagnerà e fallirà.

<h2>Solo i posti di blocco</h2>

L'inizio di questo articolo potrebbe dare l'idea di presentare un elenco completo di tutto ciò che trovo sbagliato in OpenStreetMap. Non lo è. Ho moltre altre preoccupazioni sul progetto. Ho volutao limitare il mio articolo sulle preoccupazioni che ritengo possano fermare l'intero progetto. Ci sarà tempo per risolvere i piccoli problemi se (e solo se) il progetto nel suo complesso evolverà. A quel punto i piccoli problemi di pignoleria saranno comunque irrilevanti.

Spero sinceramente che questo articolo sia un invito all'azione per OpenStreetMap. Ci sono molte persone brillanti e stimolanti nel progetto. Se fossi un gioco di parole, spero che OpenStreetMap ancora una volta trovi la sua <em>strada</em>.