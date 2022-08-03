---
id: 487
title: 'PHP 4.3.2 and expat Problems!?!'
date: '2003-06-22T13:44:01+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=487'
permalink: /2003/06/22/php-432-and-expat-problems/
typo_id:
    - '485'
mt_id:
    - '893'
link_related:
    - ''
raw_content:
    - "<p>\r\nI\\'ve had 2 strange bug reports for Magpie.  The common element is PHP 4.3.2.   Anyone known anything (anything!) at all about what might be causing these problems?\r\n</p>\r\n<p>\r\n<a name=\\\"bug1\\\"></a>\r\n<h3>Bug 1.  Mapgie returns only 1 item</h3>\r\nI got a report from that when Magpie was parsing a certain feed it was only return the first item in the feed, though there were clearly 15 items in the feed, and it was well formed.  I went around a few times with the bug report, couldn\\'t reproduce it, talked with the person who reported it, and was coming close to dispair when they reported that their web host had recently upgraded to PHP 4.3.2 which is when the problem began, and the problem went away when they upgraded expat from 1.95.2 to 1.95.6.  Good news, problem solved (yeh!) but um, that was weird, there were no error messages, and I hate mysteries. (bug which fix themselves have a nasty habit of showing up again later)\r\n</p>\r\n<p>\r\n<a name=\\\"bug2\\\"></a>\r\n\r\n<h3>Bug 2.  Running out of memory</h3>\r\nThen I got a report of someone using FoF and Magpie, and running out of memory after parsing a small number of feeds.  FreeBSD, PHP 4.3.2, expat 1.95.6 (drat).\r\n</p>\r\n<p>\r\nI haven\\'t gone digging deeply into this (how the hell do you profile PHP btw?) but I wondered if anyone else was seeing/hearing about similar issues with the PHP 4.3.2?  Thanks.\r\n</p>"
categories:
    - Uncategorized
tags:
    - '"just works"'
    - debugging
    - expat
    - magpie
    - php
    - programming
---

I’ve had 2 strange bug reports for Magpie. The common element is PHP 4.3.2. Anyone known anything (anything!) at all about what might be causing these problems?

### Bug 1. Mapgie returns only 1 item

I got a report from that when Magpie was parsing a certain feed it was only return the first item in the feed, though there were clearly 15 items in the feed, and it was well formed. I went around a few times with the bug report, couldn’t reproduce it, talked with the person who reported it, and was coming close to dispair when they reported that their web host had recently upgraded to PHP 4.3.2 which is when the problem began, and the problem went away when they upgraded expat from 1.95.2 to 1.95.6. Good news, problem solved (yeh!) but um, that was weird, there were no error messages, and I hate mysteries. (bug which fix themselves have a nasty habit of showing up again later)

### Bug 2. Running out of memory

Then I got a report of someone using FoF and Magpie, and running out of memory after parsing a small number of feeds. FreeBSD, PHP 4.3.2, expat 1.95.6 (drat).

I haven’t gone digging deeply into this (how the hell do you profile PHP btw?) but I wondered if anyone else was seeing/hearing about similar issues with the PHP 4.3.2? Thanks.