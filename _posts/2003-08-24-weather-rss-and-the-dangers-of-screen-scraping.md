---
id: 569
title: 'Weather RSS and the Dangers of Screen Scraping'
date: '2003-08-24T15:29:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=569'
permalink: /2003/08/24/weather-rss-and-the-dangers-of-screen-scraping/
typo_id:
    - '567'
mt_id:
    - '1134'
link_related:
    - ''
raw_content:
    - "<p>\r\nSo the <a href=\\\"http://laughingmeme.org/weather-rss\\\">Weather RSS service</a> is down right now.  The whole thing is driven by screen scraping because the freely available sources of weather info suck (or at least <a href=\\\"http://laughingmeme.org/archives/000894.html\\\">the ones I can find</a> do).\r\n</p>\r\n<p>\r\n<h3>Weather.gov</h3>\r\nI have a working screen scraper for <a href=\\\"http://weather.gov\\\">Weather.gov</a> but unforunately their URLs are relatively obscure.  I have some code to mechanize their search form, but they got a bit jumpy, and temporarily blocked my IP while I was tuning it.  So I put them on hold, and went with <a href=\\\"http://wunderground.com\\\">Wunderground.</a>\r\n</p>\r\n<p>\r\n<h3>Wunderground</h3>\r\nWell the Wunderground has US and international weather, so that is a plus, and nicely predictable URLs, which really helps when you\\'re screen scraping.  But they HTML sucks.  Its very much circa 1997, but more cluttered.   Its not a field I have a lot of expirence with, but I thought my scraper was pretty good, but 2 week later it is broken.  Ugh.\r\n</p>\r\n<p>\r\n<h3>Weather.com</h3>\r\nHaven\\'t tried weather.com yet, years ago when I was last playing with weather, they blocked my IP for scraping (and I\\'m being well behaved I promise!), don\\'t know if they still do that, my instinct is not, at least not within reason.  However their URLs seem totally arbitrary, probably pegged to an internal numbering scheme.  If anyone knows differently that would be great.  (Also their editorial voice is insipid, the differnece I suppose between people who study weather for a living, and those who sell it for a living, e.g \\\"Sunny\\\" becomes \\\"Plentiful sunshine\\\".)\r\n</p>\r\n<p>\r\n<h3>More Domain Knowledge and Directories</h3>\r\nLooks like I\\'m going to have to move away form Wunderground, their HTML just isn\\'t reliable enough.  To do that I\\'ll need to understand the identifiers the NOAA and Weather.com are using.  The NOAA identifiers are standard I think, but I havne\\'t found a good documentation of them.  The Weather.com identifiers could probably be fetched by walking their website (or their syndicated Yahoo weather site which has a more directory like structure)  The one problem with moving to using the identifiers rather then a search  interface is rather then allowing free form entry, one would want to present the users with a deeply nested list of possible choices, which has never worked all that well on the web.  I just downloaded <a href=\\\"http://glu.com/products/weatherpop/index.html\\\">WeatherPop</a> (sweet little app btw), who I suspect is also a screen scraper (though I should probalby examine my outgoing traffic before making that claim) to see how it handles this problem, and presenting a drill down list is exactly what it does.\r\n</p>\r\n<p>\r\nAnyone has other suggestions for data in a workable format, let me know.  God knows I hate screen scraping in this day and page (CSS makes it easier, but it feels so backwards)\r\n</p>\r\n<p>\r\nThat and I never quite got conditional gets supported, it was working in Magpie, and at least one of the Windows clients (don\\'t remember which one) but not in NNW, or most of the other readers.\r\n</p>\r\n<p>\r\nAnd last but not least, there is the lovely \\\"Divsion by zero\\\" error I get when trying to view <a href=\\\"http://www.crh.noaa.gov/forecasts/COZ040.php\\\">Denver\\'s weather</a>.\r\n</p>"
tags:
    - perl
    - rss
    - screenscraping
    - weather
    - webservices
---

So the [Weather RSS service](http://laughingmeme.org/weather-rss) is down right now. The whole thing is driven by screen scraping because the freely available sources of weather info suck (or at least [the ones I can find](http://laughingmeme.org/archives/000894.html) do).

### Weather.gov

I have a working screen scraper for [Weather.gov](http://weather.gov) but unforunately their URLs are relatively obscure. I have some code to mechanize their search form, but they got a bit jumpy, and temporarily blocked my IP while I was tuning it. So I put them on hold, and went with [Wunderground.](http://wunderground.com)### Wunderground

Well the Wunderground has US and international weather, so that is a plus, and nicely predictable URLs, which really helps when you’re screen scraping. But they HTML sucks. Its very much circa 1997, but more cluttered. Its not a field I have a lot of expirence with, but I thought my scraper was pretty good, but 2 week later it is broken. Ugh. ### Weather.com

Haven’t tried weather.com yet, years ago when I was last playing with weather, they blocked my IP for scraping (and I’m being well behaved I promise!), don’t know if they still do that, my instinct is not, at least not within reason. However their URLs seem totally arbitrary, probably pegged to an internal numbering scheme. If anyone knows differently that would be great. (Also their editorial voice is insipid, the differnece I suppose between people who study weather for a living, and those who sell it for a living, e.g “Sunny” becomes “Plentiful sunshine”.) ### More Domain Knowledge and Directories

Looks like I’m going to have to move away form Wunderground, their HTML just isn’t reliable enough. To do that I’ll need to understand the identifiers the NOAA and Weather.com are using. The NOAA identifiers are standard I think, but I havne’t found a good documentation of them. The Weather.com identifiers could probably be fetched by walking their website (or their syndicated Yahoo weather site which has a more directory like structure) The one problem with moving to using the identifiers rather then a search interface is rather then allowing free form entry, one would want to present the users with a deeply nested list of possible choices, which has never worked all that well on the web. I just downloaded [WeatherPop](http://glu.com/products/weatherpop/index.html) (sweet little app btw), who I suspect is also a screen scraper (though I should probalby examine my outgoing traffic before making that claim) to see how it handles this problem, and presenting a drill down list is exactly what it does. Anyone has other suggestions for data in a workable format, let me know. God knows I hate screen scraping in this day and page (CSS makes it easier, but it feels so backwards)

That and I never quite got conditional gets supported, it was working in Magpie, and at least one of the Windows clients (don’t remember which one) but not in NNW, or most of the other readers.

And last but not least, there is the lovely “Divsion by zero” error I get when trying to view [Denver’s weather](http://www.crh.noaa.gov/forecasts/COZ040.php).