---
id: 710
title: 'Not Validating RSS 1.0'
date: '2004-01-19T03:35:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=710'
permalink: /2004/01/19/not-validating-rss-10/
typo_id:
    - '708'
mt_id:
    - '1656'
link_related:
    - ''
raw_content:
    - "<p>\r\nWas reminded tonight that the <a href=\\\"http://feedvalidator.org\\\">Feed Validator</a> is not in the business of validating RSS 1.0, something I had <a href=\\\"http://laughingmeme.org/archives/000290.html\\\">commented on before</a>, but had forgotten.  Remembered tonight when I noticed that the otherwise excellent RSS feeds from <a href=\\\"http://del.icio.us\\\">del.icio.us</a> are declaring the same resource multiple times per feed (i.e. multiple items have the same rdf:resource/rdf:about aka item_uri).  \r\n</p>\r\n<p>\r\nWhich should cause trouble for practically no one (<a href=\\\"http://search.cpan.org/dist/XML-RSS/\\\">XML::RSS</a>, and <a href=\\\"http://magpierss.sf.net\\\">Magpie</a> are both fine with it just to kick out two data points), and it is understandable to produce such a feed as many toolkits (earlier versions of <a href=\\\"http://search.cpan.org/dist/XML-RSS/\\\">XML::RSS</a>, and the current version of <a href=\\\"http://usefulinc.com/rss/rsswriter/\\\">RSSWriter</a> for example) don\\'t provide a syntax for giving an item a distinct link and item_uri.  But the Feed Validator should at least mention it.\r\n</p>"
tags:
    - magpie
    - rss
    - syndication
---

Was reminded tonight that the [Feed Validator](http://feedvalidator.org) is not in the business of validating RSS 1.0, something I had [commented on before](http://laughingmeme.org/archives/000290.html), but had forgotten. Remembered tonight when I noticed that the otherwise excellent RSS feeds from [del.icio.us](http://del.icio.us) are declaring the same resource multiple times per feed (i.e. multiple items have the same rdf:resource/rdf:about aka item\_uri).

Which should cause trouble for practically no one ([XML::RSS](http://search.cpan.org/dist/XML-RSS/), and [Magpie](http://magpierss.sf.net) are both fine with it just to kick out two data points), and it is understandable to produce such a feed as many toolkits (earlier versions of [XML::RSS](http://search.cpan.org/dist/XML-RSS/), and the current version of [RSSWriter](http://usefulinc.com/rss/rsswriter/) for example) don’t provide a syntax for giving an item a distinct link and item\_uri. But the Feed Validator should at least mention it.