---
id: 4475
title: 'Richard Crowley: OpenDNS MySQL abuses'
date: '2010-02-08T17:52:30+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4475'
permalink: /2010/02/08/richard-crowley-opendns-mysql-abuses/
link_related:
    - 'http://rcrowley.org/articles/opendns-mysql-abuses.html'
categories:
    - Aside
tags:
    - 'using and abusing mysql'
---

“INSERTs contains values that are pre-sorted in PRIMARY KEY order to avoid deadlock … To delete old data, a new table is swapped into place using RENAME TABLE … MySQL is still a pretty heavy hammer.” Beautiful.