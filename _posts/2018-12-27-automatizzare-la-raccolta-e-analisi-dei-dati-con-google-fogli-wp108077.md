---
layout: post
title: "Automatizzare la raccolta e analisi dei dati con Google Fogli"
date: "2018-12-27 12:55:18"
permalink: "/automatizzare-la-raccolta-e-analisi-dei-dati-con-google-fogli/"
original_url: "https://de.straba.us/automatizzare-la-raccolta-e-analisi-dei-dati-con-google-fogli/"
render_with_liquid: false
categories:
  - "dataviz"
  - "google"
  - "opendata"
tags:
  - "automation"
  - "dataviz"
  - "google spreadsheet"
  - "howto"
  - "open data"
  - "recipe"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2018/12/1W-6_Q60DJ8siqyvQnUCjfQ.png" alt="Automatizzare la raccolta e analisi dei dati con Google Fogli" /></figure>

<p id="59a2" class="graf graf--p graf-after--h3"><a class="markup--anchor markup--p-anchor" href="https://docs.google.com/spreadsheets/u/0/?tgif=d" target="_blank" rel="nofollow noopener" data-href="https://docs.google.com/spreadsheets/u/0/?tgif=d">Google Fogli</a> (o se preferiamo Google Spreadsheet) ha una serie di funzioni "magiche" attraverso cui creare dati tabellari andando a recuperarli da risorse web o già preconfezionate (es. CSV) o strutturate in RSS o HTML o XML.</p>

<p id="bba1" class="graf graf--p graf-after--p">I comandi magici di cui parlo sono, nello specifico:</p>

<p id="719b" class="graf graf--p graf-after--p"><a class="markup--anchor markup--p-anchor" href="https://support.google.com/docs/answer/3093335?hl=it" target="_blank" rel="nofollow noopener" data-href="https://support.google.com/docs/answer/3093335?hl=it"><em class="markup--em markup--p-em">IMPORTDATA(url)</em></a>
con questo è possibile importare un qualsiasi file CSV o TSV direttamente in un foglio di Google</p>

<figure id="e75d" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="aspectRatioPlaceholder-fill"></div>
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*qsKp0PDhQO-WU-3q926IuA.gif" data-width="789" data-height="418" data-action="zoom" data-action-value="1*qsKp0PDhQO-WU-3q926IuA.gif" data-scroll="native"></div>
</div>

</figure>
<figure id="e75d" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*qsKp0PDhQO-WU-3q926IuA.gif" data-width="789" data-height="418" data-action="zoom" data-action-value="1*qsKp0PDhQO-WU-3q926IuA.gif" data-scroll="native"><img class="progressiveMedia-image js-progressiveMedia-image" src="https://cdn-images-1.medium.com/max/800/1*qsKp0PDhQO-WU-3q926IuA.gif" data-src="https://cdn-images-1.medium.com/max/800/1*qsKp0PDhQO-WU-3q926IuA.gif" /></div>
</div>

</figure>

<p id="27d6" class="graf graf--p graf-after--figure"><a class="markup--anchor markup--p-anchor" href="https://support.google.com/docs/answer/3093342?hl=it&amp;ref_topic=3105411" target="_blank" rel="nofollow noopener" data-href="https://support.google.com/docs/answer/3093342?hl=it&amp;ref_topic=3105411"><em class="markup--em markup--p-em">IMPORTFEED(url; [query]; [intestazioni]; [numero_elementi])</em></a>
permette di recuperare i contenuti di un feed rss</p>

<figure id="4234" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="aspectRatioPlaceholder-fill"></div>
<div class="progressiveMedia js-progressiveMedia graf-image is-imageLoaded is-canvasLoaded" data-image-id="1*o2ZKvxCwGy2WiPUzazj70w.gif" data-width="789" data-height="418" data-action="zoom" data-action-value="1*o2ZKvxCwGy2WiPUzazj70w.gif" data-scroll="native"></div>
</div>

</figure>
<figure id="4234" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="progressiveMedia js-progressiveMedia graf-image is-imageLoaded is-canvasLoaded" data-image-id="1*o2ZKvxCwGy2WiPUzazj70w.gif" data-width="789" data-height="418" data-action="zoom" data-action-value="1*o2ZKvxCwGy2WiPUzazj70w.gif" data-scroll="native"><img class="progressiveMedia-image js-progressiveMedia-image" src="https://cdn-images-1.medium.com/max/800/1*o2ZKvxCwGy2WiPUzazj70w.gif" data-src="https://cdn-images-1.medium.com/max/800/1*o2ZKvxCwGy2WiPUzazj70w.gif" /></div>
</div>

</figure>

<p id="20cc" class="graf graf--p graf-after--figure"><a class="markup--anchor markup--p-anchor" href="https://support.google.com/docs/answer/3093339?hl=it&amp;ref_topic=3105411" target="_blank" rel="nofollow noopener" data-href="https://support.google.com/docs/answer/3093339?hl=it&amp;ref_topic=3105411"><em class="markup--em markup--p-em">IMPORTHTML(url; query; indice)</em></a>
importa i contenuti presenti in tabelle o elenchi di una pagina HTML di un sito web</p>

<figure id="4f4c" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="aspectRatioPlaceholder-fill"></div>
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*Nhb-nJ0hQislrBQs0CHG_A.gif" data-width="789" data-height="418" data-is-featured="true" data-action="zoom" data-action-value="1*Nhb-nJ0hQislrBQs0CHG_A.gif" data-scroll="native"></div>
</div>

</figure>
<figure id="4f4c" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*Nhb-nJ0hQislrBQs0CHG_A.gif" data-width="789" data-height="418" data-is-featured="true" data-action="zoom" data-action-value="1*Nhb-nJ0hQislrBQs0CHG_A.gif" data-scroll="native"><img class="progressiveMedia-image js-progressiveMedia-image" src="https://cdn-images-1.medium.com/max/800/1*Nhb-nJ0hQislrBQs0CHG_A.gif" data-src="https://cdn-images-1.medium.com/max/800/1*Nhb-nJ0hQislrBQs0CHG_A.gif" /></div>
</div>

</figure>

<p id="9259" class="graf graf--p graf-after--figure"><a class="markup--anchor markup--p-anchor" href="https://support.google.com/docs/answer/3093342?hl=it&amp;ref_topic=3105411" target="_blank" rel="nofollow noopener" data-href="https://support.google.com/docs/answer/3093342?hl=it&amp;ref_topic=3105411"><em class="markup--em markup--p-em">IMPORTXML(url; query_xpath)</em></a>
permette di recuperare le informazioni contenuti in documenti XML online attraverso <a class="markup--anchor markup--p-anchor" href="https://www.w3schools.com/xml/xpath_intro.asp" target="_blank" rel="nofollow noopener" data-href="https://www.w3schools.com/xml/xpath_intro.asp">XPath</a></p>

<figure id="99c5" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="aspectRatioPlaceholder-fill"></div>
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*jTEtMMfOYxsKkdU5vpNvVA.gif" data-width="789" data-height="418" data-action="zoom" data-action-value="1*jTEtMMfOYxsKkdU5vpNvVA.gif" data-scroll="native"></div>
</div>

</figure>
<figure id="99c5" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*jTEtMMfOYxsKkdU5vpNvVA.gif" data-width="789" data-height="418" data-action="zoom" data-action-value="1*jTEtMMfOYxsKkdU5vpNvVA.gif" data-scroll="native"><img class="progressiveMedia-image js-progressiveMedia-image" src="https://cdn-images-1.medium.com/max/800/1*jTEtMMfOYxsKkdU5vpNvVA.gif" data-src="https://cdn-images-1.medium.com/max/800/1*jTEtMMfOYxsKkdU5vpNvVA.gif" /></div>
</div>

</figure>

<p id="9c11" class="graf graf--p graf-after--figure">attraverso queste funzioni i dati entrano nel foglio di calcolo e possono essere poi elaborati per creare grafici o calcoli o integrazioni ecc…</p>

<figure id="ae01" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="aspectRatioPlaceholder-fill"></div>
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*E3vTum8C5ti95-g8exj5yA.gif" data-width="866" data-height="563" data-action="zoom" data-action-value="1*E3vTum8C5ti95-g8exj5yA.gif" data-scroll="native"></div>
</div>

</figure>
<figure id="ae01" class="graf graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked">
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*E3vTum8C5ti95-g8exj5yA.gif" data-width="866" data-height="563" data-action="zoom" data-action-value="1*E3vTum8C5ti95-g8exj5yA.gif" data-scroll="native"><img class="progressiveMedia-image js-progressiveMedia-image" src="https://cdn-images-1.medium.com/max/800/1*E3vTum8C5ti95-g8exj5yA.gif" data-src="https://cdn-images-1.medium.com/max/800/1*E3vTum8C5ti95-g8exj5yA.gif" /></div>
</div>

<figcaption class="imageCaption">da tabella a grafico condivisibile online</figcaption>

</figure>
<figure id="8dd1" class="graf graf--figure graf-after--figure">

<div class="aspectRatioPlaceholder is-locked">
<div class="aspectRatioPlaceholder-fill"></div>
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*qGtL9h-ltsDosGRvRUyqcA.gif" data-width="866" data-height="563" data-action="zoom" data-action-value="1*qGtL9h-ltsDosGRvRUyqcA.gif" data-scroll="native"></div>
</div>

</figure>
<figure id="8dd1" class="graf graf--figure graf-after--figure">

<div class="aspectRatioPlaceholder is-locked">
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*qGtL9h-ltsDosGRvRUyqcA.gif" data-width="866" data-height="563" data-action="zoom" data-action-value="1*qGtL9h-ltsDosGRvRUyqcA.gif" data-scroll="native"><img class="progressiveMedia-image js-progressiveMedia-image" src="https://cdn-images-1.medium.com/max/800/1*qGtL9h-ltsDosGRvRUyqcA.gif" data-src="https://cdn-images-1.medium.com/max/800/1*qGtL9h-ltsDosGRvRUyqcA.gif" /></div>
</div>

<figcaption class="imageCaption">pubblicazione del grafico come immagine accessibile per il web</figcaption>

</figure>

<p id="b3b4" class="graf graf--p graf-after--figure">Il foglio di calcolo creato può essere aggiornato in automatico direttamente dalle impostazioni di Google Fogli.</p>

<figure id="1114" class="graf graf--figure graf-after--p graf--trailing">

<div class="aspectRatioPlaceholder is-locked">
<div class="aspectRatioPlaceholder-fill"></div>
<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*W-6_Q60DJ8siqyvQnUCjfQ.png" data-width="4231" data-height="3510" data-action="zoom" data-action-value="1*W-6_Q60DJ8siqyvQnUCjfQ.png" data-scroll="native"></div>
</div>

</figure>
<img class="progressiveMedia-image js-progressiveMedia-image" src="https://cdn-images-1.medium.com/max/800/1*W-6_Q60DJ8siqyvQnUCjfQ.png" data-src="https://cdn-images-1.medium.com/max/800/1*W-6_Q60DJ8siqyvQnUCjfQ.png" />

<p><a href="https://medium.com/p/3f1eca078556">Versione originale su Medium</a></p>
