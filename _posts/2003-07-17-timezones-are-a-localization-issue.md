---
id: 516
title: 'Timezones are a localization issue'
date: '2003-07-17T13:32:59+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=516'
permalink: /2003/07/17/timezones-are-a-localization-issue/
typo_id:
    - '514'
mt_id:
    - '992'
link_related:
    - ''
raw_content:
    - "<p>\r\nJust got into a bit of a thread on this, and Bill Kearney hilights one of the key issues, <a href=\\\"http://www.syndic8.com/~wkearney/blogs/syndic8/archives/000163.html\\\">date math, and daylight savings</a>.\r\n</p>\r\n<p>\r\nThe solution is simple, don\\'t work in local time.  Local time feels important to us, but thats false, its a display issue, much like whether large numbers are punctuated by commas or periods.  Do all your math in UTC, cast to the local timezone when appropiate.  And stay the hell away from float time.\r\n</p>"
---

Just got into a bit of a thread on this, and Bill Kearney hilights one of the key issues, [date math, and daylight savings](http://www.syndic8.com/~wkearney/blogs/syndic8/archives/000163.html).

The solution is simple, don’t work in local time. Local time feels important to us, but thats false, its a display issue, much like whether large numbers are punctuated by commas or periods. Do all your math in UTC, cast to the local timezone when appropiate. And stay the hell away from float time.