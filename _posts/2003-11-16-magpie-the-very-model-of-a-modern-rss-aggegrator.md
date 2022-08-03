---
id: 663
title: 'Magpie, The Very Model of A Modern RSS Aggegrator'
date: '2003-11-16T15:26:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=663'
permalink: /2003/11/16/magpie-the-very-model-of-a-modern-rss-aggegrator/
typo_id:
    - '661'
mt_id:
    - '1438'
link_related:
    - ''
raw_content:
    - "<p>\r\nI don\\'t really think of <a href=\\\"http://magpierss.sf.net\\\">MagpieRSS</a> as being an aggregator.  It was afterall designed to be an RSS parsing library.  However in the pursuit of a simple API that could be dropped into a dynamic page, it seems to have sprouted a number of the key features of a modern aggregator.\r\n</p>\r\n\n<p>\r\nOver time people have developed a few metrics for measuring such:\r\n<ul>\r\n<li>Supports <a href=\\\"http://www.sauria.com/blog/articles/aggregator-gzip.html\\\">GZIP encoding</a> for reduced bandwidth usage, <b>check</b></li>\r\n<li>Supports <a href=\\\"http://fishbowl.pastiche.org/2002/10/21/http_conditional_get_for_rss_hackers\\\">Conditional GETS/Etags</a> for intelligent fetching based on last modifieded dates, <b>check</b> (anyone know of a good list of Etag compliant aggregators?)</li>\r\n<li>Supports <a href=\\\"http://labs.silverorange.com/archives/2003/july/privaterss\\\">secure RSS feeds</a>, including feeds protected by HTTPAuth, and SSL, <b>check</b></li>\r\n</ul>\r\n</p>\r\n<p>\r\nLooks like <a href=\\\"http://dannyayers.com/\\\">Danny</a> is starting to put together a <a href=\\\"http://www.ideagraph.net/aggregators/\\\">page pulling this sort of information together</a>, but it doesn\\'t look done yet.\r\n</p>"
tags:
    - aggregation
    - magpie
    - rss
---

I don’t really think of [MagpieRSS](http://magpierss.sf.net) as being an aggregator. It was afterall designed to be an RSS parsing library. However in the pursuit of a simple API that could be dropped into a dynamic page, it seems to have sprouted a number of the key features of a modern aggregator.

Over time people have developed a few metrics for measuring such:

- Supports [GZIP encoding](http://www.sauria.com/blog/articles/aggregator-gzip.html) for reduced bandwidth usage, **check**
- Supports [Conditional GETS/Etags](http://fishbowl.pastiche.org/2002/10/21/http_conditional_get_for_rss_hackers) for intelligent fetching based on last modifieded dates, **check** (anyone know of a good list of Etag compliant aggregators?)
- Supports [secure RSS feeds](http://labs.silverorange.com/archives/2003/july/privaterss), including feeds protected by HTTPAuth, and SSL, **check**

Looks like [Danny](http://dannyayers.com/) is starting to put together a [page pulling this sort of information together](http://www.ideagraph.net/aggregators/), but it doesn’t look done yet.