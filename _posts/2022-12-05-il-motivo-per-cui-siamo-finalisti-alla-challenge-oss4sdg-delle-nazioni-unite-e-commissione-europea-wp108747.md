---
layout: post
title: "Il motivo per cui siamo finalisti alla challenge OSS4SDG delle Nazioni Unite e Commissione Europea"
date: "2022-12-05 17:24:33"
permalink: "/il-motivo-per-cui-siamo-finalisti-alla-challenge-oss4sdg-delle-nazioni-unite-e-commissione-europea/"
original_url: "https://de.straba.us/il-motivo-per-cui-siamo-finalisti-alla-challenge-oss4sdg-delle-nazioni-unite-e-commissione-europea/"
render_with_liquid: false
categories:
  - "civic hacking"
  - "funny"
  - "gis"
  - "maps"
  - "openstreetmap"
tags:
  - "bikeability"
  - "bikeimprover"
  - "challenge"
  - "citizen engagement"
  - "fbk"
  - "gamification"
  - "opendata"
  - "PUMS"
  - "SDG"
  - "un"
---

<figure class="featured-image"><img src="https://de.straba.us/wp-content/uploads/2022/12/Clusters.png" alt="Il motivo per cui siamo finalisti alla challenge OSS4SDG delle Nazioni Unite e Commissione Europea" /></figure>

<!-- wp:paragraph -->
<p>EDIT:<br>siamo arrivati SECONDI!!</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La storia che stai per leggere è quella di un software che abilita il citizen engagement per migliorare la raccolta dei dati della ciclabilità urbana e che è fra le 8 finaliste del concorso <a rel="noreferrer noopener" href="https://ideas.unite.un.org/sdg11/Page/Overview" target="_blank">Open Source Software for Sustainable Development Goals</a> - Sustainable Cities &amp; Communities organizzato dalle Nazioni Unite e  Commissione Europea (l'obiettivo è il numero 11: città e comunità sostenibili)</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108751,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2022/12/Banner_Landing_page__1663851188117.png" alt="" class="wp-image-108751"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><br>Potrei raccontarla così , ma preferisco invece presentarla nella sua genesi perché è una bella storia che che unisce fra loro idee e progetti di diverse persone.<br>Il protagonista è quindi  <a href="https://www.linkedin.com/in/francesco-weikmann-8494a8252/">Francesco Weikmann</a>, al tempo, era uno studente dell'università di Trento che, quando stava per finire il suo percorso di studi in informatica, ha bussato alla mia porta per uno stage da evolvere eventualmente in una tesi.  Lui è arrivato a me tramite <a href="http://www.lucaturchet.it/it/biografia/biografia-lunga.html">Luca</a> docente del corso <a href="https://webapps.unitn.it/du/it/Persona/PER0212718/Didattica">Human Computer Interaction al Dipartimento di Ingegneria e Scienza dell'Informazione dell'Università di Trento</a> che spesso  indirizza studenti al collaborare con me nell'unità <a href="https://dcl.fbk.eu" target="_blank" rel="noreferrer noopener">DCL</a> (Digital Commons Lab) di FBK.<br>La prima volta che ho incontrato Francesco ho chiesto subito quali fossero le sue aspirazioni in modo da capire cosa offrire come stage.  Lui, probabilmente spiazzato dall'opportunità di cercare di unire le sue aspirazioni con uno stage, mi ha espresso il suo desiderio di diventare uno sviluppatore di videogiochi.<br>Da lì lo ho inondato delle tante idee che conserve nel cassetto in merito a mappe e videogiochi e l'idea di usare la gamification per migliorare la raccolta dati di OpenStreetMap.<br>Idea non nuova che ha la si vede già implementata in progetti come <a rel="noreferrer noopener" href="https://github.com/kort/kort" target="_blank">Kort</a>, <a rel="noreferrer noopener" href="http://streak.osmz.ru/" target="_blank">OSM Streak,</a> <a rel="noreferrer noopener" href="https://mapcraft.nanodesu.ru/" target="_blank">Map Craft</a> e <a rel="noreferrer noopener" href="https://streetcomplete.app/" target="_blank">StreetComplete</a> (quest'ultimo senza ombra di dubbio quello di maggiore successo) ma comunque sofferenti un po' per carenza di utenti un po' per essere troppo generici.<br>L'idea che avevo in mente era quella di utilizzare il motore di gamification dei colleghi dell'unità <a rel="noreferrer noopener" href="https://modis.fbk.eu/" target="_blank">MODIS</a> di FBK - gruppo che indaga metodologie e tecniche avanzate a supporto del coinvolgimento, della motivazione e del cambiamento comportamentale degli utenti.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Davanti a questa idea gli occhi di Francesco brillavano e, al mio <em>"Pensa un po'! Potresti realizzare un qualcosa che aiuta una pubblica amministrazione ad avere dati aggiornati facendo giocare le persone",</em> la sua risposta fu <em>"Eh! MICA MALE!".</em><br>E così, da quel giorno, Francesco ha lavorato al progetto cominciando a dialogare con Luca, <a rel="noreferrer noopener" href="https://modis.fbk.eu/author/modis_admin/" target="_blank">Antonio</a> (del gruppo <a href="https://modis.fbk.eu" target="_blank" rel="noreferrer noopener">MODIS</a>) e me.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Di fatto Francesco ha unito i nostri saperi cominciando a creare le basi della sua applicazione che non è altro che una app per lo smarphone che presenta una serie di domande geolocalizzate a cui rispondere per raccogliere dati (esattamente come fa StreetComplete) con l'idea però di essere utilizzata in ambito urbano, in un periodo di tempo ristretto e rivolta su una sola tipologia di dato.<br>Lo scenario di fondo è quello di organizzare della "Mapathon" dove i partecipanti girano in città rispodendo a domande per arricchire i dati dell'infrastruttura per la ciclabilità o per validare quanto raccolto acquistando punti per ricevere poi dei premi.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La scelta dell'argomento per cui l'applicazione si rivolge è quella del miglioramento della raccolta dei dati che descrivono la ciclabilità di una città. Questo perché, a seguito della mia esperienza con la mappa <a rel="noreferrer noopener" href="https://bicistressatedaltraffico.it" target="_blank">Bici Stressate dal Traffico</a> dove, con l'amico <a rel="noreferrer noopener" href="https://www.linkedin.com/in/matteofortini" target="_blank">Matteo Fortini</a>,  abbiamo calcolato e visualizzato per ogni strada d'Italia il livello di stress per un ciclista legato all'infrastruttura delle strade (e quindi non a dati come traffico auto o inquinamento), avevamo notato un forte interesse di quelle pubbliche amministrazioni che stanno investendo in P.U.M.S. (Piano Urbanistico Mobilità Sostenibile) dove partire dall'infrastruttura cittadina a misura di ciclista diventa uno dei cardini nello sviluppo.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108752,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="https://de.straba.us/wp-content/uploads/2022/12/bicistreessate.jpg" alt="" class="wp-image-108752"/><figcaption class="wp-element-caption">Created with GIMP</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Francesco, stimolato da Antonio, dalla lettura di articoli scientifici e dalla sua esperienza personale da videgiocatore, ha cominciato a disegnare tutto lo schema con cui si ottenevano i punti e come generare le domande.<br>Il tempo passava, il progetto prendeva forma, e intanto si avvicinava il momento della tesi. Da qui un primo prototipo con un primo test dei risultati della gamification usando lo storico dei dati di OpenStreetMap, poi, successivamente, un po' di test fatto da amici ... che sono bastati per Francesco per raggiungere l'obiettivo di laurearsi.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Solo che del progetto ci ne eravamo innamorati in tanti ed abbiamo deciso di lavorarci ancora qualche mese per arrivare ad un PoC da utilizzare con una sperimentazione o, comunque da proporre a pubbliche amministrazioni o associazioni che si interessano del tema e così, Francesco, ha passato altri 4 mesi con noi (dallo stage ad oggi Francesco ha dedicato 18 mesi del suo tempo al progetto).<br>Il progetto diventava sempre più bello con anche la possibilità di scegliere se utilizzare i dati da OpenStreetMap o da una pubblica amministrazione.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"left","id":108750,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image alignleft size-full"><img src="https://de.straba.us/wp-content/uploads/2022/12/Questions.png" alt="" class="wp-image-108750"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>L"idea ci piaceva tanto che appena abbiamo visto la challenge voluta da Nazioni Unite e Commissione Europa su soluzioni open source per gli obiettivi per lo sviluppo sostenibile con una traccia su applicazioni basate su OpenStreetMap, non ci abbiamo pensato due volte a sottomettere e di recente ci è stato detto che siamo stati selezionati fra gli otto finalisti. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ne premieranno quattro, e se saremo vincitori lo sapremo solo  il 7 Dicembre (e se siete curiosi ci potete seguire in <a rel="noreferrer noopener" href="https://www.youtube.com/watch?v=JjHiG0DJTjM" target="_blank">streaming</a> ).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><br>Nel frattempo l'invito è andare a visitare la pagina che spiega <a rel="noreferrer noopener" href="https://github.com/DigitalCommonsLab/bikingimprover" target="_blank">BikingImprover</a> (questo il nome scelto) dove puoi trovare <a rel="noreferrer noopener" href="https://docs.google.com/document/d/1WZByJ2fpNfX1I89BCJPFwTi1muwKX84cQAa3ABBLkHc/edit?usp=sharing" target="_blank">descrizione del progetto</a>, <a rel="noreferrer noopener" href="https://drive.google.com/file/d/1GkWwk5YkMv0IePnH0if-U5k2y349Ykgc/view?usp=sharing" target="_blank">slide</a>, <a rel="noreferrer noopener" href="https://drive.google.com/file/d/14lH2EOqcvlQlqfrdfaNT3S3AoQc3HDMO/view?usp=sharing" target="_blank">video tutorial per l'installazione</a> e <a rel="noreferrer noopener" href="https://drive.google.com/file/d/1y8Lin66vJZ9Ad7uO6CrAnXnDYc0SI0EZ/view?usp=sharing" target="_blank">video di presentazione</a>,</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tutto made by Francesco. "<em>Mica male no? " \</em></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>PS:&nbsp;<br>un grazie speciale a <a href="https://www.linkedin.com/in/riccardo-nanni-phd-181ba4136/" rel="noreferrer noopener" target="_blank">Riccardo Nanni</a> per tutto il supporto nell'organizzare al meglio i contenuti inviati per la challenge</p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/79ec5e7146f6536a.png" alt="Il motivo per cui siamo finalisti alla challenge OSS4SDG delle Nazioni Unite e Commissione Europea" /></figure>
<figure><img src="/assets/images/medium/1a7d9328cab6f821.jpg" alt="Il motivo per cui siamo finalisti alla challenge OSS4SDG delle Nazioni Unite e Commissione Europea" /></figure>
<figure><img src="/assets/images/medium/0b4079805f2af131.png" alt="Il motivo per cui siamo finalisti alla challenge OSS4SDG delle Nazioni Unite e Commissione Europea" /></figure>
<p><a href="https://medium.com/p/20c312518fec">Versione originale su Medium</a></p>
