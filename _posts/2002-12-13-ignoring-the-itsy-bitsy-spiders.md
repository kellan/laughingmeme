---
id: 244
title: 'Ignoring the Itsy Bitsy Spiders'
date: '2002-12-13T06:13:41+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=244'
permalink: /2002/12/13/ignoring-the-itsy-bitsy-spiders/
typo_id:
    - '242'
mt_id:
    - '252'
link_related:
    - ''
raw_content:
    - "<p>\r\nIts pathetic, but I confess, somedays this website gets more hits from bots, then from people.  Not that I have anything against bots, equal rights and all, but sometimes I just want to know when people are looking at my site.  You know?\r\n</p>\r\n<p>\r\nSo I came up with this idea, when I run my <a href=\\\"http://www.analog.cx\\\">analog</a> reports, how about excluding all requests made via <code>HTTP/1.0</code>, which will miss a few bots, and might filter a few people (who?) but is Good Enough.  But how?  Analog doesn\\'t support filtering on protocol.  An old trick I learned back before analog supported virtual hosts, hard code the data you are looking for into your log format. (and ignore analog\\'s bitter complaints)\r\n</p>\r\n<p>\r\n<p>\r\n<code>LOGFORMAT (%S %j %u [%d/%M/%Y:%h:%n:%j] \\\"%j %r <b>HTTP/1.1</b>\\\" %c %b \\\"%f\\\" \\\"%B\\\" %j %v)</code>\r\n</p>\r\n<p>\r\n<b>update [2003/1/25]</b> this doesn\\'t work anymore as <a href=\\\"http://www.apple.com/safari\\\">Apple\\'s Safari</a> uses HTTP/1.0\r\n</p>"
---

Its pathetic, but I confess, somedays this website gets more hits from bots, then from people. Not that I have anything against bots, equal rights and all, but sometimes I just want to know when people are looking at my site. You know?

So I came up with this idea, when I run my [analog](http://www.analog.cx) reports, how about excluding all requests made via `HTTP/1.0`, which will miss a few bots, and might filter a few people (who?) but is Good Enough. But how? Analog doesn’t support filtering on protocol. An old trick I learned back before analog supported virtual hosts, hard code the data you are looking for into your log format. (and ignore analog’s bitter complaints)

`LOGFORMAT (%S %j %u [%d/%M/%Y:%h:%n:%j] "%j %r <b>HTTP/1.1</b>" %c %b "%f" "%B" %j %v)`

**update \[2003/1/25\]** this doesn’t work anymore as [Apple’s Safari](http://www.apple.com/safari) uses HTTP/1.0