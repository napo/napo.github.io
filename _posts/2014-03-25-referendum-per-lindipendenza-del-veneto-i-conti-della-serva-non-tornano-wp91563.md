---
layout: post
title: "Referendum per l'indipendenza del Veneto: i conti della serva non tornano"
date: "2014-03-25 18:46:24"
permalink: "/referendum-per-lindipendenza-del-veneto-i-conti-della-serva-non-tornano/"
original_url: "https://de.straba.us/referendum-per-lindipendenza-del-veneto-i-conti-della-serva-non-tornano/"
render_with_liquid: false
categories:
  - "funny"
  - "opendata"
tags:
  - "conti della serva"
  - "elezioni"
  - "open data"
  - "referendum"
  - "statistiche"
  - "veneto"
---

<figure class="featured-image"><img src="/assets/images/wordpress/2014/03/datiplebiscito.png" alt="Referendum per l&#39;indipendenza del Veneto: i conti della serva non tornano" /></figure>

<h2>(aka un piccolo esercizio di data journalism con gli open data di ISTAT, ministero degli interni e osservatorio delle dinamiche elettorali del consiglio regionale veneto)</h2>
In questi giorni si è parlato molto del referendum per l'<a href="http://corrieredelveneto.corriere.it/veneto/notizie/politica/2014/21-marzo-2014/referendum-19-milioni-votanti-questa-sera-tutti-piazza-treviso-2224246432447.shtml">indipendenza</a> del <a href="http://www.repubblica.it/politica/2014/03/24/news/l_indipendenza_del_veneto_non_uno_scherzo_bocciato_lo_stato_centrale_no_alla_politica_locale-81734444/">Veneto</a> e dei suoi numeri strabilianti: 2,5 milioni di votanti e quasi 2 milioni di sì. Repubblica ha anche commissionato il <a href="http://www.demos.it/a00970.php">sondaggio</a> Demos che conferma che l'interesse per la questione esiste.
Davanti a questi annunci però si rimane abbastanza scettici.

Il motivo è semplice: quanti abitanti ha il Veneto?
La risposta la si trova sul sito <a href="http://dati-censimentopopolazione.istat.it/">del censimento ISTAT</a> dove, al primo gennaio 2013 appaiono 4.857.210. Pertanto, basandosi con i numeri dichiarati, è facile mettere in piedi un piccolo sondaggio dove, alla domanda "Hai votato per il referendum?", una persona si ed una no, dovrebbe dare risposta affermativa.

<figure class="wp-caption"><a href="http://it.wikipedia.org/wiki/Veneto"><img class="size-full wp-image-91581" alt="Veneto e province" src="/assets/images/wordpress/2014/03/574px-Provinces_of_Veneto_map.png" width="574" height="480" /></a> image from <a href="http://commons.wikimedia.org/wiki/File:Provinces_of_Veneto_map.png">wikimedia commons</a> by <a href="http://commons.wikimedia.org/wiki/User:NormanEinstein">NormanEinstein</a> cc-by-sa 3.0</figure>

A questo punto, è possibile organizzare anche un esercizio di <em>data journalism</em> utilizzando i vari open data ed offrendo un metodo utile per il futuro.

Il referendum è avvenuto attraverso la votazione online (anche se erano previste altre <a href="https://plebiscito.eu/public/come-si-vota">formule</a> come telefono o gazebi).
È quindi lecito affermare che i requisiti obbligatori per poter esprimere il voto devono soddisfare queste tre caratteristiche:
<ul>
	<li>essere residente in Veneto e avere il diritto al voto (quindi i maggiorenni, riducendo il tutto a poco meno di 4 milioni, ovvero 3.984.962)</li>
	<li>avere un collegamento ad internet</li>
	<li>essere andato a votare</li>
</ul>
Non va inoltre sottovalutato dal totale degli aventi diritto al voto anche quella categoria di persone che, per diverse ragioni (es. salute), non vanno a votare.

Per capire questi valori è necessario avere i dati, molte risposte vengono dall'ISTAT, ma, per farsi una idea sull'atteggiamento degli elettori veneti si può prendere visione dei dati distribuiti dal <a href="http://oe.consiglioveneto.it/">Osservatorio delle dinamiche elettorali</a> del consiglio regionale del Veneto.
Su questo sito è possibile <a href="http://oe.consiglioveneto.it/i-file-scaricabili ">scaricare i file</a> con i dati del numero di elettori e dei votanti delle ultime elezioni regionali, provinciali e comunali suddivisi per anno.
Grazie a questi dati, e a quelli dell'elenco dei 581 comuni del Veneto (sempre offerto dall'ISTAT) è possibile farsi una idea della partecipazione alle questioni elettorali dei cittadini di questa regione.
Come tipologia di elezione che, solitamente, crea maggior partecipazione siamo andati a guardare le elezioni comunali.

<a href="http://oe.consiglioveneto.it/"><img class="aligncenter size-full wp-image-91570" alt="osservatorio elettorale veneto" src="/assets/images/wordpress/2014/03/oeveneto.png" width="500" height="313" /></a>

Delle elezioni a sindaco avvenute negli ultimi 5 anni siamo andati a sommare il numero di elettori che hanno partecipato. Nei casi in cui, alcuni comuni (per la precisione 70) hanno avuto più elezioni, si è scelto di prendere il valore più alto
Questo per avere una sovrastima ed essere sicuri di non sbagliare per difetto.
I risultati ottenuti sono stati poco meno di 4 milioni per gli aventi diritto al voto (3.974.817), quindi un valore non molto diverso da quello degli indicatori dell'ultimo censimento ISTAT, ed un numero di votanti di circa 3 milioni (2.929.515).

Ulteriore conferma arriva incrociando i dati delle <a href="http://amministratori.interno.it/semestrale/html/pubblicazioni.htm ">rilevazioni semestrali del corpo elettorale</a> pubblicate dal Ministero dell'Interno <a href="http://amministratori.interno.it/semestrale/elesez/2011/2011.7z">del 2011</a> che confermano, con una leggera differenza, quanto calcolato (3.997.521).»

In sintesi è possibile già dire che il referendum per l'indipendenza veneta, per raggiungere i 2,5 milioni ha avuto bisogno di quasi il 100% delle persone che normalmente vanno a votare in Veneto.

Aggiungiamo però una ulteriore considerazione: quante persone hanno accesso ad internet?
ISTAT offre un bel dataset dal nome <a href=" http://dati.istat.it/Index.aspx?DataSetCode=DCCV_USOINTPC">utilizzo del PC e di Internet negli ultimi 12 mesi</a> diviso per regioni.
Un dato che, agli scopi di questa analisi, risulta particolarmente interessante.
La lettura dei dati dice qualcosa di particolarmente affascinante: l'uso della Rete è in costante crescita e, nel 2013 questo ha coinvolto il 60% della popolazione.
Sempre facendo i conti della serva, e consapevoli di fare una sovrastima sul numero di persone che avrebbero partecipare anche in virtù del fatto che la percentuale raccoglie la popolazione dai 6 anni in su (e quindi includendo anche persone non aventi diritto al voto), si arriva a poter dire che le persone che solitamente votano alle elezioni in Veneto e che sono solite utilizzare internet è meno di 1,8 milioni (1.757.709).
Un numero decisamente più basso rispetto a quello dichiarato sul totale delle persone che hanno partecipato al referendum online ma che risulta essere più verosimile nel soddisfare il requisito: elettore veneto che solitamente va a votare e fa uso di internet.

<iframe src="http://cf.datawrapper.de/JFKVJ/3/" height="480" width="648" allowfullscreen="allowfullscreen" frameborder="0"></iframe>



<blockquote>nel grafico:
la colonna di sinistra indica il totale degli elettori dichiarati per plebiscito.eu
la seconda invece il numero di abitanti in Veneto secondo censimento ISTAT 2011
la terza il numero di veneti aventi diritto al voto secondo l'osservatorio delle dinamiche elettorali del consiglio regionale
la quarta il numero totale di votanti alle ultime elezioni comunali (fonte osservatorio dinamiche elettorali)
la quinta il numero totale di votanti alle ultime elezioni comunali scalato sulla percentuale di persone che utilizzano internet (fonte ISTAT)
<strong>L'ultima colonna rappresenta quindi il potenziale pubblico di partecipanti ad iniziative politiche online in Veneto</blockquote></strong>

Questa analisi, basata su open data relativi alla popolazione e atteggiamento dei veneti alla partecipazione politica e all'uso di internet serve a farsi un'idea (per quanto ottimistica) del potenziale pubblico a cui questo genere di iniziative si rivolge.
Il risultato ottenuto da plebiscito.eu non sembra aderirà a questa stima. Certo, i conti della serva non sono sempre giusti ma spesso si avvicinano alla realtà, tant'è che, <a href="http://www.palmerini.net/blog/da-rischio-calcolato-i-primi-sospetti-sul-plebiscito-non-seri-ma-alexa-li-conferma/">lo studio fatto da Loris Palmerini</a> sul traffico internet monitorato da Alexa, Calcustat e Google calcola una media di 50.000 visite al giorno, ovvero 350.000 voti potenziali (circa un quinto).

Tornando quindi al piccolo sondaggio iniziale che diceva "Hai votato per il referendum?" è più probabile aspettarsi che, per questo genere di iniziative, la risposta affermativa arrivi da un veneto su cinque piuttosto che da uno su due.

Analisi e testi di <a href="http://wiki.wikimedia.it/wiki/Utente:CristianCantoro">Cristian Consonni</a> e Maurizio Napolitano
<h3>L'angolo dello spippolatore</h3>
<h4>Sorgenti dati</h4>
Qualora ci si voglia cimentare nella stessa analisi, ecco l'elenco delle fonti:
<ul>
	<li>Dati del censimento ISTAT: <a href="http://dati-censimentopopolazione.istat.it/">http://dati-censimentopopolazione.istat.it/</a> (licenza cc-by)</li>
	<li>Dati dell'<a href="http://dati.istat.it/Index.aspx?DataSetCode=DCCV_USOINTPC">utilizzo del PC e di Internet negli ultimi 12 mesi</a> di ISTAT (licenza cc-by)</li>
	<li>Dati dell'osservatorio elettorale del consiglio regionale veneto: <a href="http://oe.consiglioveneto.it/i-file-scaricabili">http://oe.consiglioveneto.it/</a> (open by default in virtù del C.A.D.)</li>
	<li>Dati elettorali del ministero degli interni al 2011: <a href="http://amministratori.interno.it/semestrale/elesez/2011/2011.7z">http://amministratori.interno.it/semestrale/html/pubblicazioni.htm</a> (open data by default?)</li>
</ul>
<h4>Note metodologiche:</h4>
<ul>
	<li>Per prepararsi al lavoro di analisi dati è bene creare subito una cartella dove si salveranno tutti i file necessari e aprire un documento (con un qualsiasi editor di testo) dove annotare le url dei siti che vogliamo utilizzare come fonti.</li>

	<li> È sempre bene conservare una copia originale (non modificata) dei dati che si sono scaricati, per due motivi: alla fine dell'analisi è possibili ricondividere (sono Open Data!) i file utilizzati ed il metodo seguito, che deve essere documentato, in modo che chiunque possa ripetere l'analisi; inoltre è sempre bene tenere a portata di mano i file originali nel caso in cui si faccia qualche danno (succede <em>sempre!</em>) e si abbia bisogno di ricominciare da capo.</li>

	<li>Confrontando dei dati provenienti da fonti diverse ed acquisiti in modo diverso (come nel caso dei dati dell'osservatorio regionale per le dinamiche elettorali e quelli del Ministero dell'Interno) si può effettuare un <em>controllo incrociato</em> aumentando l'affidabilità delle informazioni.</li>

</ul>
