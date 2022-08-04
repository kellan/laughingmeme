---
id: 40
title: 'Tech Todos – RSS Event feeds from Protest.net calendars'
date: '2002-05-25T15:27:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=40'
permalink: /2002/05/25/tech-todos-rss-event-feeds-from-protestnet-calendars/
typo_id:
    - '38'
mt_id:
    - '36'
link_related:
    - ''
raw_content:
    - "<p>\r\n<a href=\\\"http://protest.net\\\">Protest.net\\'s</a> software (aka calendrome)\r\n certainly has its problems.  It was the first major piece of\r\n\tsoftware development we ever did, and due to some historical issues we\\'re\r\n\tnot allowed to release the code under a free license, but it does also have\r\n\tsome neat features, and I try to encourage people to look past the\r\nwarts, and see what it can do for them.\r\n</p>\r\n<p>\r\n\tHere in Seattle, the IMC is interested in taking the \r\n\t<a href=\\\"http://www.scn.org/activism/calendar/\\\">SCN Calendar</a> and making\r\n\tit into something more useful.  However once they\\'ve done all the work: of\r\n\tgetting Jean using a new tool; getting allies setup with their own calendars;\r\n\tsetting up the merge rules to pull these  ally events into one calendar; and configuring look and feel so\r\nthat it isn\\'t jarring to visit,  then\r\n\tthey\\'ll want some way to syndicate it to <a\r\n\thref=\\\"http://seattle.indymedia.org\\\">Seattle-IMC</a>.\r\n\t</p>\r\n<p>\r\n\tSo, soon Protest.net calendars will have RSS1.0 feeds using the \r\n\t<a href=\\\"http://purl.org/rss/1.0/modules/event\\\">events modules</a>\r\n</p>\r\n<p>\r\nUPDATE:  The feeds are working!  Urls are of the form:\r\n<ul>\r\n<li><a href=\\\"http://protest.net/dcimc/rss\\\">http://protest.net/dcimc/rss</a>\r\n<li><a href=\\\"http://protest.net/NorthEast/rss?type=Protest\\\">http://protest.net/NorthEast/rss?type=Protest</a>\r\n<li><a href=\\\"http://protest.net/NorthEast/rss?type=Protest&location=Northampton&subject=Peace\\\">http://protest.net/NorthEast/rss?type=Protest&location=Northampton&subject=Peace</a>\r\n</ul>\r\n</p>\r\n<p>\r\nUPDATE:  Parsing RSS event feeds that use mod_event?  Checkout <a href=\\\"http://magpierss.sf.net\\\">MagpieRSS, a RSS parser in PHP</a>.\r\n</p>"
tags:
    - calendaring
    - protest.net
    - rss
---

[Protest.net’s](http://protest.net) software (aka calendrome) certainly has its problems. It was the first major piece of software development we ever did, and due to some historical issues we’re not allowed to release the code under a free license, but it does also have some neat features, and I try to encourage people to look past the warts, and see what it can do for them.

 Here in Seattle, the IMC is interested in taking the [SCN Calendar](http://www.scn.org/activism/calendar/) and making it into something more useful. However once they’ve done all the work: of getting Jean using a new tool; getting allies setup with their own calendars; setting up the merge rules to pull these ally events into one calendar; and configuring look and feel so that it isn’t jarring to visit, then they’ll want some way to syndicate it to [Seattle-IMC](http://seattle.indymedia.org).

 So, soon Protest.net calendars will have RSS1.0 feeds using the [events modules](http://purl.org/rss/1.0/modules/event)

UPDATE: The feeds are working! Urls are of the form:

- <http://protest.net/dcimc/rss>
- <http://protest.net/NorthEast/rss?type=Protest>
- [http://protest.net/NorthEast/rss?type=Protest&amp;location=Northampton&amp;subject=Peace](http://protest.net/NorthEast/rss?type=Protest&location=Northampton&subject=Peace)

UPDATE: Parsing RSS event feeds that use mod\_event? Checkout [MagpieRSS, a RSS parser in PHP](http://magpierss.sf.net).