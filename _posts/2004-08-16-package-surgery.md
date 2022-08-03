---
id: 885
title: 'Package Surgery'
date: '2004-08-16T10:43:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=885'
permalink: /2004/08/16/package-surgery/
typo_id:
    - '883'
mt_id:
    - '2298'
link_related:
    - ''
raw_content:
    - "I\\'ve started putting together Debian packages for our dev platform at work, and stumbled upon an obvious, and yet new to me technique for building quick and dirty .debs ... package surgery.  I\\'ve got a MySQL 4.1.3 package (an official package won\\'t be showing up anytime soon is the rumor) by the simple expedient of downloading the 4.1.3 source from MySQL.com, and copying over the debian directory from the <a href=\\\"http://packages.debian.org/testing/misc/mysql-server\\\">official package</a>.  Similarly a PHP 5.0.1 package that is compatible with Apache2 (apache2-mpm-prefork) is available by downloading <a href=\\\"http://www.dotdeb.org/\\\">DotDeb\\'s</a> php5 package, and tweaking its debian/rules file. (rumor has it an official one of these might show up soon-ish)\r\n\r\nBoth are still pretty rough around the edges (I\\'m having trouble with config files not being installed, and not being updated properly), but hopefully in the next few days they\\'ll be available to a few brave souls.  (Though they already install pretty cleanly on an up-to-date sarge)\r\n\r\nIn the mean time, anyone know where I can find instructions on setting up an apt source?"
tags:
    - debian
    - hacking
    - mysql
    - php
    - php5
---

I’ve started putting together Debian packages for our dev platform at work, and stumbled upon an obvious, and yet new to me technique for building quick and dirty .debs … package surgery. I’ve got a MySQL 4.1.3 package (an official package won’t be showing up anytime soon is the rumor) by the simple expedient of downloading the 4.1.3 source from MySQL.com, and copying over the debian directory from the [official package](http://packages.debian.org/testing/misc/mysql-server). Similarly a PHP 5.0.1 package that is compatible with Apache2 (apache2-mpm-prefork) is available by downloading [DotDeb’s](http://www.dotdeb.org/) php5 package, and tweaking its debian/rules file. (rumor has it an official one of these might show up soon-ish)

Both are still pretty rough around the edges (I’m having trouble with config files not being installed, and not being updated properly), but hopefully in the next few days they’ll be available to a few brave souls. (Though they already install pretty cleanly on an up-to-date sarge)

In the mean time, anyone know where I can find instructions on setting up an apt source?