---
layout: post
title: "Come riscrivere le query SQL in Pandas ed altro ancora"
date: "2018-03-19 23:21:58"
permalink: "/come-riscrivere-le-query-sql-in-pandas-ed-altro-ancora/"
original_url: "https://de.straba.us/come-riscrivere-le-query-sql-in-pandas-ed-altro-ancora/"
render_with_liquid: false
categories:
  - "me"
  - "opendata"
  - "software libero"
tags:
  - "datascience"
  - "pandas"
  - "python"
  - "sql"
---

<blockquote>traduzione dell'articolo "<a href="https://codeburst.io/how-to-rewrite-your-sql-queries-in-pandas-and-more-149d341fc53e">How to rewrite your SQL queries in Pandas, and more</a>" di <a href="https://codeburst.io/@itruong">Irina Truong</a></blockquote>

<img src="http://de.straba.us/wp-content/uploads/2018/03/1gKYCyrcudAeE5e5KAbRhBQ.jpeg" alt="" width="800" height="450" class="aligncenter size-full wp-image-107932" />

Quindici anni fa, c'erano solo pochi skill che uno sviluppatore software doveva conoscere bene.
Con quelle conoscenze si aveva la possibilità di trovare una posizione lavorativa nel 95% dei casi.
Quelli skill erano:

<ul>
    <li>programmazione orientata agli oggetti</li>
    <li>linguaggi di scripting</li>
    <li>javascript, e ...</li>
    <li>SQL</li>
</ul>

SQL è uno strumento utile ogni volta che è necessario dare un'occhiata veloce ad alcuni dati e trarre conclusioni preliminari che potrebbero, alla fine, portare da una relazione o un'applicazione in fase di scrittura. Questa è chiamata analisi esplorativa.

Ora però i dati arrivano in varie forme e formati e non sono più sinonimo di "database relazionale". Ci si può imbattere in file CSV, testo normale, Parquet, HDF5 e chissà cos'altro ancora. Ed è qui che brilla la libreria Pandas.

<h2>Cos'è Pandas?</h2>

Python Data Analysis Library, acronimo per Pandas, è una libreria Python creata per l'analisi e la manipolazione dei dati. È un prodotto open source ed supportata da Anaconda. Si adatta particolarmente a dati strutturati (in formato tabellare).
Maggiori informazioni si hanno al sito <a href="http://pandas.pydata.org/pandas-docs/stable/index.html">http://pandas.pydata.org/pandas-docs/stable/index.html</a>

<h2>Cosa ci posso fare?</h2>

Tutte le query che prima facevi ai dati in SQL, e molto altro ancora!

<h2>Grande! Da dove comincio?</h2>

Questa è la parte che può spaventare chi è abituato a interrogare i dati via SQL.

SQL è un linguaggio di programmazione dichiarativa: <a href="https://it.wikipedia.org/wiki/Programmazione_dichiarativa">https://it.wikipedia.org/wiki/Programmazione_dichiarativa</a>.

Con SQL, si dichiara ciò che si vuole in una frase che sembra quasi inglese.

La sintassi di <strong>Pandas</strong> è molto diversa da SQL. In <strong>Pandas</strong>, si applicano le operazioni sui dataset le si incatenano, al fine di trasformare e rimodellare i dati come si desidera

Abbiamo bisogno di un <strong>frasario</strong>!

<h2>L'anatomia di una query SQL</h2>

Una query SQL è composta da alcune parole chiave importanti. Attraverso quelle parole chiave si aggiungo le specifiche esatte di quali dati si vuole conoscere.
Questo è uno scheletro senza tali specifiche:

SELECT… FROM… WHERE…

GROUP BY… HAVING…

ORDER BY…

LIMIT… OFFSET…

Ci sono altri termini. Questi sono i più importanti. Come si traducono questi termini in Pandas?

Prima di tutto è necessario caricare alcuni dati in Pandas in quanto non presenti nel database.
Ecco come:

<pre class="EnlighterJSRAW" data-enlighter-language="python">import pandas as pd
airports = pd.read_csv('data/airports.csv')
airport_freq = pd.read_csv('data/airport-frequencies.csv')
runways = pd.read_csv('data/runways.csv')</pre>

<span style="font-size: xx-small;">source <a href="https://gist.github.com/j-bennet/5fa3ff10a51127feae88ede9a012b83e#file-load_data_pd-py">file-load_data_pd-py</a></span>

Ho preso questi dati da <a href="http://ourairports.com/data/">http://ourairports.com/data/</a>

<h2>SELECT, WHERE, DISTINCT, LIMIT</h2>

Ecco alcune istruzioni SELECT. I risultati vengono troncati con LIMIT e filtrati con WHERE. DISTINCT viene usato per rimuovere i risultati duplicati.

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select * from airports</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select * from airports limit 3</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports.head(3)</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select id from airports where ident = 'KLAX'</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports[airports.ident == 'KLAX'].id</pre>
</td>
</tr>
<tr>
<td><pre class="EnlighterJSRAW" data-enlighter-language="sql">select distinct type from airport</pre></td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports.type.unique()</pre>
</td>
</tr>
</tbody>
</table>

<h2>SELECT con condizioni multiple</h2>

Uniamo condizioni multiple con una &amp;. Se invece vogliamo solo un sottoinsieme di colonne dalla tabella, allora quel sottoinsieme lo si ottiene dichiarando un'altra coppia fra parentesi quadre.

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select * from airports where iso_region = 'US-CA' and type = 'seaplane_base'</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports[(airports.iso_region == 'US-CA') &amp; (airports.type == 'seaplane_base')]</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select ident, name, municipality from airports where iso_region = 'US-CA' and type = 'large_airport'</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports[(airports.iso_region == 'US-CA') &amp; (airports.type == 'large_airport')][['ident', 'name', 'municipality']]</pre>
</td>
</tr>
</tbody>
</table>

<h2>ORDER BY</h2>

Da impostazioni predefinite, Pandas ordina in dati in modalità crescente. Per ottenere l'ordinamento inverso, si deve usare l'opzione <em>ascending == False</em>

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select * from airport_freq where airport_ident = 'KLAX' order by type</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airport_freq[airport_freq.airport_ident == 'KLAX'].sort_values('type')</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select * from airport_freq where airport_ident = 'KLAX' order by type desc</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airport_freq[airport_freq.airport_ident == 'KLAX'].sort_values('type', ascending=False)</pre>
</td>
</tr>
</tbody>
</table>

<h2>IN… NOT IN</h2>

Ora sappiamo come filtrare su un valore, ma quando riguarda un elenco di valore presenti in una condizione <strong>IN</strong> ? In Pandas, questa operazione, avviene attraverso il metodo <strong>.isin()</strong>. Per avere invece una qualsiasi condizione al rovescio (la negazione) va usato il simbolo ~.

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select * from airports where type in ('heliport', 'balloonport')</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports[airports.type.isin(['heliport', 'balloonport'])]</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select * from airports where type not in ('heliport', 'balloonport')</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports[~airports.type.isin(['heliport', 'balloonport'])]</pre>
</td>
<td></td>
</tr>
</tbody>
</table>

<h2>GROUP BY, COUNT, ORDER BY</h2>

Il raggruppamento è semplice: lo si ottine con l'operatore <strong>.groupby()</strong>. C'è una sottile differenza semantica fra il COUNT in SQL e quello in Pandas. In Pandas, <strong>.count()</strong> restituisce il numero di valori univoci. Per ottenere lo stesso risultato di SQL COUNT, invece va utilizzato <strong>.size()</strong>.

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select iso_country, type, count(*) from airports group by iso_country, type order by iso_country, type</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports.groupby(['iso_country', 'type']).size()</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select iso_country, type, count(*) from airports group by iso_country, type order by iso_country, count(*) desc</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports.groupby(['iso_country', 'type']).size().to_frame('size').reset_index().sort_values(['iso_country', 'size'], ascending=[True, False])</pre>
</td>
</tr>
</tbody>
</table>

Qui sotto ecco come si raggruppa su più di un campo. Pandas, come impostazione predefinita, ordina i dati seguendo l'elenco dei campi, pertanto non è necessario usare il <strong>.sort_values()</strong> come nel primo esempio. Se si vogliono invece utilizzare diversi campi per l'ordinamento, o con <strong>DESC</strong> invece di <strong>ASC</strong>, come nel secondo esempio, allora si deve essere più espliciti:

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select iso_country, type, count(*) from airports group by iso_country, type order by iso_country, type</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports.groupby(['iso_country', 'type']).size()</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select iso_country, type, count(*) from airports group by iso_country, type order by iso_country, count(*) desc</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports.groupby(['iso_country', 'type']).size().to_frame('size').reset_index().sort_values(['iso_country', 'size'], ascending=[True, False])</pre>
</td>
</tr>
</tbody>
</table>

A cosa serve il trucco con <strong>.to_frame()</strong> e <strong>.reset_index()</strong>? Dovendo ordinare per il nuovo campo calcolato (<strong>size</strong>), è necessario trasformalo in un <strong>DataFrame</strong>. Dopo aver applicato l'operazione di raggruppamento in Pandas, si ottiene un nuovo tipo dal nome <strong>GroupByObject</strong>. Pertanto è necessario riconvertirlo in un <strong>DataFrame</strong>. Attraverso <strong>.reset_index()<strong>, si riapplica la numerazione delle righe per il dataframe.</strong></strong>

<h2>HAVING</h2>

In SQL, è possibile filtrare i dati raggruppati usando la condizione HAVING. In Pandas, si può utilizzare <strong>.filter()</strong> e fornire una funzione Python (o una lambda) che restituirà <strong>True</strong> qualora il gruppo debba essere incluso nel risultato.

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select type, count(*) from airports where iso_country = 'US' group by type having count(*) &gt; 1000 order by count(*) desc</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">airports[airports.iso_country == 'US'].groupby('type').filter(lambda g: len(g) &gt; 1000).groupby('type').size().sort_values(ascending=False)</pre>
</td>
</tr>
</tbody>
</table>

<h2>I primi N record</h2>

Si assuma di avere fatto alcune query preliminari e di avere ora un dataframe dal nome <strong>by_country</strong>, che contiene il numero di aeroporti per paese:

<img class="size-full wp-image-107952 aligncenter" src="http://de.straba.us/wp-content/uploads/2018/03/07BtzYznnc0Eu5Ghv.png" alt="" width="546" height="298" />

L'esempio successivo ordina l'elenco per <strong>airport_count</strong> e seleziona solo i primi 10 paesi con il conteggio maggiore.
Il secondo esempio è quello con il caso più complicato, in cui si vogliono ordinare "i prossimi 10 dopo i primi 10":

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select iso_country from by_country order by size desc limit 10</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python">by_country.nlargest(10, columns='airport_count')</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select iso_country from by_country order by size desc limit 10 offset 10</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="python"><code>by_country.nlargest(20, columns='airport_count').tail(10)</code></pre>
</td>
</tr>
</tbody>
</table>

<h2>funzioni di aggregazione (MIN, MAX, MEAN)</h2>

ora, a partire da questo dataframe (runways)

<img class="aligncenter size-full wp-image-107953" src="http://de.straba.us/wp-content/uploads/2018/03/0dl1ZaGt2fYUDlfIL.png" alt="" width="412" height="168" />

la lunghezza minima, massima, media e mediana del campo runways è calcolata in questo modo:

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select max(length_ft), min(length_ft), mean(length_ft), median(length_ft) from runways</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">runways.agg({'length_ft': ['min', 'max', 'mean', 'median']})</pre>
</td>
</tr>
</tbody>
</table>

Si può notare che mentre in SQL, ogni statistica è rappresentata in una colonna, in Pandas invece sono rappresentati su ogni riga.

<img class="aligncenter size-full wp-image-107953" src="http://de.straba.us/wp-content/uploads/2018/03/0dl1ZaGt2fYUDlfIL.png" alt="" width="412" height="168" />

Non c'è nulla cui preoccuparsi: si può facilmente trasporre il dataframe con <strong>.T</strong> per ottenere il risultato in colonne:

<img class="aligncenter size-full wp-image-107954" src="http://de.straba.us/wp-content/uploads/2018/03/05uJqmyB2KdwpsoY5.png" alt="" width="155" height="136" />

<h2>JOIN</h2>

Attraverso <strong>.merge()</strong> si uniscono i dataframe Pandas. Per farlo è necessario indicare quale è la colonna da unire (left_on e right_on), e il tipo di unione: <strong>inner</strong> (predefinito), <strong>left</strong> (che corrisponde a LEFT OUTER in SQL), <strong>right</strong> (RIGHT OUTER), o <strong>outer</strong> (FULL OUTER).

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select airport_ident, type, description, frequency_mhz from airport_freq join airports on airport_freq.airport_ref = airports.id where airports.ident = 'KLAX'</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">airport_freq.merge(airports[airports.ident == 'KLAX'][['id']], left_on='airport_ref', right_on='id', how='inner')[['airport_ident', 'type', 'description', 'frequency_mhz']]</pre>
</td>
</tr>
</tbody>
</table>

<h2>UNION ALL e UNION</h2>

si utilizza <strong>pd.concat()</strong> per ottenere la funzione UNION ALL fra due dataframe:

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">select name, municipality from airports where ident = 'KLAX' union all select name, municipality from airports where ident = 'KLGB'</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">pd.concat([airports[airports.ident == 'KLAX'][['name', 'municipality']], airports[airports.ident == 'KLGB'][['name', 'municipality']]])</pre>
</td>
</tr>
</tbody>
</table>

Per deduplicare i risultati (l'equivalente di &lt;strong&lt;UNION), va aggiunto anche <strong>.drop_duplicates()</strong>.

<h2>INSERT</h2>

Fino a qui è stato mostrato come interrogare i dati, ma, nel processo delle analisi esplorative, si può avere anche la necessità di modificarli.
Cosa si deve fare per aggiungere record mancanti?

In Pandas non esiste un qualcosa come <strong>INSERT</strong>. Pertanto è necessario creare un nuovo dataframe contenente i nuovi record e quindi concatenarlo con l'altro:

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">create table heroes (id integer, name text);</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">df1 = pd.DataFrame({'id': [1, 2], 'name': ['Harry Potter', 'Ron Weasley']})</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">insert into heroes values (1, 'Harry Potter');</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">df2 = pd.DataFrame({'id': [3], 'name': ['Hermione Granger']})</pre>
</td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">insert into heroes values (2, 'Ron Weasley');</pre>
</td>
<td></td>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">insert into heroes values (3, 'Hermione Granger');</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">pd.concat([df1, df2]).reset_index(drop=True)</pre>
</td>
</tr>
</tbody>
</table>

<h2>UPDATE</h2>

ed ora come correggere alcuni dati errati nel dataframe originale:

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">update airports set home_link = 'http://www.lawa.org/welcomelax.aspx' where ident == 'KLAX'</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">airports.loc[airports['ident'] == 'KLAX', 'home_link'] = 'http://www.lawa.org/welcomelax.aspx'</pre>
</td>
</tr>
</tbody>
</table>

<h2>DELETE</h2>

Il modo più semplice (e il più leggibile) per "cancellare" dati da un dataframe di Pandas è di suddividere il dataframe nelle righe che da mantenere. In alternativa, si può ottenere gli indici delle righe da eliminare e da utilizzare con <strong>.drop()</strong>:

<table>
<tbody>
<tr>
<th>SQL</th>
<th>Pandas</th>
</tr>
<tr>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">delete from lax_freq where type = 'MISC'</pre>
</td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">lax_freq = lax_freq[lax_freq.type != 'MISC']</pre>
</td>
</tr>
<tr>
<td></td>
<td>
<pre class="EnlighterJSRAW" data-enlighter-language="sql">lax_freq.drop(lax_freq[lax_freq.type == 'MISC'].index)</pre>
</td>
</tr>
</tbody>
</table>

<h2>Immutabilità</h2>

Va detta una cosa importante: immutabilità. Per impostazione predefinita, la maggior parte degli operatori applicati a un dataframe Pandas restituiscono un nuovo oggetto. Alcuni operatori accettano un parametro <strong>inplace = True</strong>, quindi si può lavorare con il dataframe originale. Ad esempio, ecco come ripristinare un indice al suo posto:

<pre class="EnlighterJSRAW" data-enlighter-language="python">df = df.reset_index(drop=True, inplace=True)</pre>

Tuttavia, l'operatore <strong>.loc</strong> mostrato nel precedente esempio per l'UPDATE individua gli indici dei record per gli aggiornamenti e i valori vengono modificati sul posto.
Inoltre, se si ha aggiornato tutti i valori in una colonna:

<pre class="EnlighterJSRAW" data-enlighter-language="python">df['url'] = 'http://google.com'</pre>

o aggiungere una nuova colonna calcolata:

<pre class="EnlighterJSRAW" data-enlighter-language="python">df['total_cost'] = df['price'] * df['quantity']</pre>

tutto questo accade sul posto.

<strong>Ed altro</strong>
La cosa più bella di Pandas è che è più di un semplice motore di interrogazione dati. Si possono fare molte altre cose con i dati, come:

<ul>
    <li>
<pre class="EnlighterJSRAW" data-enlighter-language="python"> 
df.to_csv(...) # file csv
df.to_hdf(...) # file HDF5
df.to_pickle(...) # oggetti serializzati
df.to_sql(...) # su un database SQL
df.to_excel(...) # su foglio Excel
df.to_json(...) # in una stringa JSON
df.to_html(...) # rappresentati in un tabella HTML
df.to_feather(...) # binario feather-format
df.to_latex(...) # tabella d'ambiente tabulare
df.to_stata(...) # file binari in Stata
df.to_msgpack(...) # oggetto (serializzato) msgpack
df.to_gbq(...) # in una tabella Google BigQuery
df.to_string(...) # in un output tabella console-friendly tabular
df.to_clipboard(...) # appunti che possono essere copiati in Excel
</pre>
</li>
    <li>Disegnati
<pre class="EnlighterJSRAW" data-enlighter-language="python">
top_10.plot(
    x='iso_country',
    y='airport_count',
    kind='barh',
    figsize=(10, 7),
    title='Top 10 countries with most airports')
</pre>
in modo d'avere grafici davvero carini!

<img class="aligncenter size-full wp-image-107959" src="http://de.straba.us/wp-content/uploads/2018/03/0wiV3vIJWP7_c3sT7.png" alt="" width="603" height="421" /></li>
    <li>Condividere
Il miglior mezzo modo per condividere risultati di query di Pandas, grafici e cose come questo sono i notebook Jupyter (<a href="http://jupyter.org/">http://jupyter.org/</a>). Tant'è che, alcune persone (come il soprendente Jake Vanderplas), pubblicano interi libri come notebook Jupyter: <a href="https://github.com/jakevdp/PythonDataScienceHandbook">https://github.com/jakevdp/PythonDataScienceHandbook</a>.È così facile creare un nuovo notebook:
<pre class="EnlighterJSRAW" data-enlighter-language="shell">$ pip install jupyter
$ jupyter notebook</pre>
Successivamente:
<ul>
    <li>aprire l'indirizzo web localhost:8888</li>
    <li>premere su "Nuovo" e dare un nome al notebook</li>
    <li>interrogare e visualizzare i dati</li>
    <li>creare un repository GitHub e aggiungere il notebook (il file con estensione .ipynb)</li>
</ul>
GitHub ha un fantastico visualizzatore integrato per i notebook Jupyter con formattazione Markdown.</li>
</ul>

<h2>Ed ora che abbia inizio il viaggio con Pandas!</h2>

Spero che ora di aver convinto che la libreria Pandas può essere utile a te e al tuo vecchio amico SQL ai fini dell'analisi esplorativa dei dati - e in alcuni casi, anche meglio. 
È arrivato il momento di mettere le mani su alcuni dati da interrogare!

<a href="http://coderburst.io"><img src="http://de.straba.us/wp-content/uploads/2018/03/1i3hPOj27LTt0ZPn5TQuhZg.png" alt="" width="1000" height="37" class="aligncenter size-full wp-image-107961" /></a>
Articolo di Irina Truong