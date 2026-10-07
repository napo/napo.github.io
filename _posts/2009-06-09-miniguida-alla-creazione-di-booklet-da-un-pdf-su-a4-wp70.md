---
layout: post
title: "Miniguida alla creazione di booklet da un pdf su A4"
date: "2009-06-09 18:12:05"
permalink: "/miniguida-alla-creazione-di-booklet-da-un-pdf-su-a4/"
original_url: "https://de.straba.us/miniguida-alla-creazione-di-booklet-da-un-pdf-su-a4/"
render_with_liquid: false
categories:
  - "software libero"
tags:
  - "bash"
  - "booklet"
  - "software libero"
---

<p>
</p>
<br/><br/><br/><br/>
<strong>Intro</strong>
Un booklet e' un libretto/fascicolo/opuscolo delle dimensioni di un foglio A5 (~metá A4).
Li si ottiene piegando uno o più fogli A4 piegati al centro, sul lato più lungo.
In questa piccola guida si presenta come trasformare un documento scritto su uno o più fogli A4 (l'importante e' che il numero di pagine sia un multiplo di 4) in un booklet.
La serie di tool presentati faranno il primo lavoro, il secondo dipende molto dalla stampante e da come gestisce la stampa fronte/retro

<img class="alignnone size-full wp-image-71" title="booklet" src="http://de.straba.us/wp-content/uploads/2009/06/booklet1.png" alt="booklet" width="452" height="527" />

<strong>Per i più pigri</strong>
I produttori del software "BookletGenerator" offrono un servizio online gratuito a questo indirizzo <a href="http://bookletcreator.com/">http://bookletcreator.com/</a>
Il servizio funziona egregiamente: upload del file e restituzione della versione booklet.
Unico dubbio: ma il mio documento pdf che fine fa una volta sul server?

<strong>Scripting con le psutils</strong>
Le <a href="http://www.tardis.ed.ac.uk/~ajcd/psutils/">psutils</a> sono una vecchissima raccolta di strumenti per la manipolazione del postscript a command line in grado di risolvere il nostro problema.
Fra i tool spicca il buon psbook, che già di suo e in grado di preparare le pagine per il nostro booklet, occorre pero fare uso di altri tool per fare in modo che le pagine abbiamo la giusta sequenza.
Ecco qui una sequenza "magica" per risolvere il nostro problema

<code>psbook in_file.ps | psnup -2 | psresize | pstops '2:0,U1(21cm,29.7cm)' &gt; booklet.ps</code>

<em>in_file.ps</em> é il file postscript in ingresso, mentre<em> booklet.ps</em> e' il risultato.
<em>psbook</em> crea il booklet, <em>psnup</em> mette due pagine per foglio, <em>psresize</em> ridimensiona le pagine su A4 e <em>pstops</em> si occupa di dare ordine sulla pagina.
<code>ps2pdf booklet.ps  booklet.pdf</code> poi per ottenere la versione pdf del booklet pronto per la stampa

Il vero problema, forse,é quello di avere un file in formato postscript.
A questo ci pensa l'utility <em>pdf2ps</em> (<span style="text-decoration: underline;">caldamente sconsigliato</span> l'uso di <span style="text-decoration: underline;">convert</span> del pacchetto imagemagik).
In alternativa é sufficiente inviare in "Stampa su file" il documento pdf

<strong>... e se proprio non riesco ad avere il postscript?</strong>
Se poi non c'é verso di creare il postscript, allora é possibile utilizzare l'utility <em>pdfbook</em>
Si tratta di un programma scritto in C che fa uso pero di LateX, pertanto, senza non può funzionare.
Sono poche le distribuzioni che lo rendono disponibile pacchettizzato, ma la compilazione del programma non  é cosí complessa da far impazzire un utente con un minimo di esperienza.
Basta scaricare i sorgenti dal sito <a href="http://www.ctan.org/tex-archive/support/pdfbook/">http://www.ctan.org/tex-archive/support/pdfbook/</a> e compilare usando il gcc (chiaramente, se non presente sul computer, c'é poco da fare).
Ecco qui la sequenza di comandi per i più pigri.
<code>
wget http://www.ctan.org/get/support/pdfbook.zip
unzip pdfbook.zip 
cc -o pdfbook pdfbook.c
sudo cp pdfbook /usr/bin
</code>
Considerando poi <em>in_file.pdf</em> come pdf in ingresso e <em>booklet.pdf</em> come risultato, il comando da eseguire si riduce a 
<code>pdfbook -2 in_file.pdf booklet.pdf</code>

<strong>Infine ... OpenOffice</strong>
Un documento in OpenOffice puo essere stampato a booklet seguendo questi comandi:
<code>File -> Stampa -> Proprietà</code>
Cambiare il foglio da <em>Portrait</em> a <em>Landscape</em> premere <code>Ok</code>
Premere su <code>Extra</code>, scegliere la voce <em>Depliant</em>, confermare con un <code>Ok</code> e mandare in stampa

Alcuni consigli per la lettura
<ul>
	<li>Norma su dimensione fogli di carta http://it.wikipedia.org/wiki/ISO_216</li>
	<li>Appunti di informatica libera: guida a psutils http://a2.pluto.it/a2273.htm</li>
</ul>