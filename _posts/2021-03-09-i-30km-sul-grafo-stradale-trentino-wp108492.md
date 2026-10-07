---
layout: post
title: "I 30km sul grafo stradale trentino"
date: "2021-03-09 17:39:45"
permalink: "/i-30km-sul-grafo-stradale-trentino/"
original_url: "https://de.straba.us/i-30km-sul-grafo-stradale-trentino/"
render_with_liquid: false
categories:
  - "me"
  - "opendata"
  - "openstreetmap"
  - "social innovation"
tags:
  - "30cappa"
  - "Trentino"
---

<!-- wp:heading -->
<h2>Introduzione</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Era metà dicembre 2020 ed usciva il "<a href="https://www.gazzettaufficiale.it/eli/id/2020/12/18/20G00196/s" data-type="URL" data-id="https://www.gazzettaufficiale.it/eli/id/2020/12/18/20G00196/s">Decreto di Natale</a>" che definiva giorni gialli, arancio e rossi con le regole sullo spostamento.<br>Nel decreto una frase sibillina che recita "<em>sono altresì consentiti gli spostamenti dai comuni con popolazione non superiore a 5.000 abitanti e per una distanza non superiore a 30 chilometri dai relativi confini, con esclusione in ogni caso degli spostamenti verso i capoluoghi di provincia.</em>"<br>da lì, assieme agli amici <a href="https://twitter.com/aborruso">Andrea Borruso </a>e <a href="https://twitter.com/totofiandaca">Salvatore Fiandaca </a>abbiamo dato vita al progetto "<a href="https://ondata.github.io/30cappa/">30Cappa</a>": interpretare, sulla base di open data e analisi geospaziali, come calcolare questi 30km.<br>Leggendo e rileggendo il decreto <a href="https://ondata.github.io/30cappa/#faq4">decidemmo</a> di fare il calcolo in linea d'aria (complice anche una slide del primo ministro Conte).<br>Il progetto, nato per divertimento e ben spiegato dalle <a href="https://ondata.github.io/30cappa/#faq">FAQ</a> e dall'<a href="https://medium.com/tantotanto/il-decreto-di-natale-in-chilometri-8af38744a7d5">articolo</a> che lo lanciava, ha ottenuto molto visite e con le evoluzioni delle misure di emergenza con le questioni di zone gialle, arancioni e rosse è diventato poi un riferimento sul tema.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Le polemiche non sono mai mancate (e spesso per non aver letto fino in fondo la documentazione <a href="https://medium.com/tantotanto/il-decreto-di-natale-in-chilometri-8af38744a7d5">pubblicata</a>).<br>E molti storcevano il naso davanti al calcolo in linea d'aria.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La Provincia Autonoma di Trento, nel momento che è diventata zona arancione, ha ripreso il decreto ed ha specificato meglio le <a href="https://www.ufficiostampa.provincia.tn.it/Comunicati/Zona-arancione-le-regole-per-gli-spostamenti">"regole</a>".<br>In particolare è stato specificato che il calcolo va fatto <em>"sulla base del percorso prescelto e non in linea d'aria"</em> partendo però sempre dai confini comunali.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non c'è ombra di dubbio che vedere le distanze calcolate sulla distanza aerea stupisce per la quantità di spazio che si ricopre, inoltre capita di sorridere vedendo che vengono coperte anche le montagne.<br>Il nostro lavoro iniziale voleva proprio evidenziare questo problema come quello delle enclave (= i comuni composti da più aree geografiche non contigue fra di loro).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il calcolo quindi per distanza percorsa su grafo stradale risulta sicuramente più corretto come parametro da adottare, fermo restando che - proprio per questa natura - le arterie di scorrimento principali possono essere anche in zona dove è proibito arrivare (il comune capoluogo e le regioni limitrofe)  ma necessarie per muoversi per raggiungere un luogo.</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2>Il calcolo sul grafo stradale</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>I passaggi per calcolare l'area percorribile avviene attraverso questi 4 passaggi<br><br><strong>1 . individuazione dei comuni fino a 5.000 abitanti</strong><br>come fatto nel precedente lavoro questo si calcola prendendo i confini amministrativi offerti da ISTAT a cui si associano poi i dati demografici secondo gli ultimi dati disponibili dal sito <a href="http://demo.istat.it">demo.istat.it</a> (dati di gennaio 2020).<br>Da lì si tratta solo di filtrare dove il valore della popolazione fino a 5.000 abitanti.<br><br><strong>2. identificazione dei punti di accesso al comune sul confine</strong><br>L'unica risorsa opendata disponibile per questo è quella di OpenStreetMap.<br>I passaggi sono:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>download del grafo stradale di OpenStreetMap <br>(una ottima risorsa è il servizio di export dei dati offerto dal progetto HOT - Humanitarian OpenStreetMap Team).</li><li>trasformazione delle geometrie dei confini comunali da poligoni a linee</li><li>individuazione dei punti di intersezione</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>queste operazioni possono essere fatte con qualsiasi software di analisi geospaziale (QGIS, Spatialite, Postgis, Geopandas, Mapshaper ...)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>3. calcolo delle isodistanza a partire dai punti di accesso individuati</strong><br>con  isodistanza si intende una linea tracciata su una mappa che collega i punti raggiungibili su un grafo stradale alla stessa distanza partendo da un punto di partenza.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Anche questa operazione può essere fatta da un qualsiasi software di analisi geospaziale. così come calcolata da servizi online fra i più famosi: iso4app, openrouteservice, mapbox...</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>4. definizione delĺ area ammessa dalla delibera provinciale</strong><br>una volta ottenuta l'area dell'isodistanza a 30km, i passaggi successivi sono:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>unione con l'area comunale</li><li>taglio all'interno del confine provinciale</li><li>eventuale taglio dell'area del comune di Trento in quanto capoluogo di Provincia.</li></ul>
<!-- /wp:list -->

<!-- wp:heading -->
<h2>Il caso Trentino</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>In Trentino il numero di comuni totali è 166, di cui 146 (88% circa) corrisponde a quelli con abitanti fino a 5.000 abitanti.<br>Questi rappresentano quasi 226.000 abitanti (41% della popolazione) coprono il 64% del territorio</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108494,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1520.png" alt="" class="wp-image-108494"/><figcaption>le zone in blu rappresentano i comuni del Trentino fino a 5.000 abitanti</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Molti di questi hanno confini molto ampi. Ad esempio la superficie di Valdaone  (1166 abitanti) è di 177 km² (quella di Palermo è di 159).<br>Una estensione così ampia permette quindi ad un cittadino di Valdaone di andare lontano.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>Valdaone<br></h3>
<!-- /wp:heading -->

<!-- wp:image {"id":108495,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1521.png" alt="" class="wp-image-108495"/><figcaption>in rosso il confine comunale di Valdaone, in nero quello della Provincia Autonoma di Trento <br>mappa di sfondo @OpenStreetMap</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Per la maggior parte però di Valdaone è poco abitata</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108497,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1523.png" alt="" class="wp-image-108497"/><figcaption>il confine comunale di Valdaone su mappa Wikipedia @OpenStreetMap</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>di conseguenza, anche i suoi collegamenti stradali sono legati all'orografia del luogo.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108498,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1524.png" alt="" class="wp-image-108498"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>e questo è ben confermato dal calcolo dell'isodistanza a 30km</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108499,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1525.png" alt="" class="wp-image-108499"/><figcaption>in colore ocra definisce l'area di 30km di percorribilità dai confini comunali</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>da questa isodistanza poi bisogna proseguire su come descritto precedentemente per il calcolo dell'area completa.<br>Il file geojson può essere scaricato <a href="https://raw.githubusercontent.com/napo/pat30k/main/data/022232.geojson">qui</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>Tre Ville</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Un caso estremamente interessante è quello del Comune di Tre Ville la cui estensione territoriale è su due zone molto distanti fra di loro e quell'area con la superficie inferiore risulta essere quella più abitata  (frazioni di Ragoli e Preore).</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108500,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1526.png" alt="" class="wp-image-108500"/><figcaption>l'estensione del Comune di Tre Ville (in rosso) composto da 2 enclavi</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>anche in questo caso l'area con maggior superficie (Palù) è in buona parte montagna, ma con un particolare importante: fa parte dell'area degli impianti di funivie di Madonna di Campiglio - luogo ad altra attrazione turistica</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108501,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1527.png" alt="" class="wp-image-108501"/><figcaption>le due enclavi di Tre Ville</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Qui pertanto il calcolo deve prendere in considerazione i perimetri di entrambi le aree ed, inoltre, trovandosi lungo il percorso di alcune importanti arterie di collegamento del grafo stradale del Trentino, l'area che si riesce a raggiungere in 30km sul grafo stradale risulta molto ampia.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108502,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1528.png" alt="" class="wp-image-108502"/><figcaption>l'area dell'isodistanza a 30km coperta dal Comune di Tre Ville</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>in questo caso l'unica operazione da fare per completare l'area è unire anche l'enclave di Palù nell'area. <br>Qui il file geojson per il <a href="https://raw.githubusercontent.com/napo/pat30k/main/data/022247.geojson">download</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3>Terre d'Adige</h3>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Scegliendo invece un comune della Piana Rotaliana - quindi molto vicino al "baricentro"del Trentino il risultato è ancora più interessante.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il caso è quello di Terre d'Adige. Anche questo un comune su due aree ma molto vicine fra di loro.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108503,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1529.png" alt="" class="wp-image-108503"/><figcaption>il confine (in rosso) di Terre D'Adige</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Il risultato del calcolo dell'area della isodistanza copre una zona molto significativa del Trentino (bene o male sono raggiunti quasi tutti i comuni con più abitanti).</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":108504,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://de.straba.us/wp-content/uploads/2021/03/Selezione_1530.png" alt="" class="wp-image-108504"/><figcaption>l'area dell'isodistanza a 30km coperta dal Comune di Terre d'Adige</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Quello che colpisce subito all'occhio è il fatto che l'area esce dal confine Provinciale e passa anche per il comune capoluogo (Trento).<br>Se da una parte verrebbe da pensare che queste aree sarebbero da sottrarre dalla <a href="https://raw.githubusercontent.com/napo/pat30k/main/data/022251.geojson">isodistanza</a> creata, dall'altra è giusto porsi il quesito si è concesso transitare per arrivare nei comuni dove invece è concesso arrivare.</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2>Conclusioni.</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Lo scopo di questa analisi non è ad invogliare a percorrere i famosi 30km, il consiglio rimane sempre quello di rispettare le regole in modo che tutto ciò non abbia più alcun senso.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Lo scopo principale è quello di rispondere a chi, fino ad ora, ha posto il quesito del calcolo sul grafo stradale e di mostrare, nuovamente, quanto il tutto abbia comunque necessità di chiarimenti.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Rimane il fatto che vale la regola del buonsenso e di informarsi presso le forze dell'ordine.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il codice di quanto sviluppato per fare questo calcolo lo renderò pubblico al più presto.<br>Quello invece di mettere in piedi un servizio che mostra le aree, come è stato fatto per 30Cappa con Andrea e Salvatore, preferisco rimandarlo ad altro momento o - ancora meglio - a mai perché, come tutti, faccio il tifo per tornare a quella quotidianità che avevamo più di un anno fa.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<figure><img src="/assets/images/medium/c5cef6c48a20e773.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/b3d2d7bdefdb2f98.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/f38c9bc1c23d1248.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/3891f6a377de3069.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/c536b63493ca9cb4.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/255161297dfb720a.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/c56961e792eefc12.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/7033a22c98f7a7bb.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/b38fe72c3a50e8b9.png" alt="I 30km sul grafo stradale trentino" /></figure>
<figure><img src="/assets/images/medium/2e1123ebad452b12.png" alt="I 30km sul grafo stradale trentino" /></figure>
<p><a href="https://medium.com/p/bbc05945ecbe">Versione originale su Medium</a></p>
