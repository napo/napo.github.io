---
layout: post
title: "HOWTO: inserire una mappa OSM nel proprio sito"
date: "2009-08-10 23:24:35"
permalink: "/embed_a_osm_map/"
original_url: "https://de.straba.us/embed_a_osm_map/"
render_with_liquid: false
categories:
  - "maps"
  - "openstreetmap"
---

<h1>Una mappa da inserire nella propria pagina</h1>
Ogni tanto capita di avere la necessita di inserire nella propria pagina web una mappa corredata
marcatore che mette in evidenza una località.
I sostenitori di  <em>Google Maps</em> considerano questa soluzione facilissima in quanto
scegliendo la voce "<em>Link</em>" viene restituito sia il codice da inserire nella propria
pagina che il link.

<h2>OpenStreetMap</h2>

<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM1.jpg" alt="Trento su OSM" title="embedOSM1" width="400" class="size-full wp-image-80" />

OpenStreetMap non è da meno. solo che molti utenti non si accorgono delle potenzialità esposte alla voce "<strong>Esporta</strong>" poco sopra la mappa

<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM2.jpg" alt="embedOSM2" title="embedOSM2" width="400"  class="alignnone size-full wp-image-81" />

Da qui si accede ad una interfaccia, dove, selezionando la voce "<strong>HTML incapsulabile</strong>"
si ottiene il codice da inserire nella propria pagina che compare vicino alla voce "<strong>Risultato</strong>" 
<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM3.jpg" alt="embedOSM3" title="embedOSM3" width="258" height="605" class="alignnone size-full wp-image-83" />

L'interfaccia, attraverso la voce "<strong>Aggiungi un marcatore alla mappa</strong>" permette poi
di selezionare un punto sulla mappa, arricchendo cosi la mappa di questa ulteriore informazione.

<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM5.jpg" alt="embedOSM5" title="embedOSM5" width="400" class="alignnone size-full wp-image-85" />


Questo un esempio del codice prodotto

<code>
&lt;iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0"
 marginwidth="0" src="http://www.openstreetmap.org/export/embed.html?bbox=11.0148,45.9894,11.2273,46.1462&layer=osmarender&marker=46.05787,11.12846" style="border: 1px solid black"&gt;&lt;/iframe&gt;&lt;br /&gt;
&lt;small&gt;
&lt;a href="<strong>http://www.openstreetmap.org/?lat=46.0678&lon=11.12105&zoom=11&layers=0B00FTFTT&mlat=46.05787&mlon=11.12846</strong>"&gt;
Visualizza una mappa più ampia&lt;/a&gt;
&lt;/small&gt;
</code>

Il codice prodotto non é altro che un  "<em>iframe</em>" che carica una pagina esterna al sito 
all'interno di quella dove si trova (embed)
Il link alla sola mappa é presente all'indirizzo contenuto nell'attributo <em>src</em>.

Nell'esempio riportato pertanto
<code>
<strong><a href="http://www.openstreetmap.org/?lat=46.0678&lon=11.12105&zoom=11&layers=0B00FTFTT&mlat=46.05787&mlon=11.12846">http://www.openstreetmap.org/?lat=46.0678&lon=11.12105&zoom=11&layers=0B00FTFTT&mlat=46.05787&mlon=11.12846</a></strong>
</code>

<h2>CloudMade</h2>
Qualora i rendering offerti da OpenStreetMap non siano soddisfacenti ci può affidare al servizio offerto da Cloudmade
alla pagina <a href="http://maps.cloudmade.com/">http://maps.cloudmade.com/</a>

<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM6-1.jpg" alt="embedOSM6-1" title="embedOSM6-1" width="400" class="alignnone size-full wp-image-87" />

Anche in questo caso, la mappa, é corredata dalla voce "<strong>Export</strong>"

<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM6-2.jpg" alt="embedOSM6-2" title="embedOSM6-2" width="331" height="38" class="alignnone size-full wp-image-88" />

Al clic su questa voce viene presentata una finestra da cui poter recuperare il codice con l'iframe 

<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM6.jpg" alt="embedOSM6" title="embedOSM6" width="485" height="297" class="alignnone size-full wp-image-86" />

Qui un esempio
<code>
&lt;iframe width="460" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.cloudmade.com/iframe?lat=46.059582210771985&lng=11.127262115478516&zoom=13&styleId=1"&gt;&lt;/iframe&gt;
</code>

Purtroppo non è prevista una azione per aggiungere un marcatore, bisogna pertanto intervenire "a mano".
E' sufficiente aggiungere, in coda al link contenuto nell'attributo "<em>src</em>" la stringa  "<strong>&marker=</strong>"
seguita dalla coordinate di latitudine e longitudine divise da una virgola.

Qui un esempio:
vogliamo visualizzare un marcatore alle coordinate <em>46.05787,11.12846</em>
La stringa da aggiungere diventa pertanto <code><strong>&marker=46.05787,11.12846</strong></code>
che nel codice prodotto da Cloudmade viene inserita in questo modo
<code>
&lt;iframe width="460" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.cloudmade.com/iframe?lat=46.062446461565&lng=11.135244369506836&zoom=13&styleId=1<strong>&marker=46.05787,11.12846</strong>"&gt;&lt;/iframe&gt;
</code>

... qui il risultato
<img src="http://de.straba.us/wp-content/uploads/2009/08/embedOSM7.jpg" alt="embedOSM7" title="embedOSM7" width="302" height="194" class="alignnone size-full wp-image-89" />

Anche nel caso precedente per dare semplicemente il link con la mappa intera basta recuperare le informazioni dall'attributo src del codice scritto sopra.
Pertanto

<a href="http://maps.cloudmade.com/iframe?lat=46.062446461565&lng=11.135244369506836&zoom=13&styleId=1&marker=46.05787,11.12846"><code>http://maps.cloudmade.com/iframe?lat=46.062446461565&lng=11.135244369506836&zoom=13&styleId=1&marker=46.05787,11.12846</code></a>