---
id: 525
title: 'Aggregators and Prior Art'
date: '2003-07-22T01:01:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=525'
permalink: /2003/07/22/aggregators-and-prior-art/
typo_id:
    - '523'
mt_id:
    - '1004'
link_related:
    - ''
raw_content:
    - "<p>\r\nMark reminds us <a href=\\\"http://diveintomark.org/archives/2003/07/21/atom_aggregator_behavior_transport_level.html\\\">aggregator are HTTP clients, and there\\'s a lot of prior art on how HTTP clients are supposed to work</a>.\r\n</p>\r\n<p>\r\nI struggle with how much of this <a href=\\\"http://magpierss.sf.net\\\">Magpie</a> should be aware of.  Its not really an aggregator, but people use it as such.  The response code (and in CVS the full headers) are made available to clients, but for the people using it as a simple drop in to their website, Magpie moves from being a library to the client.\r\n</p>\r\n<p>\r\nA difficult balance, too complicated for my exhausted brain.\r\n</p> \r\n</p>"
tags:
    - aggregation
    - http
    - rss
---

Mark reminds us [aggregator are HTTP clients, and there’s a lot of prior art on how HTTP clients are supposed to work](http://diveintomark.org/archives/2003/07/21/atom_aggregator_behavior_transport_level.html).

I struggle with how much of this [Magpie](http://magpierss.sf.net) should be aware of. Its not really an aggregator, but people use it as such. The response code (and in CVS the full headers) are made available to clients, but for the people using it as a simple drop in to their website, Magpie moves from being a library to the client.

A difficult balance, too complicated for my exhausted brain.