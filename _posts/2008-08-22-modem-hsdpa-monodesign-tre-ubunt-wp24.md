---
layout: post
title: "Chiavetta HSDPA Tre - Momodesign  MD-@ e Ubuntu"
date: "2008-08-22 15:06:39"
permalink: "/modem-hsdpa-monodesign-tre-ubunt/"
original_url: "https://de.straba.us/modem-hsdpa-monodesign-tre-ubunt/"
render_with_liquid: false
categories:
  - "me"
tags:
  - "hsdpa"
  - "tre"
  - "ubuntu"
---

<a href='/assets/images/wordpress/2008/08/modem_momodesignmd.jpg'><img src="/assets/images/wordpress/2008/08/modem_momodesignmd.jpg" alt="" title="modem_momodesignmd" width="168" height="208" class="alignnone size-medium wp-image-25" /></a>

Inserita la chiave nel pc il kernel  <em>2.6.24-19-generic</em> di <em>Ubuntu 8.04 LTS - Hardy Heron</em> risponde caricando il modulo <em>airprime</em> che, a sua volta, crea il device <em>/dev/ttyUSB0</em>

Da qui in poi il gioco diventa semplice in quanto si tratta di impostare una connessione ppp attraverso gnome-ppp, o kppp o wvdial.

per i pigri ...
<code>sudo apt-get install wvdial
sudo -s
cat > /etc/wvdial.conf << EOF
&nbsp;<strong>[Dialer Defaults]</strong>
&nbsp;<strong>Modem = /dev/ttyUSB0</strong>
&nbsp;<strong>ISDN = off</strong>
&nbsp;<strong>Modem Type = Analog</strong>
&nbsp;<strong>Modem Baud = 460800</strong>
&nbsp;<strong>Init2 = ATX3</strong>
&nbsp;<strong>Init3 = AT+COPS?</strong>
&nbsp;<strong>Init4 = AT+CGDCONT=1,"ip","datacard.tre.it"</strong>
&nbsp;<strong>Phone = *99#</strong>
&nbsp;<strong>Dial Attempts = 1</strong>
&nbsp;<strong>Dial Command = ATM1L3DT</strong>
&nbsp;<strong>Ask Password = off</strong>
&nbsp;<strong>Password = tre</strong>
&nbsp;<strong>Username = tre</strong>
&nbsp;<strong>Auto Reconnect = off</strong>
&nbsp;<strong>Abort on Busy = off</strong>
&nbsp;<strong>Carrier Check = on</strong>
&nbsp;<strong>Check Def Route = on</strong>
&nbsp;<strong>Abort on No Dialtone = on</strong>
&nbsp;<strong>Stupid Mode = on</strong>
&nbsp;<strong>Idle Seconds = 0</strong>
&nbsp;<strong>Auto DNS = on</strong>
EOF
chmod 644 /etc/wvdial.conf
exit</code>

... e per collegarsi ... basta digitare <code>wvdial</code> da linea di comando ...