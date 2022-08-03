---
id: 58
title: 'Similar Entries, an update'
date: '2003-03-22T15:12:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=58'
permalink: /2003/03/22/similar-entries-an-update/
typo_id:
    - '56'
mt_id:
    - '550'
link_related:
    - ''
raw_content:
    - "<p>\r\nCrazy day running hither and yon, but I did spend a little more time hacking on\r\nsimilar entries.  Stripping HTML made a huge difference in accuracy.  However\r\nvery short entries were all flagged as being very similar (which is true I\r\nsuppose, they are all a blurb and some text, but this isn\\'t a very useful\r\ninformation).  \r\n<a href=\\\"http://javelina.cet.middlebury.edu/lsa/out/tdm.htm\\\">Term weighting</a> as suggested in this LSI intro seems to have\r\nraised accuracy dramatically (but required me to lower my threshold by an order\r\nof magnitude).  I still think I can improve the way categories are treated. \r\nAlso I want to do something more intelligent with links then discarding their\r\nhref info.  No progress on \r\n<a href=\\\"http://aaronland.info/weblog/archive/4938\\\">surprising results</a>. (maybe I could also include the least similar item?)\r\n</p>\r\n<p>\r\nIn the progress of doing this exercise I also noticed that I\\'m really bored\r\nwith the content I\\'ve been writing of late.  Ugh.  I don\\'t want to read most of\r\nthis stuff, what are you doing here?  Did get me thinking though.  You could use\r\nthis same technology for a document browser allowing you to flag blog entries as\r\nboring, there by decreasing your chance of seeing similar entries.\r\n</p>\r\n<p>\r\nAlso I\\'m running the script to find similar entries manually on my laptop, as\r\n<a href=\\\"http://protest.net\\\">some other website</a> on the server seems to be\r\ngetting a lot of traffic.  So there might be lags and stuff.\r\n</p>"
tags:
    - discovery
    - related
---

Crazy day running hither and yon, but I did spend a little more time hacking on similar entries. Stripping HTML made a huge difference in accuracy. However very short entries were all flagged as being very similar (which is true I suppose, they are all a blurb and some text, but this isn’t a very useful information). [Term weighting](http://javelina.cet.middlebury.edu/lsa/out/tdm.htm) as suggested in this LSI intro seems to have raised accuracy dramatically (but required me to lower my threshold by an order of magnitude). I still think I can improve the way categories are treated. Also I want to do something more intelligent with links then discarding their href info. No progress on [surprising results](http://aaronland.info/weblog/archive/4938). (maybe I could also include the least similar item?)

In the progress of doing this exercise I also noticed that I’m really bored with the content I’ve been writing of late. Ugh. I don’t want to read most of this stuff, what are you doing here? Did get me thinking though. You could use this same technology for a document browser allowing you to flag blog entries as boring, there by decreasing your chance of seeing similar entries.

Also I’m running the script to find similar entries manually on my laptop, as [some other website](http://protest.net) on the server seems to be getting a lot of traffic. So there might be lags and stuff.