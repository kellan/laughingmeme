---
id: 119
title: 'Weblog Watcher, and PyXML 0.8'
date: '2002-08-14T13:30:47+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=119'
permalink: /2002/08/14/weblog-watcher-and-pyxml-08/
typo_id:
    - '117'
mt_id:
    - '127'
link_related:
    - ''
raw_content:
    - "<p>\r\nDuring various layovers, and such I managed to finish hacking on my \r\n<a href=\\\"http://laughingmeme.org/archives/000034.html#000034\\\">\r\nweblog watcher</a>, an update to a quick script I wrote to parse <a href=\\\"http://www.weblogs.com\\\">Weblogs.com</a> for the sites I was actually interested in reading. (<a href=\\\"http://protest.net/~kellan/recent_weblogs.html\\\">see the original</a>)\r\n</p>\r\n<p>\r\nSo, first thing I do, is add <a href=\\\"http://www.aaronsw.com\\\">AaronSW</a> to the watch list, because I\\'m thinking about RSS, and he doesn\\'t ping weblogs.com.\r\n</p>\r\n<p>\r\nAnd boom!  Blows up in my face.  Aaron\\'s RSS is a little too cutting edge for the PyXML 0.7 parser I\\'m using. Siiiiigh.\r\n</p>\r\n<p>\r\nPyXML 0.8 has <a href=\\\"http://www.xmlhack.com/read.php?item=1734\\\">recently been released</a>, maybe that will help.  No time now.\r\n</p>\r\n<p>\r\nUpdate:  I love blogs.  Mark is dealing with the same issue, and has released his <a href=\\\"http://diveintomark.org/archives/2002/08/13.html#ultraliberal_rss_parser\\\">ultra-liberal RSS parser</a>. (and no anarchist jokes please)  Hopefully will have a chance to look at this before we run away to the Caribbean. (which seemed like a much more rationale plan in Santa Cruz, then here in 95 degrees in the shade, humid, Boston)\r\n</p>"
tags:
    - boston
---

During various layovers, and such I managed to finish hacking on my [weblog watcher](http://laughingmeme.org/archives/000034.html#000034), an update to a quick script I wrote to parse [Weblogs.com](http://www.weblogs.com) for the sites I was actually interested in reading. ([see the original](http://protest.net/~kellan/recent_weblogs.html))

So, first thing I do, is add [AaronSW](http://www.aaronsw.com) to the watch list, because I’m thinking about RSS, and he doesn’t ping weblogs.com.

And boom! Blows up in my face. Aaron’s RSS is a little too cutting edge for the PyXML 0.7 parser I’m using. Siiiiigh.

PyXML 0.8 has [recently been released](http://www.xmlhack.com/read.php?item=1734), maybe that will help. No time now.

Update: I love blogs. Mark is dealing with the same issue, and has released his [ultra-liberal RSS parser](http://diveintomark.org/archives/2002/08/13.html#ultraliberal_rss_parser). (and no anarchist jokes please) Hopefully will have a chance to look at this before we run away to the Caribbean. (which seemed like a much more rationale plan in Santa Cruz, then here in 95 degrees in the shade, humid, Boston)