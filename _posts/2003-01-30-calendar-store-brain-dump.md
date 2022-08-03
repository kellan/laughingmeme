---
id: 298
title: 'Calendar Store Brain Dump'
date: '2003-01-30T08:26:30+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=298'
permalink: /2003/01/30/calendar-store-brain-dump/
typo_id:
    - '296'
mt_id:
    - '329'
link_related:
    - ''
raw_content:
    - "<p>\nSomeone just asked me for information on open source calendar stores.  This is my brain dump.   Might be out of date.\n</p>\n<p>\nLast time I did a thorough investigation there was no open source, mature,\nstandards compliant calendar server aka calendar store.  This is partially\nbecause \n<a href=\\\"http://www.ietf.org/internet-drafts/draft-ietf-calsch-cap-09.txt\\\">CAP</a> is <em>still</em> in draft after 5 years or so of discussion, and partially\nbecause it very complicated protocol.\n</p>\n<p>\nLately I\\'ve been wondering if perhaps Apple and the Mozilla teams will by pass\nthe need for a complex \n<a href=\\\"http://beepcore.org\\\">BEEP</a> based Calendar protocol with their examples of how\nto do calendar sharing with only the iCalendar stanard, and HTTP.\n</p>\n<p>\nSome options:\n<ul>\n<li> \n<a href=\\\"http://www.phpgroupware.org/\\\">phpGroupware</a> is probably the most popular of the open source calendar stores. \nImplements a web calendar, and a dozen other things, and has an API for clients\nto call into.  right now their website is offline however :(</li>\n\n\n<li>\n<a href=\\\"http://mcal.chek.com/\\\">MCAL</a> is a library for implementing a calendar store.  It is an optional backend\nto Kronolith, and has some useful abstractions.  Development stopped on it a\nlong time ago though, and it doesn\\'t track the Calsch strandards.</li>\n\n<li> \n<a href=\\\"http://softwarestudio.org/libical/\\\">libical (aka freeassociation)</a> is a little more challenging to use then MCAL,\nbut is the standard library people use for working with iCalendar objects.\n(e.g. its used by Evolution)\n</li>\n<li> <a href=\\\"http://reefknot.sf.net\\\">Reefknot</a> is supposed to deliver a full suite of Perl implementations of the\nCalsch protocols, which would be enough to roll your own CS, unfortunately they\ngot bogged down about a year ago with a long way to go.\n</li>\n<li>\n<a href=\\\"http://www.washington.edu/ucal/\\\">UW Calendar</a>, from the school that brought you Pine, an iCalendar inspired, Java\napp.  unclear as to the current state of it.\n</li>\n<li>\nThe Open Office folks have a \n<a href=\\\"http://groupware.openoffice.org\\\">groupware initiative</a> that they\\'ve discussed a lot,\ndon\\'t know if there is any code.\n</li>\n<li>\n<a href=\\\"http://www.opencap.org/html/\\\">OpenCap</a> was announced with a flourish and some code on the Calsch mailing list,\nbut I don\\'t think it continued. (I could be slandering them)\n</li>\n<li>\nInteresting email from the original author of libical on a \n<a href=\\\"http://softwarestudio.org/mail-archives/libical/2182.html\\\">CAP server design</a>\n</li>\n</ul>\n</p>\n<p>\nPromising development:\n<ul>\n<li>\n<a href=\\\"http://www.ximian.com/products/evolution/\\\">Evolution</a> has a lot of momentum, and iCalendar support.  They seem one of the\nmost likely groups to put together their own calendar server.  Unfortunately\nthey have a commercial product selling compatibility with Exchange, which\nprobably servers as a demotivator.\n</li>\n<li>\n<a href=\\\"http://korganizer.kde.org/\\\">KOrganizer</a> folks have been asking for a server to connect to for a long time, they\\'ve architected around it.  They do have pretty good iTIP support.\n</li>\n<li>\n<a href=\\\"http://www.horde.org/kronolith/\\\">Kronolith</a> is the web calendar from the Horde project.  Has a lot of energy,\nand active development going on.  Support for free/busy queries, and iTIP,\nworking on support iCal over HTTP.\n</li>\n<li>\n<a href=\\\"http://www.mozilla.org/projects/calendar/\\\">Mozilla calendar</a> and \n<a href=\\\"http://www.apple.com/ical/\\\">Apple calendar</a> both by-pass the need for a Calendar store\nby publishing over HTTP, Apple with WebDav, and Mozilla with PUT.  This is\nobviously more limited then a full CAP server, but it can work surprisingly\nwell.  I\\'m hoping that this might spark a new wave of calendar innovation.\n</li>\n</ul>\n</p>"
---

Someone just asked me for information on open source calendar stores. This is my brain dump. Might be out of date.

Last time I did a thorough investigation there was no open source, mature, standards compliant calendar server aka calendar store. This is partially because [CAP](http://www.ietf.org/internet-drafts/draft-ietf-calsch-cap-09.txt) is *still* in draft after 5 years or so of discussion, and partially because it very complicated protocol.

Lately I’ve been wondering if perhaps Apple and the Mozilla teams will by pass the need for a complex [BEEP](http://beepcore.org) based Calendar protocol with their examples of how to do calendar sharing with only the iCalendar stanard, and HTTP.

Some options:

- [phpGroupware](http://www.phpgroupware.org/) is probably the most popular of the open source calendar stores. Implements a web calendar, and a dozen other things, and has an API for clients to call into. right now their website is offline however ![:(](http://lm.local/wp-includes/images/smilies/frownie.png)
- [MCAL](http://mcal.chek.com/) is a library for implementing a calendar store. It is an optional backend to Kronolith, and has some useful abstractions. Development stopped on it a long time ago though, and it doesn’t track the Calsch strandards.
- [libical (aka freeassociation)](http://softwarestudio.org/libical/) is a little more challenging to use then MCAL, but is the standard library people use for working with iCalendar objects. (e.g. its used by Evolution)
- [Reefknot](http://reefknot.sf.net) is supposed to deliver a full suite of Perl implementations of the Calsch protocols, which would be enough to roll your own CS, unfortunately they got bogged down about a year ago with a long way to go.
- [UW Calendar](http://www.washington.edu/ucal/), from the school that brought you Pine, an iCalendar inspired, Java app. unclear as to the current state of it.
- The Open Office folks have a [groupware initiative](http://groupware.openoffice.org) that they’ve discussed a lot, don’t know if there is any code.
- [OpenCap](http://www.opencap.org/html/) was announced with a flourish and some code on the Calsch mailing list, but I don’t think it continued. (I could be slandering them)
- Interesting email from the original author of libical on a [CAP server design](http://softwarestudio.org/mail-archives/libical/2182.html)

Promising development:

- [Evolution](http://www.ximian.com/products/evolution/) has a lot of momentum, and iCalendar support. They seem one of the most likely groups to put together their own calendar server. Unfortunately they have a commercial product selling compatibility with Exchange, which probably servers as a demotivator.
- [KOrganizer](http://korganizer.kde.org/) folks have been asking for a server to connect to for a long time, they’ve architected around it. They do have pretty good iTIP support.
- [Kronolith](http://www.horde.org/kronolith/) is the web calendar from the Horde project. Has a lot of energy, and active development going on. Support for free/busy queries, and iTIP, working on support iCal over HTTP.
- [Mozilla calendar](http://www.mozilla.org/projects/calendar/) and [Apple calendar](http://www.apple.com/ical/) both by-pass the need for a Calendar store by publishing over HTTP, Apple with WebDav, and Mozilla with PUT. This is obviously more limited then a full CAP server, but it can work surprisingly well. I’m hoping that this might spark a new wave of calendar innovation.