---
id: 3325
title: 'Google Calendar nee CL2'
date: '2006-04-13T08:59:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3325'
permalink: /2006/04/13/google-calendar-nee-cl2/
typo_id:
    - '3324'
mt_id:
    - ''
link_related:
    - ''
raw_content:
    - "**My favorite [Google calendar](http://calendar.google.com) feature**:  Daily Agenda, a daily email overview of the days events.  Though when you\\'re in there looking at the nofitications tab you\\'ll notice no notifications via IM support. (even for those of us using Jabber/GTalk)\r\n\r\n**Least favorite**: Search public calendars is wrong wrong wrong, not the least because it shows me calendars for 2005.\r\n\r\nFeels more done then recent Google releases, but what will make it is the GMail integration. (or break it if we all migrate away from GMail at some point)\r\n\r\n\n**Bonus**: a new Google syndication namespace with event elements:  [http://schemas.google.com/g/2005](http://schemas.google.com/g/2005)\r\n\r\n    <gd:transparency value=\\\"http://schemas.google.com/g/2005#event.opaque\\\"/>\r\n    <gd:comments>\r\n         <gd:feedLink href=\\\"http://www.google.com/calendar/feeds/kellan%40gmail.com/public/full/nqjhksjic4h8nchfdq5i1i3l0o/comments/\\\"/>\r\n     </gd:comments>\r\n     <gd:eventStatus value=\\\"http://schemas.google.com/g/2005#event.confirmed\\\"/>\r\n     <gd:when startTime=\\\"2006-04-14T15:00:00.000Z\\\" endTime=\\\"2006-04-14T16:00:00.000Z\\\"/>\r\n     <gd:where valueString=\\\"100 Somestreet St., Jamaica Plain, MA\\\"/>\r\n\r\nDocumentation?"
tags:
    - 0day
    - calendaring
    - cl2
    - google
    - syndication
---

**My favorite [Google calendar](http://calendar.google.com) feature**: Daily Agenda, a daily email overview of the days events. Though when you’re in there looking at the nofitications tab you’ll notice no notifications via IM support. (even for those of us using Jabber/GTalk)

**Least favorite**: Search public calendars is wrong wrong wrong, not the least because it shows me calendars for 2005.

Feels more done then recent Google releases, but what will make it is the GMail integration. (or break it if we all migrate away from GMail at some point)

**Bonus**: a new Google syndication namespace with event elements: [http://schemas.google.com/g/2005](http://schemas.google.com/g/2005)

```
<gd:transparency value="http://schemas.google.com/g/2005#event.opaque"/>
<gd:comments>
     <gd:feedLink href="http://www.google.com/calendar/feeds/kellan%40gmail.com/public/full/nqjhksjic4h8nchfdq5i1i3l0o/comments/"/>
 </gd:comments>
 <gd:eventStatus value="http://schemas.google.com/g/2005#event.confirmed"/>
 <gd:when startTime="2006-04-14T15:00:00.000Z" endTime="2006-04-14T16:00:00.000Z"/>
 <gd:where valueString="100 Somestreet St., Jamaica Plain, MA"/>

```

Documentation?