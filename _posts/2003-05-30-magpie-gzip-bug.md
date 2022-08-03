---
id: 457
title: 'Magpie GZIP Bug'
date: '2003-05-30T12:27:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=457'
permalink: /2003/05/30/magpie-gzip-bug/
typo_id:
    - '455'
mt_id:
    - '811'
link_related:
    - ''
raw_content:
    - "<p>\r\nMagpieRSS 0.5 can fail without errors when fetching a RSS feed using GZIP encoding if your PHP doesn\\'t support <code>gzinflate()</code> (i.e. it hasn\\'t been built with <code>--with-zlib</code>)\r\n</p>\r\n<p>\r\nAs of 0.5 sends an \\\"Accept-encoding: gzip\\\" header by default when fetching RSS files.  You turn this feature off by adding <code>define(MAGPIE_USE_GZIP, 0)</code> to the top of your script.\r\n</p>\r\n<p>\r\nA patched version of the locally maintained <a href=\\\"http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/magpierss/magpierss/extlib/Snoopy.class.inc\\\">extlib/Snoopy.class.inc</a> \r\nthat checks <code>function_exists(gzinflate)</code> is available in <a href=\\\"http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/magpierss/magpierss/extlib/Snoopy.class.inc\\\">CVS</a>.\r\nThis fix seems to work, I haven\\'t had a chance to test it widely.  It is a busy week, but I\\'ll try to have a final fix, and new version out in the next couple of days.\r\n<p>\r\n(sidenote:  It seems silly to fork Snoopy, and give it a new name over one minor change like adding gzip support however development on Snoopy has stopped and its confusing this maintaing a local version because I don\\'t want to imply there is a bug with the real <a href=\\\"http://snoopy.sf.net\\\">Snoopy</a>, just my version.  What do you think?)\r\n</p>"
tags:
    - bug
    - gzip
    - magpie
---

MagpieRSS 0.5 can fail without errors when fetching a RSS feed using GZIP encoding if your PHP doesn’t support `gzinflate()` (i.e. it hasn’t been built with `--with-zlib`)

As of 0.5 sends an “Accept-encoding: gzip” header by default when fetching RSS files. You turn this feature off by adding `define(MAGPIE<em>USE</em>GZIP, 0)` to the top of your script.

A patched version of the locally maintained [extlib/Snoopy.class.inc](http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/magpierss/magpierss/extlib/Snoopy.class.inc) that checks `function_exists(gzinflate)` is available in [CVS](http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/magpierss/magpierss/extlib/Snoopy.class.inc). This fix seems to work, I haven’t had a chance to test it widely. It is a busy week, but I’ll try to have a final fix, and new version out in the next couple of days.

(sidenote: It seems silly to fork Snoopy, and give it a new name over one minor change like adding gzip support however development on Snoopy has stopped and its confusing this maintaing a local version because I don’t want to imply there is a bug with the real [Snoopy](http://snoopy.sf.net), just my version. What do you think?)