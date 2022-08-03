---
id: 153
title: 'iCal Web Parity without .Mac'
date: '2002-09-16T14:52:06+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=153'
permalink: /2002/09/16/ical-web-parity-without-mac/
typo_id:
    - '151'
mt_id:
    - '162'
link_related:
    - ''
raw_content:
    - "<p>\r\nI\\'ve seen half a dozen conversations sprout up about adding iCal.app support to one of the open source web calendar.  Most peole want to be able to publish from within iCal.app and have it show up on the web, in something a little more dynamic then a text file.  This is easy, and only a matter of time. (in fact, looking at the <a href=\\\"http://blog.saalmann.de/categories/ical/\\\">iCal Blog</a>, looks like the <a href=\\\"http://blog.saalmann.de/categories/ical/2002/09/16.html#a202\\\">one already exists</a>)  Shortly some of the more established projects like <a href=\\\"http://www.horde.org/kronolith/\\\">Kronolith</a> or the various PHP groupwares, will support it. \r\n</p>\r\n<p>\r\nSome people want to be able to go the other way, subscribe to their web calendar, and have it show up in iCal.app (or \r\n<a href=\\\"http://www.mozilla.org/projects/calendar\\\">Mozilla calendar</a>).  This makes sense for: public event calendars like <a href=\\\"http://protest.net\\\">Protest.net</a>, and for tracking the schedules of your nearest and dearest.\r\n</p>\r\n<p>\r\nWhat everyone is going to eventually want, is a two-way connection.  Right now the relationships are all uni-directional.  If you\\'re publishing a calendar, then you aren\\'t subscribing to it, and visa versa.  So you are stuck either <b>only</b> editting events locally, or <b>only</b> editting them remotely, but not both.  Thats intolerable.\r\n</p>\r\n<p>\r\n<h3>The 3-file Hack for Pub/Sub iCal:  Worse is Better</h3>\r\n\r\nWell there are a number of good, technical solutions involving smarter protocols, like \r\n<a href=\\\"http://www.ietf.org/internet-drafts/draft-ietf-calsch-cap-08.txt\\\">CAP</a>, that would solve this problem for us.  However its taken 5 years, and Apple (doing for iCal like they did for 802.11b, USB, and a floppyless world), to get us to the point where anyone is using iCalendar even in its most basic form, so lets not hold our breath on CAP adoption.  Lets see if we can think of a solution right now.\r\n</p>\r\n<p>\r\nOne solutions that occurs to me is have 3 calendars (or at least .ics files) masquerading as one.\r\n\r\n<ul>\r\n<li>My_Calendar_in.ics - where your can publish all the events you\\'ve locally created.</li>\r\n\r\n<li>My_Calendar_out.ics - where your web cal publishes all the events created remotely.</li>\r\n\r\n<li>My_Calendar_public.ics - which collates the above 2 files, and is the url you hand out to the outside world to subscribe to.  This would be maintained by the web cal, which is outward facing view of the app.</li>\r\n</ul>\r\nThis scheme is limited in that you still can\\'t edit a file on your desktop, that you created on the website, but its simple with what we have installed, and I think its an 80% solution.\r\n</p>\r\n<p>\r\nAnd given that SyncML <b>won\\'t</b> be supported in version 1 of the already delayed iSync, we\\'re going to need to build our own open solutions, for at least a while.\r\n</p>"
---

I’ve seen half a dozen conversations sprout up about adding iCal.app support to one of the open source web calendar. Most peole want to be able to publish from within iCal.app and have it show up on the web, in something a little more dynamic then a text file. This is easy, and only a matter of time. (in fact, looking at the [iCal Blog](http://blog.saalmann.de/categories/ical/), looks like the [one already exists](http://blog.saalmann.de/categories/ical/2002/09/16.html#a202)) Shortly some of the more established projects like [Kronolith](http://www.horde.org/kronolith/) or the various PHP groupwares, will support it.

Some people want to be able to go the other way, subscribe to their web calendar, and have it show up in iCal.app (or [Mozilla calendar](http://www.mozilla.org/projects/calendar)). This makes sense for: public event calendars like [Protest.net](http://protest.net), and for tracking the schedules of your nearest and dearest.

What everyone is going to eventually want, is a two-way connection. Right now the relationships are all uni-directional. If you’re publishing a calendar, then you aren’t subscribing to it, and visa versa. So you are stuck either **only** editting events locally, or **only** editting them remotely, but not both. Thats intolerable.

### The 3-file Hack for Pub/Sub iCal: Worse is Better

Well there are a number of good, technical solutions involving smarter protocols, like [CAP](http://www.ietf.org/internet-drafts/draft-ietf-calsch-cap-08.txt), that would solve this problem for us. However its taken 5 years, and Apple (doing for iCal like they did for 802.11b, USB, and a floppyless world), to get us to the point where anyone is using iCalendar even in its most basic form, so lets not hold our breath on CAP adoption. Lets see if we can think of a solution right now.

One solutions that occurs to me is have 3 calendars (or at least .ics files) masquerading as one.

- My\_Calendar\_in.ics – where your can publish all the events you’ve locally created.
- My\_Calendar\_out.ics – where your web cal publishes all the events created remotely.
- My\_Calendar\_public.ics – which collates the above 2 files, and is the url you hand out to the outside world to subscribe to. This would be maintained by the web cal, which is outward facing view of the app.

This scheme is limited in that you still can’t edit a file on your desktop, that you created on the website, but its simple with what we have installed, and I think its an 80% solution.

And given that SyncML **won’t** be supported in version 1 of the already delayed iSync, we’re going to need to build our own open solutions, for at least a while.