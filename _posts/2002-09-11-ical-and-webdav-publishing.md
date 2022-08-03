---
id: 147
title: 'iCal and WebDAV Publishing'
date: '2002-09-11T11:34:22+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=147'
permalink: /2002/09/11/ical-and-webdav-publishing/
typo_id:
    - '145'
mt_id:
    - '156'
link_related:
    - ''
raw_content:
    - "<p>\r\nJudging from my <a href=\\\"http://laughingmeme.org/archives/searchq.png\\\">web logs</a>, and the referers I\\'m getting from Google, people are\r\n<b>very</b> interested in the much discussed ability for <a\r\nhref=\\\"http://www.aple.com/ical\\\">iCal</a> to publish to any\r\n<a href=\\\"http://www.webdav.org\\\">WebDAV</a>\r\n enabled webserver, not just to the \r\n <a href=\\\"http://www.mac.com\\\">$100/year .Mac service</a>.\r\n</p>\r\n<p>\r\nWell I\\'ll be honest, I haven\\'t gotten Jaguar working on my brother\\'s Mac yet,\r\nand therefore haven\\'t played with <a\r\nhref=\\\"http://www.apple.com/ical\\\">iCal.app</a>, but I\\'ll clarify to the best of my\r\nunderstanding.\r\n</p>\r\n<p>\r\n<h3>Apples and Oranges</h3>\r\n\r\nWhen you talk about publishing to the web with iCal there are 2 distinct\r\nmeanings for that word.\r\n</p>\r\n<p>\r\nThe first, and more intuitive meaning, is the ability to publish in some way\r\nthat other people will be able to view that information with a web browser.  An\r\nexample of this is <a href=\\\"http://ical.mac.com/aaronsw/Travel\\\">AaronSW\\'s Travel\r\nCalendar</a>.  That view web page you are seeing however is a \r\n<a href=\\\"http://www.apple.com/webobjects/\\\">WebObjects</a>\r\napplication, and as far as I\\'ve been able to discover, a closed source one\r\navailable only as part of the .Mac service.\r\n</p>\r\n<p>\r\n<h3>The Post-Web World</h3>\r\n\r\nThe second meaning, and what is actually available to you without having a .Mac\r\naccount, is the ability to upload an .ics file.  An .ics file is a text file\r\nfull of \r\n<a href=\\\"http://www.ietf.org/html.charters/calsch-charter.html\\\">iCalendar</a> information.  While viewable in your web browser is about as\r\ninteresting as only seeing the source of webpages without browser rendering it\r\nfor you.  The way to use this file is to subscribe to it from within your iCal\r\napplication.  Apple has some example .ics files already available full of major\r\nholidays, Bruce Springsteen concerts, and the like.\r\n</p>\r\n<p>\r\nThis is what is meant when they say you can publish from iCal to your own,\r\nWebDAV enabled webserver.  In fact, you could do this process manually by\r\nexporting your events, and FTPing then up to a public directory somewhere on\r\nyour website.  You would lose the automated synchronization, but its an option\r\nfor those without the option of WebDAV.\r\n</p>\r\n<p>\r\nDesktop aggregators, desktop interfaces to CMSes, and now desktop applications\r\ncommunicating among themselves via the web.  It wasn\\'t what I thought Apple\r\nmeant when they said I could publish to my own server, but I don\\'t know that not\r\nconforming to my personal expectations makes it less cool.\r\n</p>\r\n<p>\r\nBtw., storing calendar information on a remote server via HTTP or FTP is also supported by the\r\n<a href=\\\"http://www.mozilla.org/projects/calendar/\\\">Mozilla Calendar</a>, and they didn\\'t create a new URI scheme.  Still nothing beats <a href=\\\"http://www.pandacorner.com/PandaSystems/PandoCalendar.html\\\">PandoCalendar</a>, even if its prayerware.\r\n</p>\r\n<p>\r\nAnd if digging through Apple\\'s Admin\\'s Guide to OS X is not your cup of tea, a short and sweet <a href=\\\"http://www.macosxhints.com/article.php?story=20020912065811863\\\">intro to enabling WebDAV on your local web server</a>. \r\n</p>"
---

Judging from my [web logs](http://laughingmeme.org/archives/searchq.png), and the referers I’m getting from Google, people are **very** interested in the much discussed ability for [iCal](http://www.aple.com/ical) to publish to any [WebDAV](http://www.webdav.org) enabled webserver, not just to the [$100/year .Mac service](http://www.mac.com).

Well I’ll be honest, I haven’t gotten Jaguar working on my brother’s Mac yet, and therefore haven’t played with [iCal.app](http://www.apple.com/ical), but I’ll clarify to the best of my understanding.

### Apples and Oranges

When you talk about publishing to the web with iCal there are 2 distinct meanings for that word.

The first, and more intuitive meaning, is the ability to publish in some way that other people will be able to view that information with a web browser. An example of this is [AaronSW’s Travel Calendar](http://ical.mac.com/aaronsw/Travel). That view web page you are seeing however is a [WebObjects](http://www.apple.com/webobjects/)application, and as far as I’ve been able to discover, a closed source one available only as part of the .Mac service.

### The Post-Web World

The second meaning, and what is actually available to you without having a .Mac account, is the ability to upload an .ics file. An .ics file is a text file full of [iCalendar](http://www.ietf.org/html.charters/calsch-charter.html) information. While viewable in your web browser is about as interesting as only seeing the source of webpages without browser rendering it for you. The way to use this file is to subscribe to it from within your iCal application. Apple has some example .ics files already available full of major holidays, Bruce Springsteen concerts, and the like.

This is what is meant when they say you can publish from iCal to your own, WebDAV enabled webserver. In fact, you could do this process manually by exporting your events, and FTPing then up to a public directory somewhere on your website. You would lose the automated synchronization, but its an option for those without the option of WebDAV.

Desktop aggregators, desktop interfaces to CMSes, and now desktop applications communicating among themselves via the web. It wasn’t what I thought Apple meant when they said I could publish to my own server, but I don’t know that not conforming to my personal expectations makes it less cool.

Btw., storing calendar information on a remote server via HTTP or FTP is also supported by the [Mozilla Calendar](http://www.mozilla.org/projects/calendar/), and they didn’t create a new URI scheme. Still nothing beats [PandoCalendar](http://www.pandacorner.com/PandaSystems/PandoCalendar.html), even if its prayerware.

And if digging through Apple’s Admin’s Guide to OS X is not your cup of tea, a short and sweet [intro to enabling WebDAV on your local web server](http://www.macosxhints.com/article.php?story=20020912065811863).