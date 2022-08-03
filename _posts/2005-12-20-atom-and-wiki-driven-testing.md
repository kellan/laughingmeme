---
id: 3169
title: 'Atom and Wiki Driven Testing'
date: '2005-12-20T13:25:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3169'
permalink: /2005/12/20/atom-and-wiki-driven-testing/
typo_id:
    - '3167'
mt_id:
    - ''
link_related:
    - ''
raw_content:
    - "Its been a long standing todo to port Mark\\'s [FeedParser tests](http://feedparser.org/tests/) to work against Magpie, possibly with an intermediate representation to allow cross-language testing. (has any work been down on capturing unit tests/acceptance tests in XML?)  Sam\\'s [approach][testing-feedtools] hilights Ruby-the-language\\'s awesome flexibility (I\\'d been playing with something similar for the parser we wrote for [Odeo][odeo]), but doesn\\'t map to PHP/Magpie very well.\r\n\r\n[Phil](http://feedparser.org/tests/) kicked off a [new round](http://weblog.philringnalda.com/2005/12/18/who-knows-a-title-from-a-hole-in-the-ground) of testing for Atom 1.0, the results of which are [now captured in the Atom wiki](http://intertwingly.net/wiki/pie/TitleConformanceTests). (not to mention a few gentle nudges on Magpie\\'s lack of 1.0 compliance.)\r\n\r\nAll of which got me thinking, it would be exceptionally cool if someone made the FeedParser\\'s tests available on the [Atom wiki][atom-wiki] using [Ward\\'s](http://c2.com/~ward/) [FIT](http://fit.c2.com/) concept in a documented, reportable fashion.\r\n\r\nAny takers?\r\n\r\n[testing-feedtools]: http://www.intertwingly.net/blog/2005/10/30/Testing-FeedTools-Dynamically\r\n[odeo]: http://odeo.com\r\n[atom-wiki]: http://www.intertwingly.net/wiki/pie/FrontPage"
tags:
    - atom
    - magpie
    - rss
    - syndication
    - tdd
    - testing
    - wiki
---

Its been a long standing todo to port Mark’s [FeedParser tests](http://feedparser.org/tests/) to work against Magpie, possibly with an intermediate representation to allow cross-language testing. (has any work been down on capturing unit tests/acceptance tests in XML?) Sam’s [approach][testing-feedtools] hilights Ruby-the-language’s awesome flexibility (I’d been playing with something similar for the parser we wrote for [Odeo][odeo]), but doesn’t map to PHP/Magpie very well.

[Phil](http://feedparser.org/tests/) kicked off a [new round](http://weblog.philringnalda.com/2005/12/18/who-knows-a-title-from-a-hole-in-the-ground) of testing for Atom 1.0, the results of which are [now captured in the Atom wiki](http://intertwingly.net/wiki/pie/TitleConformanceTests). (not to mention a few gentle nudges on Magpie’s lack of 1.0 compliance.)

All of which got me thinking, it would be exceptionally cool if someone made the FeedParser’s tests available on the [Atom wiki][atom-wiki] using [Ward’s](http://c2.com/~ward/) [FIT](http://fit.c2.com/) concept in a documented, reportable fashion.

Any takers?