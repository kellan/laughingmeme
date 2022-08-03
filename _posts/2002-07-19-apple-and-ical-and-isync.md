---
id: 56
title: 'Apple and iCal (and iSync)'
date: '2002-07-19T18:43:13+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=56'
permalink: /2002/07/19/apple-and-ical-and-isync/
typo_id:
    - '54'
mt_id:
    - '85'
link_related:
    - ''
raw_content:
    - "<p>\r\nThere are \r\n<a href=\\\"http://wmf.editthispage.com/discuss/msgReader$7829?mode=day\\\">lots of discussions</a> going on about whether Apple\\'s newly announced <a href=\\\"http://www.apple.com/ical\\\">iCal.app</a>, will actually support the venerable, and much discussed, though little deployed <a href=\\\"http://www.ietf.org/html.charters/calsch-charter.html\\\">iCalendar standard</a> (affectionately known as iCal)\r\n<p>\r\n<h3>Clues</h3>\r\n<ul>\r\n<li>In the keynote Jobs noted that the new <a href=\\\"http://www.apple.com/isync\\\">iSync.app</a> will use SyncML (though no news about this from the <a href=\\\"http://www.syncml.org/membership.html\\\">SyncML people</a>).  The <a href=\\\"http://www.syncml.org\\\">SyncML</a> spec is largely written by \r\n<a href=\\\"http://home.earthlink.net/~fdawson/resume.html\\\">Frank Dawson</a> of Lotus Scheduling fame, who is also the original author behind \r\n<a href=\\\"http://www.versit.com/pdi\\\">vCard/vCal</a> and the \r\niCalendar spec.  SyncML uses iCalendar as the data binding for calendar info.  Therefore iCalendar data is coming out of iCal one way or another, hopefully Apple did the smart thing up front and made iCal.app iCal aware.<p></li>\r\n<li>\\\"Send standards-based email event invitations\\\".  So far iCalendar\\'s greatest success has been its profile iMip, which maps the scheduling aspects of iCalendar into email.  Functioning if flawed implementations of this exist in both Outlook, and Entourage.  I can\\'t imagine Apple is using something else.\r\n</li>\r\n</ul>\r\nNow this doesn\\'t answer some of the more interesting questions of whether iCal.app will be a fully functioning CUA as laid out in \r\n<a href=\\\"http://www.ietf.org/rfc/rfc2446.txt\\\">iTip</a>, or what its on the wire protocol for talking to .Mac will be.\r\n</p>\r\n<p>\r\nAlso, because it \r\n<a href=\\\"http://wmf.editthispage.com/discuss/msgReader$7837?mode=day\\\">seems to be coming up</a> a lot, iCalendar\\'s relationship to vCalendar is essentially a version 2, and is largely backwards compatible.\r\n</p>"
categories:
    - Uncategorized
tags:
    - apple
    - calendaring
    - ical
    - icalendar
---

There are [lots of discussions](http://wmf.editthispage.com/discuss/msgReader$7829?mode=day) going on about whether Apple’s newly announced [iCal.app](http://www.apple.com/ical), will actually support the venerable, and much discussed, though little deployed [iCalendar standard](http://www.ietf.org/html.charters/calsch-charter.html) (affectionately known as iCal)

### Clues

- In the keynote Jobs noted that the new [iSync.app](http://www.apple.com/isync) will use SyncML (though no news about this from the [SyncML people](http://www.syncml.org/membership.html)). The [SyncML](http://www.syncml.org) spec is largely written by [Frank Dawson](http://home.earthlink.net/~fdawson/resume.html) of Lotus Scheduling fame, who is also the original author behind [vCard/vCal](http://www.versit.com/pdi) and the iCalendar spec. SyncML uses iCalendar as the data binding for calendar info. Therefore iCalendar data is coming out of iCal one way or another, hopefully Apple did the smart thing up front and made iCal.app iCal aware.
- “Send standards-based email event invitations”. So far iCalendar’s greatest success has been its profile iMip, which maps the scheduling aspects of iCalendar into email. Functioning if flawed implementations of this exist in both Outlook, and Entourage. I can’t imagine Apple is using something else.

Now this doesn’t answer some of the more interesting questions of whether iCal.app will be a fully functioning CUA as laid out in [iTip](http://www.ietf.org/rfc/rfc2446.txt), or what its on the wire protocol for talking to .Mac will be. Also, because it [seems to be coming up](http://wmf.editthispage.com/discuss/msgReader$7837?mode=day) a lot, iCalendar’s relationship to vCalendar is essentially a version 2, and is largely backwards compatible.