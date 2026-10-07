---
layout: post
title: "Così il data journalism smaschera il referendum veneto: 700mila voti non tornano"
date: "2014-03-27 09:31:14"
permalink: "/cosi-il-data-journalism-smaschera-il-referendum-veneto-700mila-voti-non-tornano/"
original_url: "https://de.straba.us/cosi-il-data-journalism-smaschera-il-referendum-veneto-700mila-voti-non-tornano/"
render_with_liquid: false
categories:
  - "opendata"
---

<p style="text-align: justify">In questi giorni si è parlato molto del r<strong>eferendum <a href="http://www.repubblica.it/politica/2014/03/24/news/l_indipendenza_del_veneto_non_uno_scherzo_bocciato_lo_stato_centrale_no_alla_politica_locale-81734444/">veneto</a></strong> per l’<a href="http://corrieredelveneto.corriere.it/veneto/notizie/politica/2014/21-marzo-2014/referendum-19-milioni-votanti-questa-sera-tutti-piazza-treviso-2224246432447.shtml">indipendenza</a> e dei suoi numeri strabilianti: 2,5 milioni di votanti e quasi 2 milioni di sì. Repubblica ha anche commissionato il <a href="http://www.demos.it/a00970.php">sondaggio</a> Demos che conferma che l’interesse per la questione esiste.<br />
Davanti a questi annunci però si rimane abbastanza scettici.</p>

<p style="text-align: justify">Il motivo è semplice: quanti abitanti ha il Veneto?<br />
La risposta la si trova sul sito <a href="http://dati-censimentopopolazione.istat.it/">del censimento ISTAT</a> dove, al primo gennaio 2013 appaiono 4.857.210. Pertanto, basandosi con i numeri dichiarati, è facile mettere in piedi un piccolo sondaggio dove, alla domanda “Hai votato per il referendum?”, una persona si ed una no, dovrebbe dare risposta affermativa.</p>

<p style="text-align: justify"><a href="http://it.wikipedia.org/wiki/Veneto"><img alt="Veneto e province" src="/assets/images/wordpress/2014/03/574px-Provinces_of_Veneto_map.png" width="574" height="480" /></a></p>

<p style="text-align: justify">image from <a href="http://commons.wikimedia.org/wiki/File:Provinces_of_Veneto_map.png">wikimedia commons</a> by <a href="http://commons.wikimedia.org/wiki/User:NormanEinstein">NormanEinstein</a> cc-by-sa 3.0</p>

<p style="text-align: justify">A questo punto, è possibile organizzare anche un esercizio di <em>data journalism</em>utilizzando i vari open data ed offrendo un metodo utile per il futuro.</p>

<p style="text-align: justify">Il<strong> referendum veneto</strong> è avvenuto attraverso la votazione online (anche se erano previste altre <a href="https://plebiscito.eu/public/come-si-vota">formule</a> come telefono o gazebi).<br />
È quindi lecito affermare che i requisiti obbligatori per poter esprimere il voto devono soddisfare queste tre caratteristiche:</p>

<ul style="text-align: justify">
<li><i></i>essere residente in Veneto e avere il diritto al voto (quindi i maggiorenni, riducendo il tutto a poco meno di 4 milioni, ovvero 3.984.962)</li>
<li><i></i>avere un collegamento ad internet</li>
<li><i></i>essere andato a votare</li>
</ul>

<p style="text-align: justify">Non va inoltre sottovalutato dal totale degli aventi diritto al voto anche quella categoria di persone che, per diverse ragioni (es. salute), non vanno a votare.</p>

<p style="text-align: justify">Per capire questi valori è necessario avere i dati, molte risposte vengono dall’ISTAT, ma, per farsi una idea sull’atteggiamento degli elettori veneti si può prendere visione dei dati distribuiti dal <a href="http://oe.consiglioveneto.it/">Osservatorio delle dinamiche elettorali</a> del consiglio regionale del Veneto.<br />
Su questo sito è possibile <a href="http://oe.consiglioveneto.it/i-file-scaricabili">scaricare i file</a> con i dati del numero di elettori e dei votanti delle ultime elezioni regionali, provinciali e comunali suddivisi per anno.<br />
Grazie a questi dati, e a quelli dell’elenco dei 581 comuni del Veneto (sempre offerto dall’ISTAT) è possibile farsi una idea della partecipazione alle questioni elettorali dei cittadini di questa regione.<br />
Come tipologia di elezione che, solitamente, crea maggior partecipazione siamo andati a guardare le elezioni comunali.</p>

<p style="text-align: justify"><a href="http://oe.consiglioveneto.it/"><img alt="osservatorio elettorale veneto" src="/assets/images/wordpress/2014/03/oeveneto.png" width="500" height="313" /></a></p>

<p style="text-align: justify">Delle elezioni a sindaco avvenute negli ultimi 5 anni siamo andati a sommare il numero di elettori che hanno partecipato. Nei casi in cui, alcuni comuni (per la precisione 70) hanno avuto più elezioni, si è scelto di prendere il valore più alto<br />
Questo per avere una sovrastima ed essere sicuri di non sbagliare per difetto.<br />
I risultati ottenuti sono stati poco meno di 4 milioni per gli aventi diritto al voto (3.974.817), quindi un valore non molto diverso da quello degli indicatori dell’ultimo censimento ISTAT, ed un numero di votanti di circa 3 milioni (2.929.515).</p>

<p style="text-align: justify">Ulteriore conferma arriva incrociando i dati delle <a href="http://amministratori.interno.it/semestrale/html/pubblicazioni.htm">rilevazioni semestrali del corpo elettorale</a> pubblicate dal Ministero dell’Interno <a href="http://amministratori.interno.it/semestrale/elesez/2011/2011.7z">del 2011</a> che confermano, con una leggera differenza, quanto calcolato (3.997.521).»</p>

<blockquote>In sintesi è possibile già dire che il referendum per l’indipendenza veneta, per raggiungere i 2,5 milioni ha avuto bisogno di quasi il 100% delle persone che normalmente vanno a votare in Veneto.</p></blockquote>

&lt;

p style="text-align: justify"&gt;Aggiungiamo però una ulteriore considerazione: quante persone hanno accesso ad internet?<br />
ISTAT offre un bel dataset dal nome <a href="http://dati.istat.it/Index.aspx?DataSetCode=DCCV_USOINTPC">utilizzo del PC e di Internet negli ultimi 12 mesi</a> diviso per regioni.<br />
Un dato che, agli scopi di questa analisi, risulta particolarmente interessante.<br />
La lettura dei dati dice qualcosa di particolarmente affascinante: <strong>l’uso della Rete è in costante crescita e, nel 2013 questo ha coinvolto il 60% della popolazione.</strong><br />
Sempre facendo i conti della serva, e consapevoli di fare una sovrastima sul numero di persone che avrebbero partecipare anche in virtù del fatto che la percentuale raccoglie la popolazione dai 6 anni in su (e quindi includendo anche persone non aventi diritto al voto), si arriva a poter dire <strong>che le persone che solitamente votano alle elezioni in Veneto e che sono solite utilizzare internet è meno di 1,8 milioni (1.757.709)</strong>.<br />
Un numero decisamente più basso rispetto a quello dichiarato sul totale delle persone che hanno partecipato al <strong>referendum veneto</strong> online ma che risulta essere più verosimile nel soddisfare il requisito: elettore veneto che solitamente va a votare e fa uso di internet.

<p style="text-align: justify"></p>

<p style="text-align: justify">Nel grafico</p>

<ul style="text-align: justify">
<li>la colonna di sinistra indica il totale degli elettori dichiarati per plebiscito.eu</li>
<li>la seconda invece il numero di abitanti in Veneto secondo censimento ISTAT 2011</li>
<li>la terza il numero di veneti aventi diritto al voto secondo l’osservatorio delle dinamiche elettorali del consiglio regionale</li>
<li>la quarta il numero totale di votanti alle ultime elezioni comunali (fonte osservatorio dinamiche elettorali)</li>
<li>la quinta il numero totale di votanti alle ultime elezioni comunali scalato sulla percentuale di persone che utilizzano internet (fonte ISTAT)</li>
<li>L’ultima colonna rappresenta quindi il potenziale pubblico di partecipanti ad iniziative politiche online in Veneto</li>
</ul>

<p style="text-align: justify">Questa analisi, basata su open data relativi alla popolazione e atteggiamento dei veneti alla partecipazione politica e all’uso di internet serve a farsi un’idea (per quanto ottimistica) del potenziale pubblico a cui questo genere di iniziative si rivolge.</p>

<strong>Il risultato ottenuto da plebiscito.eu non sembra aderirà a questa stima. Certo, i conti della serva non sono sempre giusti</strong> <strong>ma spesso si avvicinano alla realtà</strong>, tant’è che, <a href="http://www.palmerini.net/blog/da-rischio-calcolato-i-primi-sospetti-sul-plebiscito-non-seri-ma-alexa-li-conferma/">lo studio fatto da Loris Palmerini</a> sul traffico internet monitorato da Alexa, Calcustat e Google calcola una media di 50.000 visite al giorno, ovvero 350.000 voti potenziali (circa un quinto).

<p style="text-align: justify">Tornando quindi al piccolo sondaggio iniziale che diceva “Hai votato per il referendum?” è più probabile aspettarsi che, per questo genere di iniziative, la risposta affermativa arrivi da un veneto su cinque piuttosto che da uno su due.</p>

<p style="text-align: right">Trento, 27 marzo 2014<br />
<a href="http://wiki.wikimedia.it/wiki/Utente:CristianCantoro">Cristian Consonni</a> e Maurizio Napolitano<br />
<a href="http://de.straba.us/2014/03/25/referendum-per-lindipendenza-del-veneto-i-conti-della-serva-non-tornano/" target="_blank">Reblog da de.straba.us</a></p>