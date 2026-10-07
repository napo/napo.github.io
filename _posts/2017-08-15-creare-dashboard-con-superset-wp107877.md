---
layout: post
title: "Creare dashboard con Superset"
date: "2017-08-15 11:20:26"
permalink: "/creare-dashboard-con-superset/"
original_url: "https://de.straba.us/creare-dashboard-con-superset/"
render_with_liquid: false
categories:
  - "opendata"
  - "software libero"
tags:
  - "airbnb"
  - "csv"
  - "csvkit"
  - "dashboard"
  - "data visualization"
  - "dataviz"
  - "flask"
  - "opendata"
  - "python"
  - "superset"
  - "tutorial"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2017/08/Selezione_206.png" alt="Creare dashboard con Superset" /></figure>

<h2>Un tutorial per imparare ad usare Superset partendo da un file csv</h2>

<h3 class="graf graf--h4"><strong class="markup--strong markup--h4-strong">Introduzione</strong></h3>

<p class="graf graf--p"><a class="markup--anchor markup--p-anchor" href="http://airbnb.io/projects/superset/" target="_blank" rel="noopener" data-href="http://airbnb.io/projects/superset/">Apache Superset</a> è un prodotto open source creato dai laboratori di <a class="markup--anchor markup--p-anchor" href="http://airbnb.io/" target="_blank" rel="noopener" data-href="http://airbnb.io/">AirBnB engineering &amp; data science</a> per creare dashboard interattive via web. Il progetto è partito più di un anno fa da una hackathon assumendo il nome di Caravel poi di Panoramix e infine di Superset. L'interesse che si è creato poi intorno al progetto ha fatto si che ora il progetto sia ospitato nello spazio <a class="markup--anchor markup--p-anchor" href="https://github.com/apache/" target="_blank" rel="noopener" data-href="https://github.com/apache/">GitHub di Apache Foundation</a>.</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*fdIIpdmzdIVMFm8aWwaG9A.png" data-image-id="1*fdIIpdmzdIVMFm8aWwaG9A.png" data-width="738" data-height="494" /></figure>

<h3 class="graf graf--h4"><strong class="markup--strong markup--h4-strong">Installazione</strong></h3>

<p class="graf graf--p">Superset è sviluppato usando <a class="markup--anchor markup--p-anchor" href="http://flask.pocoo.org/" target="_blank" rel="noopener" data-href="http://flask.pocoo.org/">Flask</a> un framework Python molto snello per lo sviluppo web. La parte che genera i grafici interattivi invece fa uso di <a class="markup--anchor markup--p-anchor" href="http://nvd3.org/" target="_blank" rel="noopener" data-href="http://nvd3.org/">NVD3</a> — una libreria javascript costruita su <a class="markup--anchor markup--p-anchor" href="https://d3js.org/" target="_blank" rel="noopener" data-href="https://d3js.org/">D3.js</a>. L'installazione di Superset avviene in <a class="markup--anchor markup--p-anchor" href="https://superset.incubator.apache.org/installation.html#getting-started" target="_blank" rel="noopener" data-href="https://superset.incubator.apache.org/installation.html#getting-started">pochissimi passaggi</a> su una macchina dove si ha già installato Python (indifferente se versione 2.7 che versione 3.5 — AirBnB usa la versione 2.7 per i suoi prodotti in produzione) e alcune <a class="markup--anchor markup--p-anchor" href="https://superset.incubator.apache.org/installation.html#os-dependencies" target="_blank" rel="noopener" data-href="https://superset.incubator.apache.org/installation.html#os-dependencies">dipendenze</a> di sistema.
Una volta installato occorre definire un utente di amministrazione attraverso cui inizializzare alcune configurazioni e, eventualmente, caricare dei dati di esempio. Le <a class="markup--anchor markup--p-anchor" href="https://superset.incubator.apache.org/installation.html#os-dependencies" target="_blank" rel="noopener" data-href="https://superset.incubator.apache.org/installation.html#os-dependencies">istruzioni</a> sono presenti per i sistemi operativi più diffusi (distribuzioni GNU/Linux, Windows e MacOSX).
Per gli utenti pigri che usano Ubuntu ho realizzato <a class="markup--anchor markup--p-anchor" href="http://de.straba.us/install_superset.sh" target="_blank" rel="noopener" data-href="http://de.straba.us/install_superset.sh">questo script</a> che raccoglie tutti i comandi da eseguire (verrà chiesta la password di amministrazione per installare le librerie e gli estremi per creare l'utente che amministrerà Superset).
Per usarlo basta seguire questi passaggi da shell
<code>wget href="http://de.straba.us/install_superset.sh</code>
<code>chmod 755 install_superset.sh</code>
<code>./install_superset</code>
NOTA: lo script installa superset creando la cartella "<em class="markup--em markup--p-em">superset</em>" nella home utente (es. <em class="markup--em markup--p-em">/home/napo/superset</em>).
Una volta fatta l'installazione, l'avvio del programma avviene attivando l'ambiente python creato nella installazione
Le operazioni che svolge lo script sono:</p>

<ul>
    <li class="graf graf--p">definizione di una directory nella home utente dal nome superset
<code>destdir="$HOME/superset"</code></li>
    <li class="graf graf--p">installazione delle librerie di sistema
<code>sudo apt-get install build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev</code></li>
    <li class="graf graf--p">creazione di un ambiente python nella home utente dal nome superset
<code>virtualenv $destdir</code></li>
    <li class="graf graf--p">attivazione dell'ambiente python
<code>cd $destdir
. bin/activate</code></li>
    <li class="graf graf--p">installazione di superset e librerie dipendenti
<code>pip install superset</code>/li&gt;</li>
    <li class="graf graf--p">creazione di un utente di amministrazione
<code>fabmanager create-admin --app superset</code></li>
    <li class="graf graf--p">setup del database
<code>superset db upgrade</code></li>
    <li class="graf graf--p">caricamento dei dati di esempio
<code>superset load_examples</code></li>
    <li class="graf graf--p">configurazione finale
<code>superset init</code></li>
    <li class="graf graf--p">uscita dall'ambiente python
<code>deactivate</code></li>
</ul>

<p class="graf graf--p">Una volta installato superset occorre, attivare l'ambiente python e poi lanciarlo con il comando:
<em class="markup--em markup--p-em">superset</em> <em class="markup--em markup--p-em">runserver</em>
Nel caso dell'utente Ubuntu di sopra che ha usato lo script, questo si riduce a queste operazioni da shell</p>

<ul>
    <li class="graf graf--p">esecuzione dell'ambiente python con superset
<code>source bin/activate</code></li>
    <li class="graf graf--p">avvio di superset
<code>superset runserver</code></li>
</ul>

Da qui si abbandona la shell per usare il browser e aprirlo all'indirizzo <a class="markup--anchor markup--p-anchor" href="http://localhost:8088" target="_blank" rel="noopener" data-href="http://localhost:8088">http://localhost:8088</a>
[se si vuole chiudere il servizio, allora premere <em class="markup--em markup--p-em">CTRL-C</em> e uscire con il comando <em class="markup--em markup--p-em">deactivate]</em>

<h3 class="graf graf--h4">Le funzioni base di Superset</h3>

<p class="graf graf--p">Verrà presentata la pagina di login e, una volta inserite le credenziali scelte in fase di installazione si accederà ad una pagina con l'elenco delle dashboard pre-installate (ammesso che si abbia fatto questa scelta in fase di setup).</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*uQjqXC967X6i4rnFm-mL1w.png" data-image-id="1*uQjqXC967X6i4rnFm-mL1w.png" data-width="761" data-height="450" /></figure>
la pagina di Superset dopo l'autenticazione con le configurazioni dimostrative installate

<p class="graf graf--p">Basterà sceglierne una qualsiasi per rimanere stupiti delle potenzialità di questo strumento.</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*O-HSbk4OLn1RwaCS9IpBEw.png" data-image-id="1*O-HSbk4OLn1RwaCS9IpBEw.png" data-width="841" data-height="568" />

<figcaption class="imageCaption">dashboard creata con superset sui dati della popolazione offerto da World Bank — in evidenza la funzione di filtro</figcaption>

</figure>

<p class="graf graf--p">Una qualsiasi dashboard creata con Superset è composta da una serie di pannelli (chiamati slice). Ciascuno di questi può essere ridimensionato, spostato rispetto agli altri o mostrato a schermo intero.
Inoltre, ogni dataset rappresentato in un grafico, può essere anche esportato in formato csv o json o ricavarne anche la query SQL.
Le "slice" sono create a partire da una tabella presente nelle sorgenti dati che Superset è in grado di gestire.
La slice di filtro inoltre, cambia al volo le visualizzazione in relazione ai parametri scelti.</p>

<p class="graf graf--p">Superset utilizza tutti i <a class="markup--anchor markup--p-anchor" href="http://docs.sqlalchemy.org/en/rel_1_0/core/engines.html" target="_blank" rel="noopener" data-href="http://docs.sqlalchemy.org/en/rel_1_0/core/engines.html">database relazionali</a> supportati dalla libreria python <a class="markup--anchor markup--p-anchor" href="https://www.sqlalchemy.org/" target="_blank" rel="noopener" data-href="https://www.sqlalchemy.org/">SQLAlchemy</a>. Fra questi vale la pena di citare SQLite, MySQL, PostgreSQL, Microsoft SQL Server e Oracle.
Inoltre offre una completa integrazione con <a class="markup--anchor markup--p-anchor" href="http://druid.io" target="_blank" rel="noopener" data-href="http://druid.io">Druid</a>: un progetto java open source per un datastore column-oriented distribuito in grado di gestire velocemente grandi quantità di dati (diversi petabyte) in <em class="markup--em markup--p-em">tempo reale</em> (trilioni di eventi).
Le dashboard create con Superset pertanto sono in grado di rappresentare dati in tempo reale. Questo a patto che, la tabella che viene interrogata, abbia un campo (una colonna) che contiene un data (anche completa di ora, minuti, secondi e millesecondi).
Anche in questo caso, l'interfacciamento ai database, è ben spiegato nella <a class="markup--anchor markup--p-anchor" href="https://superset.incubator.apache.org/tutorial.html#connecting-to-a-new-database" target="_blank" rel="noopener" data-href="https://superset.incubator.apache.org/tutorial.html#connecting-to-a-new-database">documentazione ufficiale</a>.</p>

<h3 class="graf graf--h4">Utilizzare un CSV in Superset attraverso CSVKit e SQLite</h3>

<p class="graf graf--p">Il CSV è (ahimè) il formato più utilizzato nel rilascio degli Open Data.
Spesso si tratta di estrazioni periodiche da database (quando meglio sarebbe averli disponibili in tempo reale) che danno vita a tantissimi "dialetti' sulla loro struttura (es. la scelta del carattere di separatore di campo) o che non informano su alcuni metadati vitali come il significato dei campi, il tipo di dato che assumono (intero, reale, stringa, data …), la gestione dei valori mancanti, come sono formattati i valori di numeri o date, i possibili valori attesi (es. nelle variabili categoriche) e — argomento spesso dimenticato — la codifica caratteri.
Gran parte di queste carenze possono essere "indovinate" guardando i dati stessi e da lì popolare un tabella di un database.
A fare questo bellissimo lavoro ci pensa la suite <a class="markup--anchor markup--p-anchor" href="https://csvkit.readthedocs.io/en/1.0.2/" target="_blank" rel="noopener" data-href="https://csvkit.readthedocs.io/en/1.0.2/">CSVKit</a>: una libreria python con diversi script in grado di maneggiare ed estrarre valore da file in formato CSV.
Come esempio prendiamo un file CSV dalla sezione <a class="markup--anchor markup--p-anchor" href="http://dati.consip.it/" target="_blank" rel="noopener" data-href="http://dati.consip.it/">Open Data di CONSIP</a>.
Questo portale offre alcuni dataset aggiornati ma la metadazione lascia a desiderare (ma hanno comunque la capacità di produrre <a class="markup--anchor markup--p-anchor" href="http://www.fabiodisconzi.com/webzine/opendata/30/societa-opendata-trasparenza-problemi/index.html" target="_blank" rel="noopener" data-href="http://www.fabiodisconzi.com/webzine/opendata/30/societa-opendata-trasparenza-problemi/index.html">grattacapi</a>).
Fra i dataset disponibili andiamo a prenderne uno che contiene almeno una colonna con una data, pertanto il più aggiornato della sezione "<a class="markup--anchor markup--p-anchor" href="http://dati.consip.it/dataset/dataset-bandi-e-gare" target="_blank" rel="noopener" data-href="http://dati.consip.it/dataset/dataset-bandi-e-gare">Bandi e Gare</a>". Il file <a class="markup--anchor markup--p-anchor" href="http://dati.consip.it/dataset/934b3e63-c83b-4185-bb06-60c04d209bc6/resource/377784b5-bb11-4a3e-a3a7-e1e48d122892/download/bandiegare2017.csv" target="_blank" rel="noopener" data-href="http://dati.consip.it/dataset/934b3e63-c83b-4185-bb06-60c04d209bc6/resource/377784b5-bb11-4a3e-a3a7-e1e48d122892/download/bandiegare2017.csv">bandiegare2017.csv</a>. Aprendolo con LibreCalc si può cominciare ad investigarlo e scoprire che la codifica caratteri è la ISO-8859–15.</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*zkkrfktBAq77ZxAdKyAYpg.png" data-image-id="1*zkkrfktBAq77ZxAdKyAYpg.png" data-width="693" data-height="648" />

<figcaption class="imageCaption">importazione del file bandiegari2017.csv in LibreCalc</figcaption>

</figure>

<p class="graf graf--p">una ulteriore verifica sulla qualità del csv si può fare usando il tool online <a class="markup--anchor markup--p-anchor" href="http://cvslint.it" target="_blank" rel="noopener" data-href="http://cvslint.it">CSVLint</a>.</p>

<p class="graf graf--p">Veniamo però all'uso di CSVKit: la prima azione da svolgere è l'installazione.
Il consiglio è quello di utilizzare il comando python pip lanciandolo dall'ambiente dove si ha installato superset.
Pertanto, se si ha fatto uso dello script di sopra i comandi da console da eseguire sono questi:</p>

<ul>
    <li class="graf graf--p">posizionarsi nella directory dove è presente superset
<code>cd $HOME/superset</code></li>
    <li class="graf graf--p">attivare l'ambiente python
<code>source ./bin/activate</code></li>
    <li class="graf graf--p">installare CSVKit
<code>pip install csvkit</code></li>
</ul>

Se l'ultimo comando è andato a buon fine, una volta scaricato il file csv
<code>wget http://dati.consip.it/dataset/934b3e63-c83b-4185-bb06-60c04d209bc6/resource/377784b5-bb11-4a3e-a3a7-e1e48d122892/download/bandiegare2017.csv</code>
Si potrà ottenere delle statistiche sui dati del csv attraverso il comando csvstat arricchito dall'informazione della codifica caratteri.
Pertanto l'istruzione
<code>csvstat -e iso8859-15 bandiegare2017.csv</code>
darà come output delle statistiche per ogni colonna del file.
E arriviamo quindi alla trasformazione del file in una tabella di una database relazione.
Il comando di CSVKit in grado di fare questa operazione è csvsql ed anche questo è in grado di interfacciarsi ad innumerevoli database relazionali.
Nel nostro caso, per comodità, semplicità e performance andremo a creare un file SQLite che conterrà la tabella <em class="markup--em markup--p-em">bandiegare2017</em>.
Questo il comando
<code>csvsql --db sqlite:///consip.db --insert -e ISO-8859-15 bandiegare2017.csv</code>
Dove "<em class="markup--em markup--p-em">consip.db</em>" è il nome del file SQLite che CSVKit andrà a creare e che si troverà nella stessa directory che ospita <em class="markup--em markup--p-em">bandiegare2017.csv.</em>

<p class="graf graf--p"><em class="markup--em markup--p-em">
</em>A questo punto rilanciamo Superset e configuriamo questa nuova risorsa.
Seguendo il percorso nel menu <a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/databaseview/list/" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/databaseview/list/"><em class="markup--em markup--p-em">Sources -&gt; Databases</em>,</a> premendo sull'icona "+", si potrà aggiungere la nuova risorsa e da lì aggiungere il nome del database (nel nostro caso "consip") e le informazioni su come raggiungere il file SQLite (voce "<em class="markup--em markup--p-em">SQLAlchemy URI</em>").
Nel caso di SQLite si tratta di creare una stringa composta da "<em class="markup--em markup--p-em">sqlite:///</em>" e dal percorso assoluto del file.
Esempio
<em class="markup--em markup--p-em">sqlite:////home/napo/superset/consip.db
</em>Premendo poi il tasto "<em class="markup--em markup--p-em">Test Connection</em>" si potrà verificare di avere fatto correttamente il collegamento.
(abilitando invece <em class="markup--em markup--p-em"> Expose in SQL Lab</em> e <em class="markup--em markup--p-em">Allow CREATE TABLE AS)</em> si potranno fare operazioni più complesse)</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*HDJNsD1JYbGmQZh4q91Kog.png" data-image-id="1*HDJNsD1JYbGmQZh4q91Kog.png" data-width="734" data-height="319" /></figure>
Esempio di collegamento SQLite

<p class="graf graf--p">Fatto il collegamento al database occorre ora informare Superset di quale tabella fare uso.
Il percorso del menu da seguire questa volta è <a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/tablemodelview/list/" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/tablemodelview/list/"><em class="markup--em markup--p-em">Source -&gt; Tables</em></a>
Nuovamente premendo sul "+" si ottiene la scheda dove inserire le informazioni che si trattano del nome del database e nome della tabella.</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*2YM0FKqOScm957EF3Kyzmg.png" data-image-id="1*2YM0FKqOScm957EF3Kyzmg.png" data-width="702" data-height="392" />

<figcaption class="imageCaption">aggiungere nuove tabelle in Superset</figcaption>

</figure>

<p class="graf graf--p">Salvata la tabella, si torna alla <a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/tablemodelview/list/" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/tablemodelview/list/">lista delle tabelle disponibili</a>.</p>

<figure class="graf graf--figure graf--layoutOutsetLeft"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*7vamEaQAB9ELDz_2l0_eQw.png" data-image-id="1*7vamEaQAB9ELDz_2l0_eQw.png" data-width="331" data-height="103" /></figure>

<p class="graf graf--p">L'elenco presenta, vicino al nome di ogni tabella, tre bottoni: <em class="markup--em markup--p-em">show record</em>, <em class="markup--em markup--p-em">edit record</em> e <em class="markup--em markup--p-em">delete record</em>.
Prima di creare la "slice" è opportuno andare a modificare le impostazioni dei campi (= colonne) della tabella ("<em class="markup--em markup--p-em">edit record</em>")</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*jN8UYI4EgzfBtsW4Zo_OBw.png" data-image-id="1*jN8UYI4EgzfBtsW4Zo_OBw.png" data-width="932" data-height="361" />

<figcaption class="imageCaption">le opzioni possibili sulle colonne della tabella</figcaption>

</figure>

<p class="graf graf--p">In questa sezione saranno presentate, riga per riga, tutte le colonne presenti nella tabella e, per ciascuna, le varie modalità attraverso cui aggregare i valori al fine di creare le visualizzazioni.
Le prime due colonne contengono rispettivamente il nome della colonna e il tipo di dato contenuto (e qui si nota anche la "magia" del lavoro fatto da CSVKit nell'identificarlo in maniera automatica). Le successive invece mostrano come i valori possono essere trattati per la visualizzazione:
- <em class="markup--em markup--p-em">Groupable</em>: se si vuole che i valori vengano raggruppati per i valori contenuti (es. per creare grafici come treemap o torte)
- <em class="markup--em markup--p-em">Filterable</em>: se si vuole avere l'opzione di filtrare i dati per uno o più valori contenuti in quella colonna
- <em class="markup--em markup--p-em">Count Distinct</em>: se si vuole avere il totale delle ricorrenze
- <em class="markup--em markup--p-em">Sum</em>: se si vuole avere il totale (= la somma) dei valori contenuti in quella colonna (vale solo per le colonne che contengono valori numerici)
- <em class="markup--em markup--p-em">Min</em>: se si vuole conoscere il valore minimo fra tutti quelli contenuti in quella colonna
- <em class="markup--em markup--p-em">Max</em>: se si vuole conoscere il valore massimo fra tutti quelli contenuti in quella colonna
- <em class="markup--em markup--p-em">Is Temporal</em>: se la colonna contiene un valore temporale (giorno, mese, anno, ore, minuti…)
Superset assegna in automatico le proprietà correte in relazione al tipo di dato dichiarato. Qui si può decidere di cambiarle o aumentare i dettagli.</p>

<p class="graf graf--p">Una attenzione particolare va fatta per le colonne di tipo data. Le formattazioni e gli ordini di giorno, mese e anno possono cambiare.
Superset permette di personalizzare queste formattazioni grazie a tutte le combinazioni che si possono creare con la <a class="markup--anchor markup--p-anchor" href="https://docs.python.org/2/library/datetime.html#strftime-strptime-behavior" target="_blank" rel="noopener" data-href="https://docs.python.org/2/library/datetime.html#strftime-strptime-behavior">gestione delle date in python</a>.
Nel caso specifico della tabella dati che stiamo analizzando va fatta la considerazione che CSVKit ha individuato in automatico le colonne che contengono date e poi le ha formattate seguendo lo standard <em class="markup--em markup--p-em">anno-mese-giorno. </em>Questa formattazione, in superset, viene definita in questo modo:<em class="markup--em markup--p-em"> %Y-%m-%d </em></p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*QM06JkVpzG_ZCSUcI9etDw.png" data-image-id="1*QM06JkVpzG_ZCSUcI9etDw.png" data-width="1162" data-height="249" />

<figcaption class="imageCaption">definizione del formato della data</figcaption>

</figure>

<p class="graf graf--p"> La sezione "<em class="markup--em markup--p-em">List metrics</em>" inoltre permette di avere ulteriori calcoli come la media dei valori (<em class="markup--em markup--p-em">avg</em>) o altre funzioni SQL che il database relazionale è in grado di calcolare (Es. <a class="markup--anchor markup--p-anchor" href="https://sqlite.org/lang_corefunc.html" target="_blank" rel="noopener" data-href="https://sqlite.org/lang_corefunc.html">funzioni di SQLite</a>).
Per chi conosce il linguaggio SQL, in particolare sulla sintassi della SELECT, tutto questo appare molto semplice.
Una buona guida per cominciare la si può trovare su <a class="markup--anchor markup--p-anchor" href="https://www.w3schools.com/sql/default.asp" target="_blank" rel="noopener" data-href="https://www.w3schools.com/sql/default.asp">W3Schools</a> (inglese) e su <a class="markup--anchor markup--p-anchor" href="http://www.html.it/guide/guida-linguaggio-sql/" target="_blank" rel="noopener" data-href="http://www.html.it/guide/guida-linguaggio-sql/">HTML.it</a> (italiano)</p>

<h3 class="graf graf--p"><strong class="markup--strong markup--p-strong">Creazione di una Dashboard</strong></h3>

<p class="graf graf--p">Una volta sicuri delle impostazioni fatte si può passare alla creazione delle slice (= i singoli grafici) tornando sull'<a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/tablemodelview/list/" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/tablemodelview/list/">elenco delle tabelle</a> e cliccando sulla tabella di nostro interesse ("<em class="markup--em markup--p-em">bandiegare2017</em>").</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*7wvHm5kSKtpslzvjaPRyVA.png" data-image-id="1*7wvHm5kSKtpslzvjaPRyVA.png" data-width="1342" data-height="450" />

<figcaption class="imageCaption">l'interfaccia per la creazione delle slice</figcaption>

</figure>

<p class="graf graf--p">L'interfaccia si presenta con una colonna a sinistra con tutte le operazioni possibili e l'area di destra con la visualizzazione di cosa rappresentare.
Viene subito proposta la visualizzazione a tabella presentando il primo valore delle metriche disponibili e del valore assunto nella prima colonna temporale dell'elenco.
Quello che si ottiene, al primo colpo, lascia un po' perplessi visto che non si vede un grafico e il valore riportato è spesso nullo.</p>

<figure class="graf graf--figure graf--layoutOutsetLeft"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*pz8sUiaLaAhNwYECkGhKtw.png" data-image-id="1*pz8sUiaLaAhNwYECkGhKtw.png" data-width="429" data-height="459" />

<figcaption class="imageCaption">la colonna per selezionare i dati da visualizzare</figcaption>

</figure>

<p class="graf graf--p">Scorrendo però la colonna verso il basso si scopre velocemente che il valore rappresentato è in base agli ultimi setti giorni a partire da oggi.
Basta cambiare il valore di "<em class="markup--em markup--p-em">Since</em>" con "<em class="markup--em markup--p-em">100 years ago</em>" e premere poi sul bottone di query in cima alla colonna, per vedere il valore cambiare.
Se poi si vuole investigare una o più variabili è sufficiente scegliere su "<em class="markup--em markup--p-em">Metrics</em>" quale/i variabile/i investigare ed eventualmente raggrupparle.</p>

<figure class="graf graf--figure graf--layoutOutsetRow is-partialWidth"></figure>
<figure class="graf graf--figure graf--layoutOutsetRowContinue is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/533/1*zN2XiagGO1qqkOO5gawkgg.png" data-image-id="1*zN2XiagGO1qqkOO5gawkgg.png" data-width="879" data-height="479" /></figure>
<figure class="graf graf--figure graf--layoutOutsetRowContinue is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/533/1*-W6mGufi52DZ-A0fP6PTPg.png" data-image-id="1*-W6mGufi52DZ-A0fP6PTPg.png" data-width="875" data-height="475" /></figure>
<figure class="graf graf--figure graf--layoutOutsetRow is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*FTGvuRQCWW9duPawX3nomw.png" data-image-id="1*FTGvuRQCWW9duPawX3nomw.png" data-width="884" data-height="479" /></figure>
<figure class="graf graf--figure graf--layoutOutsetRowContinue is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*A0Vk8HDKYrdHjeOVEXo5DA.png" data-image-id="1*A0Vk8HDKYrdHjeOVEXo5DA.png" data-width="901" data-height="587" />

<figcaption class="imageCaption">La lista dei grafici interattivi che si possono creare con Superset</figcaption>

</figure>

<p class="graf graf--p">La scelta del tipo di grafico avviene su una lista di 33 alternative che si raggiungono con un clic sull'etichetta del grafico scelto sotto la voce "<em class="markup--em markup--p-em">Visualization Type</em>".
In alcuni casi la colonna con le impostazioni cambia in relazione al tipo di grafico.</p>

<figure class="graf graf--figure graf--layoutOutsetRow is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*77vQD9aG-34CWf3k2MrT9A.png" data-image-id="1*77vQD9aG-34CWf3k2MrT9A.png" data-width="886" data-height="446" /></figure>
<figure class="graf graf--figure graf--layoutOutsetRowContinue is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/533/1*u0IRtbtLDejQE7V2K_iv4Q.png" data-image-id="1*u0IRtbtLDejQE7V2K_iv4Q.png" data-width="418" data-height="402" />

<figcaption class="imageCaption">come si presenta la visualizzazione “Word Count” di Superset usando i dati consip per categoria merceologica</figcaption>

</figure>

<p class="graf graf--p">Il dataset "<em class="markup--em markup--p-em">beni e gare 2017</em>" di Consip contiene un colonna dal nome <em class="markup--em markup--p-em">Categoria_Merceologica</em> il cui significato è auto esplicativo
Supponiamo di voler creare la tag cloud delle categorie merceologiche.
Le operazioni da eseguire sono:
- scegliere il tipo di visualizzazione (<em class="markup--em markup--p-em">Word cloud</em>)
- definire la colonna del tempo nell'intervallo di 100 anni da ora
- sotto la voce <em class="markup--em markup--p-em">Series</em> selezionare il campo <em class="markup--em markup--p-em">Categoria_Merceologica</em>
- al fine di calcolare le ricorrenze di una parola occorre scegliere come metrica (<em class="markup--em markup--p-em">Metric</em>) il valore <em class="markup--em markup--p-em">COUNT(*)</em>
- infine scegliere a piacere le modalità di ordinamento (<em class="markup--em markup--p-em">flat, random, square</em>) e le dimensioni che il carattere deve avere dal valore più piccolo al più grande.
Premendo il tasto <em class="markup--em markup--p-em">Query</em> in alto a sinistra si otterrà la visualizzazione richiesta</p>

<figure class="graf graf--figure graf--layoutOutsetCenter"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1333/1*R85ed2x0P7w9SjfltxpL5A.png" data-image-id="1*R85ed2x0P7w9SjfltxpL5A.png" data-width="615" data-height="601" />

<figcaption class="imageCaption">come si presenta la visualizzazione "Word Count" di Superset usando i dati consip per categoria merceologica</figcaption>

</figure>

<p class="graf graf--p">Se si vuole escludere qualche valore, o definire un intervallo o altro ancora, occorre inserire i parametri nella sezione "<em class="markup--em markup--p-em">Filters</em>" nell'area dedicata all’interrogazione dei dati.</p>

<figure class="graf graf--figure graf--layoutOutsetLeft"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*0v6IYUSVkCtGuM5Y0rqgxQ.png" data-image-id="1*0v6IYUSVkCtGuM5Y0rqgxQ.png" data-width="424" data-height="139" /></figure>

<p class="graf graf--p"><strong class="markup--strong markup--p-strong">Esempio</strong>
si vuole non mostrare il valore "<em class="markup--em markup--p-em">ND</em>" (che suppongo voglia dire "<strong class="markup--strong markup--p-strong">n</strong>on <strong class="markup--strong markup--p-strong">d</strong>isponibile").
Nella sezione Filters, si sceglie il bottone "<em class="markup--em markup--p-em">Add Filter</em>", si seleziona il campo "<em class="markup--em markup--p-em">Categoria_Merceologica</em>", si inserisce la condizione "<em class="markup--em markup--p-em">!=</em>" (che vuol dire "diverso da"), si aggiunge il valore che non si vuole prendere in considerazione (<em class="markup--em markup--p-em">ND</em>) e si riesegue la query. Nella Word Cloud non comparirà più il valore "ND".</p>

<p class="graf graf--p">Se il risultato è quello che si vuole utilizzare per la dashboard che si vuole creare sarà sufficiente scegliere il bottone "<em class="markup--em markup--p-em">Save</em>" in alto a sinistra.
Da qui una finestra di dialogo chiederà che nome assegnare e se salvare la "slice" o se assegnarla ad una dashboard precedentemente creata o se assegnarla ad una dashboard da creare.</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*LcgKabybyiV0Cnz5WsY6LA.png" data-image-id="1*LcgKabybyiV0Cnz5WsY6LA.png" data-width="611" data-height="358" />

<figcaption class="imageCaption">finestra di dialogo di salvataggio della pagina</figcaption>

</figure>

<p class="graf graf--p">lo schema per costruire ulteriori slice avviene allo stesso modo facendo sempre attenzione a cosa si vuole rappresentare e che messaggio si vuole dare.</p>

<figure class="graf graf--figure graf--layoutOutsetCenter"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1333/1*aoUIN4BfXB2WeCjF0QXVCA.png" data-image-id="1*aoUIN4BfXB2WeCjF0QXVCA.png" data-width="1364" data-height="446" />

<figcaption class="imageCaption">heatmap calendar</figcaption>

</figure>

<p class="graf graf--p">Non manca poi la possibilità di creare tabelle semplici o complesse (come le tabelle pivot) e quella di creare filtri selezionabili dalla dashboard.
La creazione della dashboard vera e propria avviene o durante la creazione (delle slice aggiungendo o creando nuove dashboard) o dal <a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/dashboardmodelview/list/" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/dashboardmodelview/list/">menu dedicato</a></p>

<figure class="graf graf--figure graf--layoutOutsetRow is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*kSIGUt2mdZmUcEa5VB0KnA.png" data-image-id="1*kSIGUt2mdZmUcEa5VB0KnA.png" data-width="1186" data-height="776" /></figure>
<figure class="graf graf--figure graf--layoutOutsetRowContinue is-partialWidth"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*KEKmV5_aw-k-iQsLZjCK7Q.png" data-image-id="1*KEKmV5_aw-k-iQsLZjCK7Q.png" data-width="1179" data-height="788" />

<figcaption class="imageCaption">l'uso dei filtri da dashboard con influenza sugli altri grafici</figcaption>

</figure>
<figure class="graf graf--figure graf--layoutOutsetLeft"><img class="graf-image" src="https://cdn-images-1.medium.com/max/800/1*A1ATlXth4niP1Gp05ouZSA.png" data-image-id="1*A1ATlXth4niP1Gp05ouZSA.png" data-width="400" data-height="111" /></figure>

<p class="graf graf--p">nella configurazione dei database è possibile estenderne l'utilizzo nella funzione "<a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/superset/sqllab#" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/superset/sqllab#"><em class="markup--em markup--p-em">SQL Lab</em></a>" di Superset.
Questa funzione permette di investigare le tabelle di un database e di creare query complesse (es. unioni fra più tabelle) da cui creare quindi tabelle secondarie che possono poi essere esposte come slice e quindi nelle dashboard.</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*75l9-zXTDWj1myVvWvjVpQ.png" data-image-id="1*75l9-zXTDWj1myVvWvjVpQ.png" data-width="1354" data-height="508" />

<figcaption class="imageCaption">la funzione SQL Lab di Superset</figcaption>

</figure>

<p class="graf graf--p"><strong class="markup--strong markup--p-strong">Superset in produzione</strong>
Superset può essere eseguito in locale (sul proprio computer) o su un server remoto come servizio web.
La documentazione per l'installazione su server remoto è quella di Flask.
<a class="markup--anchor markup--p-anchor" href="http://flask.pocoo.org/docs/0.12/deploying/" target="_blank" rel="noopener" data-href="http://flask.pocoo.org/docs/0.12/deploying/">Le istruzioni passo passo</a> vengono proposte sia per appoggiarsi a servizi remoti come <a class="markup--anchor markup--p-anchor" href="https://github.com/kamalgill/flask-appengine-template" target="_blank" rel="noopener" data-href="https://github.com/kamalgill/flask-appengine-template">Google AppEngine</a> o <a class="markup--anchor markup--p-anchor" href="https://devcenter.heroku.com/articles/getting-started-with-python" target="_blank" rel="noopener" data-href="https://devcenter.heroku.com/articles/getting-started-with-python">Heroku</a>, che all'installazione su un proprio server attraverso <a class="markup--anchor markup--p-anchor" href="http://flask.pocoo.org/docs/0.12/deploying/mod_wsgi/" target="_blank" rel="noopener" data-href="http://flask.pocoo.org/docs/0.12/deploying/mod_wsgi/">Apache</a> o <a class="markup--anchor markup--p-anchor" href="http://flask.pocoo.org/docs/0.12/deploying/uwsgi/#configuring-nginx" target="_blank" rel="noopener" data-href="http://flask.pocoo.org/docs/0.12/deploying/uwsgi/#configuring-nginx">Nginx</a>.</p>

<p class="graf graf--p"><strong class="markup--strong markup--p-strong">Configurazione accesso pubblico ad una dashboard</strong>
Ogni oggetto creato in Superset ha un indirizzo web univoco.
Quindi è facile immaginare che, condividendo l'url si condivida automaticamente la dashboard creata o altro.
Questa, in realtà, è una idea sbagliata.
Gli sviluppatori di Superset hanno realizzato un sistema di gestione degli accessi (ACL) molto avanzato che permette di definire i diritti di lettura, scrittura, modifica e cancellazione a vari livelli.
Per prendere confidenza con queste funzionalità vediamo come va sviluppata la visualizzazione in forma anonima (quindi in lettura e senza bisogno di autenticazione) di una dashboard creata a partire dal nostro dataset di esempio.</p>

<figure class="graf graf--figure"><img class="graf-image" src="https://cdn-images-1.medium.com/max/1067/1*IflV3iSzmVNhKSV3n4bN1g.png" data-image-id="1*IflV3iSzmVNhKSV3n4bN1g.png" data-width="511" data-height="461" />

<figcaption class="imageCaption">definizione dei permessi in lettura alla dashboard creata</figcaption>

</figure>

<p class="graf graf--p">Le operazioni vanno svolte dal menu <em class="markup--em markup--p-em">Security</em>.
Nel caso specifico dell'accesso pubblico occorre andare a modificare i permessi per il ruolo "public" alla voce <a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/roles/list/" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/roles/list/"><em class="markup--em markup--p-em">List Roles</em></a> e, qui, configurare l'accesso a:
- alla dashboard
<em class="markup--em markup--p-em">can dashboard on Superset</em>
- al database e relative tabelle che la dashboard usa nella forma [nomedatabase].[nometabella]
<em class="markup--em markup--p-em">datasource access on [consip].[bandiegare2017](id:8)</em>
- ai json generati dalle query che popolano le slice della dashboard
<em class="markup--em markup--p-em">can explore json on Superset
</em>A questo punto fornendo l'indirizzo univoco della dashboard creata, questa sarà visibile anche ad utente anonimo.</p>

<p class="graf graf--p">La lista di tutti i permessi di Superset è presente nel menu "<a class="markup--anchor markup--p-anchor" href="http://0.0.0.0:8088/permissions/list/" target="_blank" rel="noopener" data-href="http://0.0.0.0:8088/permissions/list/"><em class="markup--em markup--p-em">List Base Permissions</em></a>". Quando si è nella scheda dove vengono definiti i permessi, è sufficiente iniziare a scrivere le parole chiave (es. <em class="markup--em markup--p-em">access, explore, json, datasource, consip</em> ..) che nella casella appaiono tutte le possibili combinazioni da scegliere.</p>

<p class="graf graf--p"><strong class="markup--strong markup--p-strong">Il file config.py</strong>
Le personalizzazioni sono innumerevoli, se si considera poi che si è solo alla versione 0.19, e che Superset sta attirando l'attenzione di sempre più player (fra i <a class="markup--anchor markup--p-anchor" href="https://github.com/apache/incubator-superset#who-uses-apache-superset-incubating" target="_blank" rel="noopener" data-href="https://github.com/apache/incubator-superset#who-uses-apache-superset-incubating">nomi delle organizzazioni</a> che lo usano si nota Zalando, Yahoo!, FBK e, ovviamente, AirBnB) sicuramente le sue evoluzioni porteranno sempre più migliore.
Intanto, per chi deve affinare alcune operazioni (es. uso nella piattaforma in altre lingue, configurazione del server SMTP, cambio del percorso di configurazione, ecc…) deve spostarsi nella directory di installazione di superset (es. <em class="markup--em markup--p-em">$HOME/superset</em>) e da lì nella directory omonima all'interno delle librerie della sottoinstallazione python creata (es. <em class="markup--em markup--p-em">$HOME/superset/lib/python2.7/site-packages/superset</em> ) e modificare — con un editor testuale — il file <em class="markup--em markup--p-em">config.py</em>.</p>

<h3 class="graf graf--p"><strong class="markup--strong markup--p-strong">Riassunto "quick&amp;dirty"</strong></h3>

<ul>
    <li class="graf graf--p"> <a class="markup--anchor markup--p-anchor" href="http://airbnb.io/projects/superset/" target="_blank" rel="noopener" data-href="http://airbnb.io/projects/superset/">Superset</a> è un prodotto open source creato da AirBnB per creare dashboard di dati con grafici che fanno uso di D3 direttamente da browser</li>
    <li class="graf graf--p">l'<a class="markup--anchor markup--p-anchor" href="https://superset.incubator.apache.org/installation.html" target="_blank" rel="noopener" data-href="https://superset.incubator.apache.org/installation.html">installazione</a> avviene in pochi passaggi</li>
    <li class="graf graf--p">Superset è in grado di gestire diversi <a class="markup--anchor markup--p-anchor" href="https://github.com/apache/incubator-superset#database-support" target="_blank" rel="noopener" data-href="https://github.com/apache/incubator-superset#database-support">database relazionali</a> oltre che a <a class="markup--anchor markup--p-anchor" href="http://druid.io" target="_blank" rel="noopener" data-href="http://druid.io">Druid</a></li>
    <li class="graf graf--p"> <a class="markup--anchor markup--p-anchor" href="https://csvkit.readthedocs.io/en/1.0.2/" target="_blank" rel="noopener" data-href="https://csvkit.readthedocs.io/en/1.0.2/">CSVKit</a> è un ottimo strumento per <a class="markup--anchor markup--p-anchor" href="https://csvkit.readthedocs.io/en/1.0.2/tutorial/3_power_tools.html#csvsql-and-sql2csv-ultimate-power" target="_blank" rel="noopener" data-href="https://csvkit.readthedocs.io/en/1.0.2/tutorial/3_power_tools.html#csvsql-and-sql2csv-ultimate-power">popolare una tabella </a>di un database relazionale partendo da un file .csv</li>
    <li class="graf graf--p">Una tabella per essere usata in Superset deve essere prima controllata (in particolare per le colonne che contengono date)</li>
    <li class="graf graf--p">Una volta definita una dashboard, se la si vuole rendere pubblica, è necessario definire gli accessi per il ruolo "<em class="markup--em markup--p-em">Public</em>" facendo cura all'accesso alla tabella</li>
    <li class="graf graf--p">il servizio può essere messo in produzione secondo la <a class="markup--anchor markup--p-anchor" href="http://flask.pocoo.org/docs/0.12/deploying/#deployment" target="_blank" rel="noopener" data-href="http://flask.pocoo.org/docs/0.12/deploying/#deployment">documentazione</a> fornita da <a class="markup--anchor markup--p-anchor" href="http://flask.pocoo.org/" target="_blank" rel="noopener" data-href="http://flask.pocoo.org/">Flask</a></li>
</ul>

<figure><img src="/assets/images/medium/34d958f54ebbe618.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/46ee991f17e9c22d.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/efb57ee44dec47cf.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/b6d5d7ed1bf605b1.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/c840063b6b2d2516.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/0910b16ea5b5f879.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/a2bf283c76ea7dde.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/6ade324ef53c0587.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/6eb5ddddc077f9f1.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/88e25bd184d1da61.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/f51962907f95d137.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/8eeacd4ca9e09ba9.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/5e1f717953adfaab.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/1568e82eca4fd2ea.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/54c72f7d35005078.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/dd2c0aeff29ca3ac.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/8463e9cb04ee1d44.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/b55369bc93956624.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/a97ec4585a9867db.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/26d7d336063ec0ef.png" alt="Creare dashboard con Superset" /></figure>
<figure><img src="/assets/images/medium/d2d909d541632891.png" alt="Creare dashboard con Superset" /></figure>
<p><a href="https://medium.com/p/4e576fa42807">Versione originale su Medium</a></p>
