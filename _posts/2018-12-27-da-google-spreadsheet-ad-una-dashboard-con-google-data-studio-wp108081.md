---
layout: post
title: "Da Google Spreadsheet ad una dashboard con Google Data Studio"
date: "2018-12-27 13:15:23"
permalink: "/da-google-spreadsheet-ad-una-dashboard-con-google-data-studio/"
original_url: "https://de.straba.us/da-google-spreadsheet-ad-una-dashboard-con-google-data-studio/"
render_with_liquid: false
categories:
  - "dataviz"
  - "google"
  - "opendata"
tags:
  - "dashboard"
  - "dataviz"
  - "google datastudio"
  - "google spreadsheet"
  - "opendata"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2018/12/1owc3_bMSxnEG4d_t2-HXxg.gif" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>

<!-- wp:heading -->
<h2 id="8291">Un esempio con i dati dei pazienti ai pronto soccorso della Provincia Autonoma di&nbsp;Trento</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>L’azienda Provinciale per i Servizi Sanitari offre il servizio “<a rel="noreferrer noopener" href="https://servizi.apss.tn.it/statops/" target="_blank">StatOPS</a>” che visualizza le informazioni sullo stato dei pronto soccorso del Trentino.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108101} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2018/12/1VpfJ7yNNLFQFfdPpCL3gvg.png" alt="" class="wp-image-108101"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>I dati visualizzati sul sito sono <a href="https://dati.trentino.it/dataset/visualizzazione-presenze-nei-pronto-soccorso" rel="noreferrer noopener" target="_blank">disponibili in opendata</a> tramite un <a href="https://servizi.apss.tn.it/opendata/STATOPS001.xml" rel="noreferrer noopener" target="_blank">file XML</a> il cui aggiornamento avviene ogni 10 minuti.</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*cPCkz7dHlknPLQXYbUgJYQ.png" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>La struttura del file è fatta dalla radice <em>&lt;STATOPS&gt; </em>che contiene i tag &lt;<em>DATA_AGGIORNAMENTO</em>&gt; e &lt;<em>PRONTO_SOCCORSO</em>&gt;.<br>Il
 primo contiene la data e l'ora dell'ultimo aggiornamento ed è presente 
una volta sola, mentre il secondo si ripete tante volte quante il numero
 di pronto soccorso del Trentino. Per ogni pronto soccorso sono poi 
presenti una serie di tag che danno informazioni descrittive (es. “<em>&lt;PS&gt;</em>” contiene il nome del pronto soccorso) ed altri invece che informano quante persone hanno ricevuto un codice <em>&lt;BIANCO&gt;</em> o &lt;VERDE&gt; o <em>&lt;GIALLO&gt;</em> o <em>&lt;ROSSO&gt;</em> rispettivamente negli stati di <em>&lt;ATTESA&gt;, &lt;AMBULATORIO&gt;,&lt;OSSERVAZIONE&gt;.</em></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il
 passaggio da questo XML ad un formato tabellare è una operazione che si
 può fare in diversi modi attraverso qualche nozione base di <a href="https://it.wikipedia.org/wiki/XPath" rel="noreferrer noopener" target="_blank">XPath</a><br>Volendo poi ottenere i dati aggiornati è sufficiente rilanciare l'operazione di trasformazione in maniera periodica.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Le soluzioni sono tante, quella che propongo qui è basata su Google Spreadsheet facendo uso della funzione <a href="https://support.google.com/docs/answer/3093342?hl=it" rel="noreferrer noopener" target="_blank">IMPORTXML</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La creazione della tabella dentro il foglio di calcolo avviene in maniera molto semplice e richiede solo un po' di pazienza.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108102} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2018/12/1b56q-g8GsV3YH9Ty11CyOw.png" alt="" class="wp-image-108102"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Supponiamo
 di strutturare la tabella con le colonne che riguardano: il codice del 
pronto soccorso, la località, il nome, la data dell'aggiornamento dei 
dati, il numero di pazienti in stato di attesa per codice (bianco, 
verde, giallo e rosso), quello di quelli in ambulatorio (sempre per 
codice) e di quelli in osservazione.<br>Ciascuna di queste informazioni corrisponde ad un percorso del albero XML</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>[csv src=https://gist.githubusercontent.com/napo/9a721c8a20e33debac0ed3e068a4a247/raw/a085dfa04b222f6f44be94a70292a683562204a9/percorsi_xml_statops.csv]</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph {"fontSize":"small"} -->
<p class="has-small-font-size">Nota: il primo percorso inizia con   "//" in quanto seleziona nodi nel documento dal nodo principale ( = la  radice) che corrisponde alla selezione, indipendentemente da dove si  trovi</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'operazione da svolgere è quindi quella di fornire, per ogni colonna, il comando IMPORTXML con il relativo percorso XPath.<br>Dove il tag non contiene alcun sotto tag allora verrà mostrato il contenuto di quel tag nella colonna</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108103} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2018/12/1AGO4NX30R1NHLMYqTY4fmQ.gif" alt="" class="wp-image-108103"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>dove
 invece il tag (es. &lt;ATTESA&gt; o &lt;AMBULATORIO&gt; o 
&lt;OSSERVAZIONE&gt;) contiene ulteriori sottotag, allora saranno 
mostrati i valori per ogni colonna successiva a quella dove si eseguirà 
il comando</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108104} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2018/12/1WKajRE2yJ3ah-e_msx30RA.gif" alt="" class="wp-image-108104"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>A  questo punto si può automatizzare l'aggiornamento del dato ed anche le  relative creazioni di grafici come spiegato nell'articolo <a href="http://de.straba.us/2018/12/27/automatizzare-la-raccolta-e-analisi-dei-dati-con-google-fogli/" target="_blank" rel="noreferrer noopener" aria-label=" (opens in a new tab)">"Automatizzare la raccolta e analisi dei dati con Google Fogli"</a></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il
 risultato che si ottiene con questa procedura è già sufficiente per 
creare dei grafici interattivi o immagine statiche da rendere pubblici.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108105,"linkDestination":"custom"} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2018/12/1wXQzcx92bf0xupspNqTTKw.png" alt="" class="wp-image-108105"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Qualora
 però si voglia creare un pannello più complesso, completo, ad esempio, 
di una tabella accompagnata da un grafico e dalla possibilità di 
filtrare i valore in relazione ad una variabile, la suite Google offre 
un ulteriore strumento molto semplice e affascinante: <a href="https://datastudio.google.com" rel="noreferrer noopener" target="_blank">Google Data Studio</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Data
 Studio offre dei pannelli di base (che possono essere esportati anche 
come pdf per la stampa) su cui "appoggiare" i vari elementi che la 
nostra dashboard deve visualizzare.<br>È possibile cominciare con un modello già preconfezionato o crearne uno da zero.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108106} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2018/12/1anmxYLk_LPUIj0Aum0wiyg.png" alt="" class="wp-image-108106"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Il primo passaggio consiste nel selezionare o creare una origine dati attraverso pochi clic.<br>In
 questo caso va scelto il foglio di calcolo presente in Google 
Spreadsheet con la tabella creata dalla trasformazione del file xml.</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="blob:http://de.straba.us/7d8f8630-83f6-4c06-85ca-a5f7d03650f0" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>e da lì collegare (usando il bottone "aggiungi al rapporto") la base dati al pannello dove si andrà a creare la dashboard</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108108} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2018/12/1O-VZsKfinaUJ3I5qu7VSRw.png" alt="" class="wp-image-108108"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Da
 qui in poi si opererà nel pannello dove posizionare i vari oggetti che 
vogliamo vedere rappresentato nel report, come, ad esempio, una tabella.</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*RLSWaqwJ-VSiNaJnZS-LMw.gif" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>In ciascuno di questi casi andremo anche a scegliere quali dati rappresentare e permettendo poi diverse modifiche allo stile</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*66bycM4DgFh8f940IRvCyg.png" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>e proseguire poi nella creazione del report aggiungendo anche ulteriori grafici</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*Iimt2KxfiELflawQwmgGDg.gif" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Oltre ai dati presenti è possibile creare dati secondari.<br>Il
 grafico a barre scelto permette di capire quante sono le persone in 
stato di attesa, per averne però il totale è sufficiente creare una 
nuova variabile che contiene la somma dei valori.</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*WmG-s4vSvWONIcdHTPe45w.gif" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Trattandosi poi di una dashboard è di dover aggiungere almeno un filtro.<br>Ad esempio quello dell'elenco dei pronto soccorso con affiancato il numero totale di persone in attesa</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*owc3_bMSxnEG4d_t2-HXxg.gif" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Passando in modalità visualizzazione si può poi vedere il risultato della dashboard creata</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*AX7IvivueHz06UASx-s5aQ.gif" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>che poi può essere <a href="https://datastudio.google.com/open/1VaKi7ef4RAFF84ywFpTHu7c-8gEZhVnB" rel="noreferrer noopener" target="_blank">condivisa</a> con altri con le classiche modalità di condivisione offerte da Google.</p>
<!-- /wp:paragraph -->

<!-- wp:image -->
<figure class="wp-block-image"><img src="https://cdn-images-1.medium.com/max/800/1*CXboK31zY-PYkj14jaHZNQ.png" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Have fun!!!</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>PS:<br>questo vuole essere solo un tutorial per guidare alla creazione non di certo una dashboard efficace&nbsp;:)</p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/9d3f687941e7d6e7.png" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<figure><img src="/assets/images/medium/144e7c160425eab7.png" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<figure><img src="/assets/images/medium/fb107bc5dcd64e28.gif" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<figure><img src="/assets/images/medium/92b66c3c4c6d7d49.gif" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<figure><img src="/assets/images/medium/28264fe36d527833.png" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<figure><img src="/assets/images/medium/67cbf5afa2b8cfda.png" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<figure><img src="/assets/images/medium/6e592900eb4d0c37.gif" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<figure><img src="/assets/images/medium/0dfa695996261237.png" alt="Da Google Spreadsheet ad una dashboard con Google Data Studio" /></figure>
<p><a href="https://medium.com/p/2aa69f6af8e8">Versione originale su Medium</a></p>
