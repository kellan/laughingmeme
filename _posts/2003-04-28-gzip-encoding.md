---
id: 418
title: 'Gzip Encoding'
date: '2003-04-28T21:24:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=418'
permalink: /2003/04/28/gzip-encoding/
typo_id:
    - '416'
mt_id:
    - '686'
link_related:
    - ''
raw_content:
    - "<p>\r\n<a href=\\\"http://magpierss.sf.net\\\">Magpie</a> has been \\\"outed\\\" for <a href=\\\"http://www.sauria.com/blog/2003/04/26#169\\\">not supporting GZIP encoding</a>.  I\\'m\r\nthinking of switching from <a href=\\\"http://snoopy.sf.net\\\">Snoopy</a> to \r\n<a href=\\\"http://scripts.incutio.com/httpclient/\\\">Simon\\'s HttpClient</a> in order\r\nto get gzip,\r\nand a few other features.  Has anyone ever played with it?  \r\nSnoopy has been\r\nsolid, and error free, and while development stopped on it a while ago, this is\r\nsometimes a good thing.  HttpClient on the other hand looks to be undergoing\r\nvery active development, and I like some of the design decisions I\\'m seeing. \r\n</p>\r\n<p>\r\nOne problem, is it just me, or is there no way to send arbitrary headers?(like\r\n<code>If-None-Match</code>, to pick a purely hypothetical example)  That\r\nwould seem very strange, but quick glance threw the code seems to confirm this.\r\n</p>"
tags:
    - gzip
    - magpie
---

[Magpie](http://magpierss.sf.net) has been “outed” for [not supporting GZIP encoding](http://www.sauria.com/blog/2003/04/26#169). I’m thinking of switching from [Snoopy](http://snoopy.sf.net) to [Simon’s HttpClient](http://scripts.incutio.com/httpclient/) in order to get gzip, and a few other features. Has anyone ever played with it? Snoopy has been solid, and error free, and while development stopped on it a while ago, this is sometimes a good thing. HttpClient on the other hand looks to be undergoing very active development, and I like some of the design decisions I’m seeing.

One problem, is it just me, or is there no way to send arbitrary headers?(like `If-None-Match`, to pick a purely hypothetical example) That would seem very strange, but quick glance threw the code seems to confirm this.