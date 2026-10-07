---
layout: post
title: "Altro che Londra e Berlino, il trasporto pubblico di Roma è il top dell’opendata"
date: "2014-02-05 23:47:14"
permalink: "/altro-che-londra-e-berlino-il-trasporto-pubblico-di-roma-e-il-top-dellopendata/"
original_url: "https://de.straba.us/altro-che-londra-e-berlino-il-trasporto-pubblico-di-roma-e-il-top-dellopendata/"
render_with_liquid: false
categories:
  - "opendata"
  - "software libero"
tags:
  - "open data"
  - "opendata"
  - "opensource"
  - "roma"
  - "trasporti"
---

<p style="text-align: justify">Ogni volta che mi sposto nelle grandi città cerco sempre di pianificarmi la trasferta attraverso i mezzi pubblici e, spesso, molto spesso ne esco soddisfatto.<br />
Fra le città dove ho trovato facilmente sistemi di pianificazione gestiti direttamente dall&#8217;azienda dei trasporti sono Berlino, Praga, Londra. Ma quella che non finisce mai di stupirmi è Roma.</p>

<p style="text-align: justify"><strong> So bene che qualcuno già si starà chiedendo se sono impazzito, ammetto </strong>anche che la maggior parte dei mie spostamenti è programmata con largo anticipo e che, per la maggiore, richiede di spostarsi in luoghi ben serviti. Sapendo poi che è una trasferta lontana mi armo di pazienza consapevole che l&#8217;intera giornata sarà dedicata all&#8217;intera trasferta.</p>

Ammetto però che qualche volta mi è capitato di aspettato più volte l&#8217;autobus alla fermata inutilmente visto che qualche corsa era saltata. Nel programmare i miei spostamenti ho sempre fatto uso di fonti ufficiali, e, pertanto, in questo caso l&#8217;<a href="http://www.agenziamobilita.roma.it">agenzia mobilità di Roma</a>.

<p style="text-align: justify"><strong>Attualmente il servizio è basato su Google, che, per quanto sia un ottimo </strong>servizio<strong>,</strong> si basa comunque su una cartografia il cui aggiornamento e contenuti che compaiono, non sono gestiti direttamente dalla pubblica amministrazione.<br />
Tra l&#8217;altro, per aderire a questo servizio, le aziende di trasporto devono confezionare i dati secondo il formato GTFS (le cui <a href="https://developers.google.com/transit/gtfs/reference?hl=it">specifiche</a> sono rese pubbliche da google), uno sforzo che porta diversi vantaggi (prima di tutto a Mountain View) fra cui quello di poter usufruire di diverse applicazioni.</p>

<p style="text-align: justify"><strong>Una fra queste è mapnificient che, dato un punto, permette visualizzare quale </strong>sia l&#8217;area che si copre con i mezzi di trasporto pubblici nel giro di un determinato intervallo di tempo.<br />
<a href="http://www.chefuturo.it/wp-content/uploads/2014/01/pavia_mapnificent.png"><img class="aligncenter  wp-image-28484" alt="pavia_mapnificent" src="/assets/images/wordpress/2014/01/pavia_mapnificent-300x245.png" width="520" height="400" /></a> Il servizio copre tutto il mondo e, attualmente, è disponibile per solo due città italiane: <a href="http://www.mapnificent.net/torino/">Torino</a> (fra i primi in Italia ad aprire questa tipologia di dati) e <a href="http://www.mapnificent.net/pavia">Pavia</a> (invece fra i casi recenti).<br />
Diverse sono le applicazioni open source in grado di gestire questi dati, fra queste: <a href="https://github.com/paulgb/gtfs-gexf">gtfs-gefx</a>, il convertitore a formato gefx che permette &#8211; attraverso il software <a href="https://gephi.org">gephi</a> &#8211; di applicare algoritmi di social network analysis sul grafo dei collegamenti fra le fermate degli autobus; <a href="http://opentripplanner.com/">opentripplaner</a>, che sostituisce totalmente il prodotto di google (estendendo quindi gli scenari di trasporto multimodale); <a href="https://github.com/UlmApi/livemap">livemap</a>, che permette una <a href="http://live.ulmapi.de/map">visualizzazione</a> in pseudo-tempo reale di dove si trovano gli autobus ecc&#8230;</p>

<p style="text-align: justify"><strong>Tante e diverse applicazioni che esplorano gli scenari del mondo dei trasporti</strong>, tutto possibile avendo l&#8217;accesso ai dati, e ancora più facilmente quando si abbraccia il paradigma open data.<br />
Ed ecco che, il mese scorso, dall&#8217;agenzia della mobilità di Roma, hanno fiutato questa opportunità, e &#8211; senza fare grandi annunci &#8211; ha aperto una risorsa importante come i dati di trasporto.</p>

<p style="text-align: justify"><img class="aligncenter  wp-image-28485" alt="odataroma" src="/assets/images/wordpress/2014/01/odataroma.png" width="489" height="584" /></p>

<p style="text-align: justify">Andando così alla pagina <a href="http://www.agenziamobilita.roma.it/servizi/open-data/">http://www.agenziamobilita.roma.it/servizi/open-data/</a> si accede alla sezione open data del sito.</p>

Lo slogan iniziale, dopo il benvenuto, si presenta con la frase &#8220;<em>Non è necessario saper programmare per usare i nostri servizi di infomobilità.</em>&#8220;.<br />
La pagina si intitola &#8220;Open Data&#8221;, ma le risorse esposte sono molte di più che i semplici data:

<ul style="text-align: justify">
<li><a href="http://www.agenziamobilita.roma.it/it/strumenti-per-i-webmaster.html">strumenti per webmaster:</a> una serie di mini applicazioni da inserire nel proprio sito web per arricchirlo con funzioni di mappe per pianificare i trasporti ed altro ancora.</li>
<li><a href="http://www.agenziamobilita.roma.it/it/dataset.html">dataset</a>: la vera sezione open data che viene aggiornata quando necessasrio con dati corredati di coordinate geografiche quali la <a href="http://dati.muovi.roma.it/gtfs/google_transit.zip">la rete del Trasporto Pubblico Locale</a> (lo stesso dataset che viene fornito a Google), i confini e i varchi delle ZTL, gli impianti semaforici, ecc&#8230;</li>
<li><a href="http://www.agenziamobilita.roma.it/it/api-real-time.html">api real time</a>: servizi web &#8211; rivolto a sviluppatori &#8211; che abilitano la creazione di applicazioni in grado non solo di pianificare percorsi, ma anche di ottenere informazioni in tempo reale da quanto viene monitorato dalla rete del trasporto pubblico (molto banalmente sapere se un autobus sta arrivando).</li>
<li><a href="http://www.agenziamobilita.roma.it/codice-sorgente.html">codice sorgente</a>: ovvero il codice sorgente della gran parte del software che governa i servizi che vengono offerti<br />
dall&#8217;agenzia. Una scelta molto importante in grado di creare reti di condivisione della conoscenza e di offrire un ampia trasparenza di come il delicato sistema informatico del trasporto pubblico locale viene gestito.</li>
</ul>

<p style="text-align: justify"><strong>Si tratta di una scelta non indifferente, un ottimo esempio di open data che non</strong> si ferma alla sola pubblicazione dei dati ma che fornisce anche una ampia gamma di strumenti che ne favoriscono il riuso.</p>

<blockquote>
<p style="text-align: justify">Una scelta così coraggiosa è, dal mio punto di vista, indice di trasparenza e sicurezza nel lavoro che si sta svolgendo.</p>
</blockquote>

<p style="text-align: justify"><strong>Attualmente sono ben poche le agenzie di mobilità che hanno fatto una scelta</strong> analoga. Casi virtuosi sono quelli di <a href="http://www.tper.it/tper-open-data">TPer della Regione Emilia Romagna</a>, <a href="http://www.5t.torino.it/">5T di Torino</a> e <a>SASA di Bolzano</a> (nota di contorno: assolutamente da vedere l&#8217;applicazione degli <a href="http://bus.meran.eu/">autobus in tempo reale di Merano</a>) dove però non viene presentato un elenco così completo di risorse come quello romane, spesso si presentano API e dati (alcune volte <a href="http://opensasa.info/doku.php?id=it:start">non propriamente opendata</a>) ma molto raramente anche widget e <a href="http://sasabus.org/it/home">codice sorgente</a>.</p>

<p style="text-align: justify">Il rilascio di questi dati ha generato, a suo tempo, piccoli esperimenti di persone che si sono dilettate ad individuare quali sono le <a href="http://de.straba.us/2013/12/13/i-dati-dei-trasporti-di-roma-sono-opendata/">fermate più connesse</a>, o quelle più <a href="http://www.forsi.it/node/143">vicine</a> fra loro.</p>

Il settore del trasporto pubblico è un argomento sempre discusso e pieno di lamentele, i dati però sono descrizione oggettive di fatti e prive di ambiguità. L&#8217;accesso a questi permette di verificare problematiche, capire nuovi scenari, individuare nuovi percorsi e quindi aiutare.<br />
Pertanto, l&#8217;augurio che faccio a Roma è che i suoi <a href="http://www.romafaschifo.com/2013/12/polizia-municipale-di-roma-capitale.html">civic hackers romani</a> si attivino presto al fine di utilizzare questo patrimonio allo scopo di migliorare la città.

<p style="text-align: justify">Trento, 5 febbraio 2014<br />
Maurizio Napolitano</p>