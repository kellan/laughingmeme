---
id: 268
title: 'That old common arbitrator, Time.'
date: '2003-01-10T07:26:07+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=268'
permalink: /2003/01/10/that-old-common-arbitrator-time/
typo_id:
    - '266'
mt_id:
    - '276'
link_related:
    - ''
raw_content:
    - "<p> The  <a\r\nhref=\\\"http://archive.develooper.com/datetime@perl.org/msg00387.html\\\"> grand\r\nunifying of Perl date modules discussion</a> is live again on the <a\r\nhref=\\\"http://archive.develooper.com/datetime@perl.org/\\\">datetime list</a>, and\r\n<acronym title=\\\"Temps Atomique International\\\">TAI</acronym> came up in\r\nconversation.  Hadn\\'t thought about <acronym title=\\\"Temps Atomique International\\\">TAI</acronym>  in a while.  <acronym title=\\\"Temps Atomique International\\\">TAI</acronym> is international atomic time and measures real time.  <acronym title=\\\"Temps Atomique International\\\">TAI</acronym> plus leapsecond\r\nsupport is <acronym title=\\\"Coordinated Universal Time\\\">UTC</acronym>, the standard for all atomic timescales.  \r\n</p>\r\n<p>\r\nProgrammatic support for <acronym title=\\\"Temps Atomique International\\\">TAI</acronym> is available from DJB\\'s <a\r\nhref=\\\"http://cr.yp.to/libtai.html\\\">libtai</a> which comes in 2 flavours: TAI64,\r\ncovering a few hundred billion years with 1-second precision; TAI64NA,\r\ncovering the same period with 1-attosecond precision.  Also supports casting to\r\nGregorian or Julian days to support well known calendar algorithms.  From Perl\r\nyou can use <a href=\\\"http://search.cpan.org/dist/Time-TAI64/\\\" title=\\\"Still\r\nExpiremental\\\">Time::TAI64</a>.  See also DJB\\'s <a\r\nhref=\\\"http://cr.yp.to/proto/utctai.html\\\"><acronym title=\\\"Coordinated Universal Time\\\">UTC</acronym>, <acronym title=\\\"Temps Atomique International\\\">TAI</acronym>, and Unix time</a>.\r\n</p>\r\n<p>\r\nI\\'m not sure an epoch system that stretches from the before the existence of\r\nthe earth, but doesn\\'t quite reach the predicted heat death of the universe is\r\nflexible enough for me.  Though as Abigail mentioned in the datetime thread\r\n<blockquote><cite>\r\n...with 2 64 int integers, one\r\ncould deal with 584 billion years, an attosecond precision, and 4 bits\r\nto spare.\r\n</cite></blockquote>\r\n\r\nWell, as long as we have room to grow.\r\n</p>"
---

 The [ grand unifying of Perl date modules discussion](http://archive.develooper.com/datetime@perl.org/msg00387.html) is live again on the [datetime list](http://archive.develooper.com/datetime@perl.org/), and <acronym title="Temps Atomique International">TAI</acronym> came up in conversation. Hadn’t thought about <acronym title="Temps Atomique International">TAI</acronym> in a while. <acronym title="Temps Atomique International">TAI</acronym> is international atomic time and measures real time. <acronym title="Temps Atomique International">TAI</acronym> plus leapsecond support is <acronym title="Coordinated Universal Time">UTC</acronym>, the standard for all atomic timescales.

Programmatic support for <acronym title="Temps Atomique International">TAI</acronym> is available from DJB’s [libtai](http://cr.yp.to/libtai.html) which comes in 2 flavours: TAI64, covering a few hundred billion years with 1-second precision; TAI64NA, covering the same period with 1-attosecond precision. Also supports casting to Gregorian or Julian days to support well known calendar algorithms. From Perl you can use [Time::TAI64](http://search.cpan.org/dist/Time-TAI64/ "Still
Expiremental"). See also DJB’s [<acronym title="Coordinated Universal Time">UTC</acronym>, <acronym title="Temps Atomique International">TAI</acronym>, and Unix time](http://cr.yp.to/proto/utctai.html).

I’m not sure an epoch system that stretches from the before the existence of the earth, but doesn’t quite reach the predicted heat death of the universe is flexible enough for me. Though as Abigail mentioned in the datetime thread

> <cite>…with 2 64 int integers, one could deal with 584 billion years, an attosecond precision, and 4 bits to spare. </cite>

Well, as long as we have room to grow.