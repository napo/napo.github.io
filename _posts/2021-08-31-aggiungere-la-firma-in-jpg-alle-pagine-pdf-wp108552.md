---
layout: post
title: "Aggiungere un watermark alle pagine PDF"
date: "2021-08-31 16:24:35"
permalink: "/aggiungere-la-firma-in-jpg-alle-pagine-pdf/"
original_url: "https://de.straba.us/aggiungere-la-firma-in-jpg-alle-pagine-pdf/"
render_with_liquid: false
categories:
  - "software libero"
tags:
  - "bash"
  - "pdftk"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2021/08/Selection_185.png" alt="Aggiungere un watermark alle pagine PDF" /></figure>

<!-- wp:paragraph -->
<p>Arriva il PDF con il contratto e mi chiedono di firmarlo.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Faccio presente che ho la firma digitale e che quindi posso creare un PDF con firma (<a href="https://www.bucap.it/news/approfondimenti-tematici/firma-digitale/firma-pades.htm">PAdES</a>) mi informano però che vogliono che dimostro di aver letto ogni pagina e, su questa, aver messo la firma.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il PDF non è altro che una lunga tabella di oggetti che fanno parte dell'acquisto e che, giustamente, mi si chiede di verificare una alla volta.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Leggo, verifico e mi preparo la firma ma ... il fornitore vuole che ci sia l'immagine che dichiara che ho letto ogni pagina.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Decido quindi di fare l'operazione con uno script bash, <a href="https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/">pdftk</a> e <a href="https://imagemagick.org/index.php">imagemagik</a> seguendo questi passaggi</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>le pagine sono 15 e quindi con pdftk estraggo una pagina alla volta</li><li>convert non vuole farmi fare la conversione del pdf in jpg, quindi passo prima per il formato ppm prendendo una pagina alla volta</li><li>mi credo una directory dove inserire i file creati con la firma (signed)</li><li>attraverso imagemagik inserisco in basso a destra una immagine (in questo caso la mia firma in png con sfondo trasparente) su ogni singola pagina</li><li>unisco tutti i file in un solo file (documento_firmato.pdf) che andrò invece poi a firmare con firma digitale</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Ecco qui lo script</p>
<!-- /wp:paragraph -->

<!-- wp:enlighter/codeblock {"language":"shell"} -->
<pre class="EnlighterJSRAW" data-enlighter-language="shell" data-enlighter-theme="" data-enlighter-highlight="" data-enlighter-linenumbers="" data-enlighter-lineoffset="" data-enlighter-title="" data-enlighter-group="">for i in `seq 1 15`; 
do 
 pdftk documento.pdf cat "$i" output "$i.pdf"; 
done

for i in `seq 1 15`; 
do 
  pdftoppm $i.pdf &amp;gt; $i.ppm; 
done

mkdir signed

for i in `seq 1 15`; 
do 
  convert "$i.ppm" ~/Documents/me/firma.png -density 600 -quality 100  -gravity southeast -geometry +20+20 -composite signed/"$i"_signed.jpg; 
done

pdftk signed/*.pdf cat output documento_firmato.pdf</pre>
<!-- /wp:enlighter/codeblock -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->