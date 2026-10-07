---
layout: post
title: "Regione Abruzzo e Open Data: un po' di confusione di concetti"
date: "2015-08-11 10:29:55"
permalink: "/regione-abruzzo-e-open-data-un-po-di-confusione-di-concetti/"
original_url: "https://de.straba.us/regione-abruzzo-e-open-data-un-po-di-confusione-di-concetti/"
render_with_liquid: false
categories:
  - "opendata"
tags:
  - "licenze"
  - "opendata"
  - "regione abruzzo"
---

Se al supermercato chiedo il prosciutto cotto e mi incartano la mortadella (o viceversa), di sicuro non sono contento. Il commesso potrebbe avere anche la faccia tosta di dire "<em>Ma dai! Cosa cambia! Sono buoni entrambi con qualche piccola differenza</em>".
Nessuno lo mette in dubbio, ma le definizioni sono sempre importanti.
La buzzword "open data" ormai è diffusa da tempo, da molto tempo e molte sono state le azioni fatte negli ultimi anni e, nonostante tutto, c'è ancora chi confonde mortadella e prosciutto.
Il confuso di turno è il <a href="http://opendata.regione.abruzzo.it/">portale open data della Regione Abruzzo</a> dove, nella sezione <a href="http://opendata.regione.abruzzo.it/content/normativa-di-riferimento">"Normativa di riferimento"</a> presenta una cronistoria delle norme che hanno mosso l'open data in Italia.
Fra questi anche il CAD, dove, all'<a href="http://www.agid.gov.it/cad/analisi-comparativa-soluzioni">articolo 68</a> comma 3b1 dice

<blockquote>[...]
b) dati di tipo aperto, i dati che presentano le seguenti caratteristiche:
1) sono disponibili secondo i termini di una licenza che ne permetta l'utilizzo da parte di chiunque, anche per finalità <strong>commerciali</strong>, in formato disaggregato;
[...]</blockquote>

Di fatto quel <i>per finalità <strong>commerciali</strong></i> ha da sempre bandito licenze come la cc-by-nc (nc = no commercial).
<a href="http://opendata.regione.abruzzo.it/catalog/"><img class="  wp-image-99915 alignright" src="http://de.straba.us/wp-content/uploads/2015/08/licenze_regione_abruzzo.png" alt="licenze_regione_abruzzo" width="254" height="237" /></a>

Il catalogo però del portale open data della Regione Abruzzo sembra sostenere pesantemente questa licenza.

Riassumendo degli attuali 157 dataset disponibili si hanno:

<ul>
    <li>100 dataset rilasciati con licenza CC-BY-NC</li>
    <li>47 dataset rilasciati con licenza CC-BY</li>
    <li>9 dataset rilasciati con licenza IODL 2.0</li>
    <li>1 dataset privo di licenza</li>
</ul>

Considerando che IODL 2.0 è una licenza di attribuzione pari quanto la CC-BY, e che se la licenza non viene definita per l'articolo 52 del CAD il dataset è da ritenersi open data (e per le linee guida dell'AgID con licenza CC-BY 4.0), il risultato è che il<strong> 64% dei dataset</strong> esposti dal portale open data della <strong>regione Abruzzo</strong> <strong>NON sono open data</strong>.

<img class="  wp-image-99917 aligncenter" src="http://de.straba.us/wp-content/uploads/2015/08/distribuzione_licenze_portale_opendata_abruzzo.png" alt="distribuzione_licenze_portale_opendata_abruzzo" width="512" height="434" />

Entrando nei dettagli, questi 100 dataset, tutti di tipo territoriale (geodati):
si va dagli<a href="http://opendata.regione.abruzzo.it/tema/istituzione?page"> edifici scolastici</a> con tutte le informazioni sulla loro sicurezza, a <a href="http://opendata.regione.abruzzo.it/content/piano-di-volo-2011-regione-abruzzo">foto aeree</a> (ed anche con qualche<a href="http://opendata.regione.abruzzo.it/content/dbtr-regione-abruzzo-scala-125000-edizione-2007-formato-ecw"> dataset in formato proprietario</a>).

È davvero un vero peccato perchè, molti di quei dataset, sono di forte interesse di riuso (in primis in OpenStreetMap), ma ne restringono fortemente gli scenari.

#fail

Grazie a <a href="https://twitter.com/__sabas">Stefano Sabatini</a> per la segnalazione.