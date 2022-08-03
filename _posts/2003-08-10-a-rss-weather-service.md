---
id: 504
title: 'A RSS Weather Service'
date: '2003-08-10T20:18:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=504'
permalink: /2003/08/10/a-rss-weather-service/
typo_id:
    - '502'
mt_id:
    - '1070'
link_related:
    - ''
raw_content:
    - "<p>\r\nLanded in Seattle today.  It was raining.  The city <a href=\\\"http://laughingmeme.org/archives/000973.html\\\">wooed, and won me</a>, and now it can rain.  In other news I made a push on the flight out today to try to bash my <a href=\\\"http://laughingmeme.org/weather-rss/\\\">Weather RSS project</a> into workable order before I starting hacking on <a href=\\\"http://laughingmeme.org/archives/001022.html\\\">other projects</a> full time tomorrow.  I got it there, but just barely.\r\n</p>\r\n\n<p>\r\n<h3>Some caveats</h3>\r\n<ul>\r\n<li>Doesn\\'t work for US cities.  Its coming, but I didn\\'t get to it today.</li>\r\n<li>Be gentle, running as a CGI so its slow, and resource intensive.</li>\r\n<li>Weather info updates every 3 hours, don\\'t hit a feed more often then that.</li>\r\n<li>Absolutely everything is subject to change, and probably will.</li>\r\n<li>Very little in the way of error handling, and robustness checking.</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<h3>Feedback desired</h3>\r\n<ul>\r\n<li>Missing cities?</li>\r\n<li>Mangled data?</li>\r\n<li>Thoughts on the format?</li>\r\n<li>Thoughts on the module? (see the <a href=\\\"http://www.quicktopic.com/em/H/aZRarGycKBuyE\\\">mod_weather quicktopic discussion</a>)</li>\r\n<li>Anything else</li>\r\n</ul>\r\n</p>\r\n<p>\r\nAnd the project has its own <a href=\\\"http://laughingmeme.org/weather.rss\\\">rss feed</a>.\r\n</p>\r\n<p>\r\n<h3>Samples</h3>\r\n<ul>\r\n<li><a href=\\\"http://laughingmeme.org/weather-rss/uruguay/montevideo.rss\\\">Montevideo, Uruguay</a> for <a href=\\\"http://anarchogeek.com\\\">Rabble</a>, and <a href=\\\"http://gaba.protest.net\\\">gaba</a>.\r\n<li><a href=\\\"http://laughingmeme.org/weather-rss/Canada/Vancouver.rss\\\">Vancouver, Canada</a> for <a href=\\\"http://www.tbray.org/ongoing/When/200x/2003/06/19/RSS4All\\\">Tim Bray</a></li>\r\n</ul>\r\n</p>"
tags:
    - rss
    - seattle
    - weather
---

Landed in Seattle today. It was raining. The city [wooed, and won me](http://laughingmeme.org/archives/000973.html), and now it can rain. In other news I made a push on the flight out today to try to bash my [Weather RSS project](http://laughingmeme.org/weather-rss/) into workable order before I starting hacking on [other projects](http://laughingmeme.org/archives/001022.html) full time tomorrow. I got it there, but just barely.

### Some caveats

- Doesn’t work for US cities. Its coming, but I didn’t get to it today.
- Be gentle, running as a CGI so its slow, and resource intensive.
- Weather info updates every 3 hours, don’t hit a feed more often then that.
- Absolutely everything is subject to change, and probably will.
- Very little in the way of error handling, and robustness checking.

### Feedback desired

- Missing cities?
- Mangled data?
- Thoughts on the format?
- Thoughts on the module? (see the [mod\_weather quicktopic discussion](http://www.quicktopic.com/em/H/aZRarGycKBuyE))
- Anything else

And the project has its own [rss feed](http://laughingmeme.org/weather.rss).

### Samples

- [Montevideo, Uruguay](http://laughingmeme.org/weather-rss/uruguay/montevideo.rss) for [Rabble](http://anarchogeek.com), and [gaba](http://gaba.protest.net).
- [Vancouver, Canada](http://laughingmeme.org/weather-rss/Canada/Vancouver.rss) for [Tim Bray](http://www.tbray.org/ongoing/When/200x/2003/06/19/RSS4All)