---
layout: post
title: "Real World Mapping con il Kinect"
date: "2011-01-26 13:26:58"
permalink: "/real-world-mapping-con-il-kinect/"
original_url: "https://de.straba.us/real-world-mapping-con-il-kinect/"
render_with_liquid: false
categories:
  - "gis"
  - "maps"
tags:
  - "3d map"
  - "kinect"
  - "reald world 3d"
---

<a title="Martin Szarski" href="http://blog.decoratorpattern.com/author/hypermush/">Martin Szarski</a>, come tante altre persone,ha ragionato su possibili utilizzi del Kinect in ambito extra-ludico.
Mentre molti si sono focalizzati su nuove modalità di interazione fra uomo-macchina, lui è andato a guardare la funzione che questo dispositivo offre per l'estrazione di nuvole di punti dal dispositivo.
Martin partendo dallo studio di due progetti:
<ul>
	<li>Kinect Camera - <a href="http://www.ros.org/wiki/kinect_camera"> http://www.ros.org/wiki/kinect_camera</a> del gruppo <a href="http://www.ros.org">ROS.org</a>, dove si studia il problema  di determinare i parametri di calibrazione empirica per la telecamera di profondità in confronto a quella del mondo reale</li>
	<li>Kinect Calibration- <a href="http://nicolas.burrus.name/index.php/Research/KinectCalibration">http://nicolas.burrus.name/index.php/Research/KinectCalibration</a> di <a href="http://nicolas.burrus.name">Nicolas Burrus</a>, che invece offre un sistema semi-automatico per calibrare il sensore di profondità Kinect e l'uscita RGB mappandoli fra loro</li>
</ul>
<p style="text-align: left;">ha dato vita a KinectMapper - <a href="https://github.com/mszarski/KinectMapper">https://github.com/mszarski/KinectMapper</a>, un sistema di mappatura di nuvole di punti del mondo reale in 3D facendo uso di kinect e GPS.</p>
<p style="text-align: left;">I dati vengono acquisiti in tempo reale attraverso il kinect, georiferiti con un GPS (appoggiandosi ad un cellulare Android) e producono una nuvola di punti colorati.
Martin sostiene che il progetto è ancora immaturo e si presenta con un proof-of-concept, ma già questo primo screenshot prodotto dell'interno di casa sua (al centro si vede la sua mano alzata), fa capire che siamo sulla buona strada.</p>
<a href="/assets/images/wordpress/2011/01/screen-shot-2011-01-20-at-10-19-09-pm1.png"><img class="size-full wp-image-667 alignnone" title="screen-shot-2011-01-20-at-10-19-09-pm" src="/assets/images/wordpress/2011/01/screen-shot-2011-01-20-at-10-19-09-pm1.png" alt="" width="441" height="416" /></a>

Dettagli sul progetto e ulteriori sviluppi direttamente dal suo blog:
<a href="http://blog.decoratorpattern.com/2011/01/23/real-world-mapping-with-the-kinect/">http://blog.decoratorpattern.com/2011/01/23/real-world-mapping-with-the-kinect/</a>
<a href="http://blog.decoratorpattern.com/2011/01/25/kinect-projects-update/"></a>