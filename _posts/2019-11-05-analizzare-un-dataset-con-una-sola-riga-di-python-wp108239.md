---
layout: post
title: "analizzare un dataset con una sola riga di python"
date: "2019-11-05 17:28:13"
permalink: "/analizzare-un-dataset-con-una-sola-riga-di-python/"
original_url: "https://de.straba.us/analizzare-un-dataset-con-una-sola-riga-di-python/"
render_with_liquid: false
categories:
  - "data science"
  - "opendata"
  - "software libero"
tags:
  - "datascience"
  - "pandas"
  - "python"
  - "reporting"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2019/11/Peek-2019-11-05-17-21.gif" alt="analizzare un dataset con una sola riga di python" /></figure>

<!-- wp:paragraph -->
<p>In questi giorni mi hanno girato una discreta quantità di dataset in formato shapefile (quindi geografici) da analizzare.<br>Come i tutti questi casi accade che molti dati sono incompleti, le variabili categoriali diverse e con tanti sinonimi, valori anomali nella distribuzione (d'altronde, se qualcuno inserisce le lunghezze in metri ed altri in centimetri nello stesso campo, cosa può accadere?) e molto altro ancora.<br>Da buon "spippolatore" ho cominciato a guardare i dati uno alla volta, aprendoli con QGIS.<br>Dovendo però guardare anche le tabelle degli attributi il tutto mi ha convinto ad utilizzare python con la classica configurazione da data scientist: (geo)pandas in jupyter notebook.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Da qui tutta una serie di istruzioni</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group=""># import dei moduli necessari
import geopandas as gpd
import numpy as np
# caricamento dello shapefile del Comune di Trento con gli incidenti in un geodataframe (geopandas)
incidenti = gpd.read_file("http://webapps.comune.trento.it/cartografia/gis/dbexport?db=base&amp;sc=vigili&amp;ly=incidenti&amp;fr=shp")
# informazioni sulle colonne
incidenti.info()
# descrizione delle colonne
incidenti.describe()
# descrizione delle colonne testuali
incidenti.describe(include=np.object)</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:paragraph -->
<p>con il fine di conoscere come è strutturato il dataset degli <a href="http://webapps.comune.trento.it/cartografia/gis/dbexport?db=base&amp;sc=vigili&amp;ly=incidenti&amp;fr=shp">incidenti georeferenziati del Comune di Trento</a> rilasciati in open data per arrivare ad una prima conclusione di avere una statistica del numero di incidenti per anno.</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">incidenti['anno'] = incidenti['anno'].fillna(0).astype({"anno":'int64'})
incidenti.groupby('anno').size().plot.bar(figsize=(15,15))</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:image {"id":108240} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/11/index.png" alt="" class="wp-image-108240"/><figcaption>numero di incidenti per anno registrati dal Comune di Trento</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>e da qui poi proseguire creando mappe di intensità</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">from colorcet import fire
import datashader as ds
from datashader import transfer_functions as tf
agg = ds.Canvas().points(incidenti, 'x_gps', 'y_gps')
tf.set_background(tf.shade(agg, cmap=fire),"black")</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:image {"id":108241} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/11/datashader_incidenti.png" alt="" class="wp-image-108241"/><figcaption>intensità dei punti degli incidenti a Trento dal 2002 al 2019</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>o interattive</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">import folium
x = incidenti.to_crs({"init": "epsg:4326"}).unary_union.envelope.centroid.x
y = incidenti.to_crs({"init": "epsg:4326"}).unary_union.envelope.centroid.y
m = folium.Map([y,x], zoom_start=11, tiles="stamenterrain")
for index, row  in incidenti.to_crs({"init": "epsg:4326"}).iterrows():
  folium.CircleMarker(
    location=[row.geometry.y,row.geometry.x],
    radius=1,
    color='red',
    fill=True,
    fill_color='orange'
  ).add_to(m)
folium.LayerControl(collapsed=False).add_to(m)
m</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:image {"id":108242} -->
<figure class="wp-block-image"><img src="http://de.straba.us/wp-content/uploads/2019/11/Selection_999914.png" alt="" class="wp-image-108242"/><figcaption>map  tiles by Stamen Design - under cc-by 3.0 - data © OpenStreetmap contributors</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>L'analisi per investigare i dati può portare così a continuare attraverso la chiamata di varie funzioni di pandas e geopandas.<br></p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2>Pandas Profiling</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Il problema è però comune a chiunque voglia investigare i dati e, se il metodo .describe() già dice qualcosa di utile, sicuramente qualcuno ha già pensato ad insieme di funzioni da mettere in batteria per produrre un report.<br>E così, con oggi, ho scoperto <a href="https://pandas-profiling.github.io/pandas-profiling/docs">pandas-profiling</a></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il suo uso è immediato:<br>una volta installato il pacchetto</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"shell"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="shell" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">pip install pandas_profiling</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:paragraph -->
<p>è sufficiente aggiungere il metodo <em>.profile_report()</em> ad un dataframe e magicamente compare un intera pagina HTML con un report molto completo!!!</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>nel mio caso sono davanti ad un geodataframe prodotto da geopandas e, pertanto lo devo "declassare" a dataframe usando pandas e rinunciando alla colonna delle geometrie</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">import pandas as pd
import pandas_profiling
df = pd.DataFrame(incidenti.drop(columns='geometry'))
df.profile_report(title='Incidenti a Trento',style={'full_width':True})</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:paragraph -->
<p>Si può anche decidere di salvare l'output su un file .html <br>qui il <a href="http://de.straba.us/report_incidenti_trento.html">risultato</a> </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108243} -->
<figure class="wp-block-image"><img src="https://i2.wp.com/de.straba.us/wp-content/uploads/2019/11/Peek-2019-11-05-17-21.gif?fit=1024%2C606" alt="" class="wp-image-108243"/><figcaption>gif animata con il report creato da pandas_profiling</figcaption></figure>
<!-- /wp:image -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">profile = df.profile_report(title='Report dataset incidenti Trento')
profile.to_file(output_file="output.html")</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:paragraph -->
<p>e nota ancora più meravigliosa è stato prodotto anche il comando per shell<br><code>pandas-profiling</code></p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>Nota per gli utenti Colab Google</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>qualora ne fate uso da <a href="http://colab.research.google.com">Colab di Google</a> il comando di installazione del modulo deve essere fatto con questa sintassi:</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">!pip install -U pandas-profiling</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:heading -->
<h2>Ok! Ma con una riga di python?</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Vediamo ora di mettere in pratica il tutto con "una" riga di python in ambiente jupyter notebook che preveda già l'installazione dei pacchetti pandas e pandas_profiling.<br>L"esempio di partenza è quello del csv con le Farmacie della <a href="https://dati.trentino.it/dataset/farmacie-pat">Provincia Autonoma di Trento</a>.<br>Il cui file si recupera a questo indirizzo <a href="http://servizi.apss.tn.it/opendata/FARM001.csv">http://servizi.apss.tn.it/opendata/FARM001.csv</a></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In python basta seguire queste istruzioni</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"python"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="python" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">import pandas
import pandas_profiling
pd.read_csv("http://servizi.apss.tn.it/opendata/FARM001.csv").profile_report()</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:html -->
l'istruzione
<p style="font-family: monospace">
pd.read_csv("<span style="color:purple">http://servizi.apss.tn.it/opendata/FARM001.csv</span>").profile_report()
</p>
è quella che produce l'intero report
<!-- /wp:html -->

<!-- wp:paragraph -->
<p><strong>nota</strong>: <br>guardando attentamente il report prodotto si scopre un errore nei dati:<br>le farmacie sono 175 e, per ciascuna, sono associati i valori di latitudine e longitudine.<br>Ci si aspetterebbe di avere 175 valori univoci per ciascun valore di latitudine e longitudine, invece sono 158.<br>Pertanto è molto probabile che ci siano diverse farmacie le cui coordinate risultano uguali.<br></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/07ae41d0f29defd1.png" alt="analizzare un dataset con una sola riga di python" /></figure>
<figure><img src="/assets/images/medium/8660c0ecca31ac14.png" alt="analizzare un dataset con una sola riga di python" /></figure>
<figure><img src="/assets/images/medium/5f3a6b5e9eaaecd8.png" alt="analizzare un dataset con una sola riga di python" /></figure>
<figure><img src="/assets/images/medium/3703b425607c508f.gif" alt="analizzare un dataset con una sola riga di python" /></figure>
<p><a href="https://medium.com/p/1b79958c38c2">Versione originale su Medium</a></p>
