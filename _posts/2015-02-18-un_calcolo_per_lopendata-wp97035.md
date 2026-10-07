---
layout: post
title: "Un \"calcolo\" per l'open data"
date: "2015-02-18 21:54:34"
permalink: "/un_calcolo_per_lopendata/"
original_url: "https://de.straba.us/un_calcolo_per_lopendata/"
render_with_liquid: false
categories:
  - "opendata"
tags:
  - "calcolo"
  - "costi"
  - "formula"
  - "govlab"
  - "opendata"
  - "ricavi"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2015/02/calcolo.png" alt="Un &quot;calcolo&quot; per l&#39;open data" /></figure>

questo articolo è la versione in italiano di libera traduzione da <a href="https://medium.com/@sahuguet/p-b-d-c-1218ee894400">A "calculus" for open data</a> di <a href="https://twitter.com/sahuguet">Arnaud Sahuguet</a> e<a href="https://twitter.com/dsango"> David Sangokoya</a>
---
L'open data crea grandi promesse ed offre vantaggi non ancora sfruttati per i processi decisionali di singoli, pubblico e privato. Tuttavia questi benefici spesso si presentano con costi e rischi nascosti. Prendendo ispirazione dall'articolo "<a href="http://journals.cambridge.org/abstract_S0003055400000125">Una teoria del calcolo del voto</a>", vi presentiamo un modesto tentativo di formalizzare il "calcolo dell'open data" per aiutare i fornitori di dati a prendere questa decisione.

<figure class="wp-caption"><a href="http://bit.ly/1C8zvIL"><img class="wp-image-97043 size-full" src="http://de.straba.us/wp-content/uploads/2015/02/calculus.jpg" alt="calculus real people" width="1024" height="577" /></a> Photo by Andrés Monroy-Hernández/Flickr at http://bit.ly/1C8zvIL</figure>

&nbsp;
<h2>Introduzione</h2>
Il valore, l'impatto e la promessa di rendere i dati accessibili al pubblico hanno spinto i cittadini, le agenzie governative e le imprese ad abbracciare gli open data come un modo per aumentare l'efficienza, promuovere la trasparenza e massimizzare l'utilità.

<em>I dati aperti sono dati che possono essere liberamente utilizzati, riutilizzati e ridistribuiti da chiunque, soggetti eventualmente alla necessità di citarne la fonte e di condividerli con lo stesso tipo di licenza con cui sono stati originariamente rilasciati.</em><a href="http://opendatahandbook.org/it/what-is-open-data/">[Open Data Handbook]</a>

McKinsey stima più di 3mila miliardi di dollari di valore aggiunto a livello globale come risultato dell'open data. Studi su larga scala, come <a href="http://www.opendata500.com/">OpenData500</a> evidenziano un impatto attraverso tutti i settori come energia, prodotti di consumo ed assistenza sanitaria. Più di 40 paesi hanno condiviso più di un milione dataset governativi.  La condivisione di dati di aziende offre vantaggi reciproci al settore pubblico e privato. Es. la <a href="http://blog.uber.com/city-data">partnership </a>di Uber con la Città di Boston, il <a href="http://socialmachines.media.mit.edu/">Laboratory Social Machines</a>e di Twitter e MIT, la <a href="http://www.yelp.com/dataset_challenge">Dataset Challenge di Yelp</a>.

Mentre l'ascesa del movimento open data ha aumentato l'interesse sul tema portando un crescente entusiasmo per liberare il potenziale dei dati aperti, i fornitori di dati non hanno ancora individuato un linguaggio comune per valutare e pesare la decisione per aprirli.

Gli enti pubblici ed i loro funzionari spesso aprono i propri dati come risultato di una pressione top-down (= dall'alto verso il basso) per creare modelli di efficienza, soddisfare le richieste dei cittadini ed aumentare la trasparenza attraverso il numero di dataset rilasciati invece di valutare l'impatto che questi dati possono creare. Spesso non riescono a cogliere i costi nascosti associati all'apertura dei dati e perdono le opportunità per sfruttare le conoscenze delle comunità o di esperti esterni per ottimizzare la condivisione dei dati.

Le aziende, per la maggiore, hanno assunto un atteggiamento a in stile guarda-e-aspetta. Mentre alcune hanno cominciato a condividere dati aziendali per scopi di ricerca o per dare supporto alle decisioni di  pubblica utilità, altri stanno costruendo modelli imprenditoriali usando gli open data delle PA. Visto che i dati sono considerati come una risorsa strategica per le imprese, le aziende fanno molta attenzione a non cadere in in possibili rischi producendo vantaggio alla concorrenza e ad impegnarsi in una attività che presenta nuovi quadri giuridici e normativi.

Gli utenti finali sono motivati a condividere i loro dati. Spesso però non ne sono i veri "proprietari" in quanto i loro dati sono memorizzati e gestiti dalle aziende che ne forniscono il servizio (es. social media). Ed anche quando gli utenti sono proprietari dei dati, nasce la paura di essere spiati dal governo o di ussere al centro di pratiche di marketing delle aziende e, pertanto, questo dissuade a rendere i loro dati più accessibili al pubblico.
<h2>Storie dal campo</h2>
Cominciamo subito con alcuni selezione di esempi  per evidenziare il valore e l'impatto dell'open data e la necessità di un quadro decisionale migliore nel momento in cui si discute della possibilità di aprire i dati.
<h3>Storie di successo e di orrore</h3>
Abbiamo intorno a noi alcune storie di successo e numerosi esempi di open data. Le informazioni sul trasporto pubblico (rese spesso disponibili dalle città attraverso lo standard <a href="https://developers.google.com/transit/gtfs/reference">Google GTFS</a>) fanno risparmiare molto tempo a milioni di persone ogni giorno. Il GPS è alla base dei servizi e prodotti di locazione mobile. Le informazione meteorologiche del <a href="http://www.noaa.gov/">National Oceanic and Atmospheric Administration</a> (NOAA) sono utilizzate dalle aziende che si occupano di meteorologia e dalle assicurazioni come, da esempio, <a href="http://www.weather.com/">The Weather Channel</a> e <a href="http://www.climate.com/">Climate Corporation</a>. La natura aperta dei dati del <a href="http://www.genome.gov/10001772">Project Human Genome</a> ha promosso la collaborazione su larga scala nella decodifica del genoma umano e la creazione di un ecosistema di innovazione tra ricercatori delle università e le aziende private.

Siamo però anche testimoni di storie dell'orrore. Uno dei primi esempi è stato il rilascio dei log di ricerca di AOL nel 2006  a fini accademici. I dati rilasciati contenevano alcune informazioni pubblicamente identificabili (PII - publicly-identifiable information) degli utenti di AOL che hanno così reso possibile risalire alll'identità delle persone ed allo storico delle loro ricerche su internet. Più di recente, <a href="http://chriswhong.com/open-data/foil_nyc_taxi/">il rilascio dei dati relative alle corse in taxi anonimi</a><a href="http://chriswhong.com/open-data/foil_nyc_taxi/">zzati in modo non corretto </a>della New York City Taxi&amp; Limo Commission ha rivelato l'identità dei tassisti, <a href="http://www.fastcompany.com/3036573/fast-feed/nyc-taxi-data-blunder-reveals-which-celebs-dont-tip-and-who-frequents-strip-clubs">i </a><a href="http://www.fastcompany.com/3036573/fast-feed/nyc-taxi-data-blunder-reveals-which-celebs-dont-tip-and-who-frequents-strip-clubs">viaggi di alcune celebrità</a> ed anche l'<a href="http://theiii.org/index.php/997/using-nyc-taxi-data-to-identify-muslim-taxi-drivers/">orientamento religioso di alcuni </a><a href="http://theiii.org/index.php/997/using-nyc-taxi-data-to-identify-muslim-taxi-drivers/">autisti</a>.
<h3>Domande difficili</h3>
Per ciascuno di questi casi, ecco alcune domande a cui è oggi difficile dare una risposta:
<ul>
	<li>Perché i soggetti interessati scelgono di aprire (o non aprire) i loro dati?</li>
	<li>Quali incentivi avrebbero potuto essere messi in atto per incoraggiare (o scoraggiare) l'apertura e la condivisione dei dati?</li>
	<li>Tra le varie leve disponibili, quale è quella da tirare in modo da convincere un fornitore ad aprire i propri dati?</li>
</ul>
<h3>Un calcolo per i dati aperti</h3>
il nostro calcolo ruota intorno ad una semplice equazione:

<span style="font-size: xx-large;">P x B + D&gt; C</span>

dove
<ul>
	<li>P è la probabilità che l'apertura dei dati avrà qualche effetto,</li>
	<li>B è il beneficio che il dataset in questione può ricevere dall'apertura,</li>
	<li>D è l'impatto globale o di ecosistema, e</li>
	<li>C è il costo.</li>
</ul>
Qualsiasi aumento di P,B o D ed una diminuzione di C faranno in modo che l'apertura dei dati porterà a maggiori benefici.

Ora possiamo discutere le variabili ad una ad una e individuare quali sono i fattori che la influenzano nella pratica.
<h3>P per probabilità</h3>
(P) rappresenta la probabilità che l'apertura dei dati genererà potenziali benefici per il proprietario dei dati.

I fattori che fanno salire (P) sono:
<ul>
	<li><b>standard</b> nella pubblicazione dei dati</li>
	<li>una <b>cultura guidata dai dati</b> all'interno del settore pubblico e privato, promossa da offerte educative forti.</li>
	<li>un <b>ecosistema </b>di consumatori di dati, con hacker/sviluppatori che creano prodotti, sistemi di memorizzazione e cura dei dati (es. <a href="http://enigma.io/">Enigma</a>), spazi online dedicati alla scienza dei dati (es. <a href="http://www.kaggle.com/">Kaggle</a>, <a href="http://www.datakind.org/">DataKind</a>, <a href="http://www.bayesimpact.org/">Bayes Impact</a>).</li>
	<li><b>incentivi </b>per i consumatori di dati ad utilizzarli. es. concorsi e sfide (<a href="http://nycbigapps.com/">NYC BigApps</a>, <a href="http://www.netflixprize.com/">Netfix Prize</a>) o ricerca finanziata (es. <a href="https://blog.twitter.com/2014/introducing-twitter-data-grants">Twitter Data Grants</a>)</li>
</ul>
Fattori che fanno scendere (P) sono:
<ul>
	<li>l'<b>assenza</b> o la <b>rigidità</b> del <b>quadro giuridico</b></li>
	<li>la <b>mancanza di fiducia</b> fra i vari attori coinvolti</li>
</ul>
<h3>B per benefici</h3>
I potenziali benefici (B) per l'apertura data includono fattori quali il miglioramento della qualità dei dati dopo essere stati rilasciati:
<ul>
	<li>migliore <b>precisione</b> e meno errori a causa della potenziale revisione pubblica dei dati</li>
	<li>meno lacune nei dati in termini di <b>copertura </b>e <b>granularità </b>provenienti da contributi esterni</li>
	<li>una migliore <b>interoperabilità</b> grazie al fatto che i dati non sono più divisi in silo separati</li>
	<li><b>sostenibilità</b> dei dati</li>
	<li><b>prioritizzazione</b> dei dati, per aiutare l'identificazione dei dataset più incisivi</li>
	<li>miglioramento della <b>raccolta dei dati</b> da altre istituzioni pubbliche (diminuzione di inutili duplicazioni e costi associati)</li>
</ul>
Scoperte interessanti fatte sui dati possono essere utili e determinare un aumento di benefici politici, sociali ed economici per il proprietario dei dati, che includono:
<ul>
	<li>sviluppo di nuovi prodotti e servizi</li>
	<li>creazione di nuove conoscenze nel settore pubblico</li>
	<li>creazione di un nuovo settore aggiungendo valore per l'economia</li>
	<li>creazione di nuovi dati basati sulla combinazione di dati esistenti</li>
	<li>visibilità e pubblicità per il provider di dati</li>
	<li>miglioramento dei servizi al cittadino</li>
</ul>
Questa categoria di benefici varia notevolmente a seconda del tipo di dato che viene aperto.

Inoltre, l'apertura dei dati potrebbe creare qualche opportunità di <b>monetizzazione</b>. Ad esempio, una città potrebbe vendere l'accesso in tempo reale dei propri dati (es. fondi di investimento e assicurazioni) rendendo lo stesso dataset pubblicamente accessibile sul suo portale entro una settimana.
<h3>D per dovere</h3>
Nell'articolo originale (D) sta per dovere. Nella nostra impostazione si traduce di più come "impatto sull'ecosistema" o "impatto globale" ed è specifico del settore. Questo rappresenta quindi l'impatto positivo nell'aprire dati per altri attori.

Gli enti pubblici potranno vedere il valore di aprire i dati in termini di <b>migliore governance</b> (trasparenza, responsabilità democratica, collaborazione, partecipazione …), il <b>miglioramento della qualità della vita dei cittadini</b>, una <b>migliore interazione pubblico-a-pubblico</b>, una <b>parità di accesso ai dati</b> ed un <b>miglioramento nello sviluppo economico</b>.

Gli enti privati potranno vedere il valore più in termini di <b>responsabilità sociale di impresa</b>.

Gli utenti finali vedranno il valore in termini di <b>responsabilità sociale</b> e <span style="text-decoration: underline;">comportamento pro-sociale.</span>
<h3>C per costo</h3>
Infine (C) sta per costo, che è a sua volta influenzato da questi fattori.
<ul>
	<li><b>Costi di apertura,</b> ovvero i costi di apertura degli stessi dati. Tali costi riguardano i costi della transizione dei dati sepolti dentro sistemi legacy e la riformattazione dei dati in formato aperto.</li>
	<li><b>Costi operativi,</b> vale a dire i costi di pubblicazione dei dati e per il loro aggiornamento. Nonostante possano esserci offerte commerciali accattivanti e soluzioni open source, c'è sempre un costo nel mantenere un portal open data.</li>
	<li><b>Costi di qualità</b>, pertanto i costi per tenere i dati costantemente aggiornati.</li>
	<li><b>Spese legali</b>, cioè i costi di apertura dei dati nel rispetto delle varie normative. Trovare competenza giuridica in questo settore relativamente nuovo può essere difficili e quindi costoso. Ancora peggio quando si tratta di riferirsi a molteplici giurisdizioni prive di armonizzazioni sul tema (es. Europa contro Stati Uniti).</li>
	<li><b>Costi di responsabilità e rischi</b>, ovvero i costi a quando qualcosa va storto, come la privacy, dati errati, dati non aggiornati. Ancora una volta, la mancanza di chiarezza giuridica rende questo rischio più difficile da quantificare.</li>
	<li><b>Costi obbligatori</b>, ovvero quando l'apertura è un requisito legale (= diritto per i cittadini) la cui mancata apertura può comportare delle sanzioni (es. i costi nel FOIA in USA).</li>
	<li><b>Costi competitivi</b> (concetto valido per le <em>aziende</em>), ovvero il costo di condividere informazioni che possono essere utilizzate dalla concorrenza.</li>
	<li><b>Costo di privacy </b>(per gli <em>individui</em>), pertanto il costo di condividere informazioni che possono essere utilizzare da terzi per azioni che non migliorano la qualità della vita. (es. Spam, premi assicurativi ecc...).</li>
	<li><b>Costi di pubbliche relazioni</b>, cioè il costo dovuto dalla cattiva pubblicità o al danno di immagine dovuto da informazioni che possono essere ricavate dai dati (es. metriche di performance per una città, metriche ambientali o diversità di genere n una azienda).</li>
	<li><b>Costi di opportunità,</b> perché le stesse risorse (denaro, infrastrutture tecniche, risorse umane) potrebbero essere spese facendo qualcos'altro.</li>
</ul>
Ogni particolare categoria di costi (es. transazioni, privacy, opportunità) varia di settore in settore.

&nbsp;

<figure class="wp-caption"><a href="http://bit.ly/1AQEvnx"><img class="wp-image-97259 size-large" src="http://de.straba.us/wp-content/uploads/2015/02/P_x_B__D__C-1024x899.png" alt="P x B + D &gt; C" width="1024" height="899" /></a> http://bit.ly/1AQEvnx</figure>

&nbsp;

&nbsp;
<h2>Tirando le somme</h2>
L'equazione descrive una quantità che deve essere maggiore di zero per aprire i dati in maniera sensata. In alcune situazioni pratiche, alcune variabili possono essere al di fuori del controllo del proprietario dei dati. L'equazione fornisce le linee guida in termini di come le leve possono essere attivate ed indica ulteriori decisioni da prendere in considerazione.

<b>Focus su P: aumento della probabilità di benefici</b>
<ul>
	<li>Abbiamo investito sulle persone giuste? La cultura si sta spostando nella direzione di questa iniziativa?</li>
	<li>Quanto sono utilizzabili questi da una comunità di hacker per costruire qualcosa di valido?</li>
</ul>
<b>Focus su B: aumento dei benefici dai dati</b>
<ul>
	<li>C'è un meccanismo semplice per gli utilizzatori dei dati per fornire feedback?</li>
	<li>Come interagiscono i dati dataset e sistemi collegati (es. interoperabilità) ?</li>
</ul>
<b>Focus su D: valore del dovere e impatto all'ecosistema</b>
<ul>
	<li>Quale è il potenziale impatto nella catena del valore nell'apertura dei dati? A chi giova l'apertura di questi dati?</li>
	<li>Quali relazioni e quanta buona disposizione nei confronti dell'apertura dei dati può nascere dal prendere questa decisione?</li>
</ul>
<b>Focus su C: ridurre i costi</b>
<ul>
	<li>Quali sono i reali costi reali per trasformare e riformattare i dati in un formato usabile?</li>
	<li>Quali sono i costi di manutenzione associati all'apertura dei dati?</li>
</ul>
La natura dell'equazione comporta una combinazione pesata di approcci crescenti di P, B e D e decrescenti di C. I seguenti esempi illustrano questi approcci in azione verso una condivisione più ottimale.
<h2>Rivediamo i 3 esempi</h2>
Abbiamo rivisitato 3 casi tipici di open data e guardato come la formula può aiutare ad identificare le leve che possono essere utilizzate per migliorare i risultati.
<h3>Esempio 1: API</h3>
Città (e pubbliche amministrazioni più in generale) spesso cominciano il loro processo di apertura dei dati offrendo semplicemente i dati grezzi e prendendo in considerazione le API solo successivamente. Questa è spesso una decisione miope.

Le API forzano l'uso di standard (P↑); facilitano l'organizzazione di premi e concorsi (P↑).

Le API sono per natura di hacker-friendly (P↑). API sono anche un passaggio naturale per la monetizzazione dei dati (P↑).

Le API possono essere costose da creare e mantenere (C↑); ma forniscono anche una migliore granularità dei dati che aiuta con la privacy e può ridurre le responsabilità legali (C↓).

Nel complesso, le API si presentano come una buona proposta di valore. L'accesso a strumenti semplici da usare e l'uso di standard pre-esistenti può ridurre il costo ancora di più facendo diventare questa opzione una scelta obbligata.
<h3>Esempio 2: Portali open data delle città</h3>
Il portale open data di una città è il luogo sul web dove una città decide di pubblicare i proprio dati che sta aprendo.

In primo luogo, il mantenimento di un portale di questo tipo costa in termini di acquisizione dello spazio di archiviazione e della banda (C↑). Se il portale permette di eseguire query sui dati, si introduce anche il costo delle risorse computazionali (C↑). Se il portale contiene alcune funzioni social come un forum, allora è necessario assumere un community manager (C↑) per gestire le richieste delle persone e gestire i problemi di comunicazione.

Un buon portale open data rende più facile la ricerca dei dati per gli utenti finali (P↑).

Il feedback degli utenti migliorerà la qualità dei dati (B↑) ed aumenterà il coinvolgimento degli utenti (P↑, D↑).

Di un buon portale open data beneficeranno anche gli enti che possono scoprire e moltiplicare l'ultilità dei rispettivi dati (D↑). Aprire i dati in modo proattivo è anche un buon modo per evitare numerose e costose richieste FOIA (C↓).

Data la disponibilità di buoni strumenti per creare portali open data (es. <a href="http://socrata.com/">Socrata</a>,<a href="http://ckan.org/">CKAN</a>, <a href="http://github.com">Github</a>) ed il fatto che l'hosting ha costi relativamente contenuti, il costo C è spesso basso ed un portale open data è di solito una buona opzione per una città .
<h3>Esempio 3: la filantropia del cittadino digitale</h3>
I dati degli utenti possono essere molti utili per scopi di ricerca, per esempio nel settore medico o nella pianificazione urbana. Essendo io stesso un utente che vuole a contribuire al bene comune, sono interessato a donare i miei dati personali. P, B e D sono già elevati ma anche C lo è.

Nella maggior parte dei casi, i miei dati sono in realtà bloccati da alcuni fornitori di servizi che rendono in primo luogo difficile la condivisione (C↑). Inoltre, ci sono poche garanzie in merito al rispetto della mia privacy (C↑). Si aggiunge anche il rischio che i dati che aprirò non saranno utilizzati per lo stesso scopo che avevo in mente; questo viene incluso nelle nostre equazioni come un beneficio decrescente (B↓).

In questo ultimo caso d'uso, l'elemento critico sembra essere il costo. L'esistenza di istituzioni che facciano da tramite rendendo i dati anonimi e ne garantiscano un uso idoneo (per venire incontro alla richiesta voluta dall'utente) renderebbe questa forma di filantropia possibile per l'utente ridurrebbe il costo di  C. Questo caso inoltre richiede uno spazio in cui l'utente è anche  in grado di controllare i suoi dati.
<h2>Conclusione</h2>
Una semplice equazione non è in grado di rispondere a tutte le domande sull'open data. Nonostante tutti i suoi limiti, noi riteniamo che questo "calcolo" possa essere un utile modo per ancorare la conversazione, simile a quanto scritto da <a href="https://medium.com/@antheaws">Anthea Watson Strong</a> in <a href="https://medium.com/thelist/the-three-levers-of-civic-engagement-cde106b68523">The Three Levers of Civici Engagement.</a>

Guardando alla formula, i decision makers possono vedere come un determinato fattore può influenzare il risultato. Internalmente, la formula potrebbe costituire la base logica per uno strumento di misurazione dei risultati e processi decisionali. All'esterno, invece potrebbe essere estremamente utile per le pubbliche amministrazioni che cercano di coinvolgere il settore privato nella condivisione di dati o per le comunità tecniche nella ricerca di soluzioni che consentano di ridurre il costo o amplificare i benefici.

Guardando alle leve offerte dalla formula, possiamo prevedere che: (1) l'esistenza di mercati di dati in cui le aziende possono scambiarsi, (2) l'esistenza di terze parte indipendenti che offrano sistemi di aggregazione e anonimizzazione dei dati per gli utenti finali  e la creazione di modelli (3) – sia legali che tecnici – che siano incorporati nelle soluzioni software dei portali open data sarebbero in grado di rendere la decisione di rendere la decisione di aprire fattibile e razionale per i fornitori di dati.

Ci auguriamo che il nostro "calcolo΅per l'open data possa offrire un inquadramento migliore sul tema e possa aiutare ad identificare le varie leve da attivare per facilitare la conversazione e la ricerca in questo settore a tutti i livelli.
<h2>Alcune letture consigliate</h2>
Per i lettori più accaniti, ecco alcune letture scelte sull'argomento.
<h3>Ricerca accademica</h3>
<ul>
	<li><a href="http://journals.cambridge.org/abstract_S0003055400000125" target="_blank">A Theory of the Calculus of Voting</a>, by Riker and Ordeshook, 1968.</li>
	<li><a href="http://dx.doi.org/10.1080/10580530.2012.716740" target="_blank">Benefits, Adoption Barriers and Myths of Open Data and Open Government</a>, Janssen et al., 2012.</li>
	<li><a href="http://www.scielo.cl/scielo.php?pid=S0718-18762014000200001&amp;script=sci_arttext&amp;tlng=e" target="_blank">Innovation through Open Data</a>, <a href="http://paperpile.com/b/QvAIzU/oX24" target="_blank">Zuiderwijk et al., 2014</a>.</li>
	<li><a href="http://link.springer.com/chapter/10.1007/978-3-662-44426-9_21" target="_blank">A Decision Model for Data Sharing</a>, Eckartz et al., 2014.</li>
</ul>
<h3>Impatto e opportunità</h3>
<ul>
	<li><a href="https://opengovdata.io/" target="_blank">Open government data</a>, J. Tauberer, 2012.</li>
	<li><a href="http://www.mckinsey.com/insights/business_technology/open_data_unlocking_innovation_and_performance_with_liquid_information" target="_blank">Open data: Unlocking innovation and performance with liquid information</a>. McKinsey, 2013.</li>
	<li><a href="http://www.opendatanow.com/" target="_blank">Open Data Now</a><em>, </em>J. Gurin, 2014.</li>
	<li><a href="https://www.scribd.com/doc/219477511/The-Impacts-of-Open-Data" target="_blank">The Impacts of Open Data</a>, Sunlight Foundation, 2014.</li>
	<li><a href="http://unglobalpulse.org/mapping-corporate-data-sharing" target="_blank">Mapping the Next Frontier of Open Data: Corporate Data Sharing</a>, S. Verhulst, 2014.</li>
	<li><a href="http://www.oreilly.com/data/free/data-driven.csp" target="_blank">Data Driven: Creating a Data Culture</a>, DJ Patil and Hilary Mason, 2015.</li>
</ul>
<h3>Dati per il bene pubblico</h3>
<ul>
	<li><a href="http://www.unglobalpulse.org/data-philanthropy-where-are-we-now" target="_blank">Data philanthropy: Where are we now</a>, <em>UN Global Pulse Blog</em>, 2013.</li>
	<li><a href="http://www.cs.nott.ac.uk/%7Ejog/papers/DataDonation.pdf" target="_blank">Data Donation: Sharing Personal Data for Public Good?</a>, Skatova et al., 2014.</li>
	<li><a href="http://nextcity.org/daily/entry/traffic-data-privacy-sharing-city-planning" target="_blank">Would You Share Private Data for the Good of City Planning?</a>, H. Grabar, 2015.
<a href="http://www.scientificamerican.com/article/donated-personal-data-could-aid-lifestyle-researchers/" target="_blank">Donated Personal Data Could Aid Lifestyle Researchers</a>, Skatova et al., 2015.</li>
	<li>"I Quant NY" at <a href="http://iquantny.tumblr.com/">http://iquantny.tumblr.com</a></li>
</ul>
Rimanete sintonizzati per una prossima versione di questo lavoro.