---
id: 822
title: 'Atom Feeds for Usenet'
date: '2004-05-14T10:16:57+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=822'
permalink: /2004/05/14/atom-feeds-for-usenet/
typo_id:
    - '820'
mt_id:
    - '2040'
link_related:
    - ''
raw_content:
    - "<p>\n<a href=\\\"http://groups-beta.google.com/\\\">Google Groups 2</a>  (nee DejaNews) is in beta, and available for play. \n</p>\n<p>\nAmong the new features is revival of the option for users to create new groups, putting then squarely in competition with <a href=\\\"http://groups.yahoo.com/\\\">YahooGroups</a>. (btw if you control both the mailing list and the mail account this opens up some cool possibilities, the most boring of which is keeping only a single copy of a message instead of one per subscribers [stuff we chatted about in the context of <a href=\\\"http://riseup.net\\\">Riseup</a>])\n</p>\n<p>\n<h3>Now with Atom</h3>\nHowever I think the coolest feature are the Atom feeds per group.  Just a short 9 years since I\\'ve stopped compulsive reading rec.arts.books <acronym title=\\\"rec.arts.books\\\">rab</acronym> has  <a href=\\\"http://groups-beta.google.com/group/rec.arts.books/feeds\\\">2 shiny new Atom feeds</a>, <a href=\\\"http://groups-beta.google.com/group/rec.arts.books/feed/msgs.xml\\\">recent posts</a>, and <a href=\\\"http://groups-beta.google.com/group/rec.arts.books/feed/topics.xml\\\">recent threads</a>.\n</p>\n<p>\nAn aside, I\\'ve always thought the argument of the form <cite>\\\"there are more RSS 2.0 feeds then any other format so...\\\"</cite> were specious, but <a href=\\\"http://scripting.com\\\">some people</a> are fond of them.  Well with Usenet+Blogger my gut says the total number of Atom feeds is on track to pass RSS 2.0.\n</p>\n<p>\n<h3>Whither the Atom Namespaces?</h3>\n\nMy critique of <a href=\\\"http://www.atomenabled.org/\\\">Atom</a> is, was, and has always been that it was invented as a weblog syndication format.  I brought this up during the initial design process, but the idea failed to gain traction.  Its very cool to see Usenet to RSS, but its a shame that this distinct content with its own unique metadata is getting shoe horned into looking like blog posts.\n</p>\n<p>\nWhere are the custom Atom namespaces? (modules in RSS 1.0 parlance)  I\\'ve noticed that as new Atom sources come online they seem to be shy about extending the core, and so some things which should not be forgotten, are lost.\n</p>\n<p>\n<h3>Give me Threads</h3>\nGoogle Groups as the definitive source of Usenet over Atom is in place to do some good for the world, and create a de facto standard for this space.  As they move into competition with YahooGroups (a service which while popular, hasn\\'t changed much in the last 3-4 years, except to ad the interstatials, and whose own syndicated offerings suck)  they\\'re going to be one of the largest providers of mailing lists.  At the very least threading information would be nice.  And if Atom can get it together and offer a decent, cross application threading module, I\\'ll take back all the nasty things I\\'ve said about it. (which really haven\\'t been that nasty)  We tried with RSS 1.0 and the ThreadML initative, but it kept bogging down.\n</p>\n<p>\nI tried to get this stuff <a href=\\\"http://www.intertwingly.net/wiki/pie/CommentEntryExample\\\">into Atom from the start</a>, but didn\\'t have the time/clout/cabal status to influence.  If I was modelling it today I would have used the <a href=\\\"http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.4\\\">link </a> element, with a new rel type.  Also might be worth checking out <a href=\\\"http://laughingmeme.org/archives/000234.html\\\">the prior art</a> in the space.\n</p>\n</p>\n<p>\nAlso does <a href=\\\"http://gmane.org/\\\">Gmane</a>  provide RSS feeds?  I a quick search this morning didn\\'t turn anything up. (talk about a candidate for Google acquisition, they wouldn\\'t even have to change the name)\n</p>\n<p>\n(Mark <a href=\\\"http://www.wingedpig.com/archives/000149.html\\\">agrees that YahooGroups has failed to innovate</a>, and he should know.)\n</p>\n<p>\n<b>update:</b> Proposal for <a href=\\\"http://intertwingly.net/wiki/pie/PaceLinkParent\\\">threading in Atom</a>\n</p>"
tags:
    - atom
    - collaboration
    - conversation
    - design
    - syndication
    - threads
---

[Google Groups 2](http://groups-beta.google.com/) (nee DejaNews) is in beta, and available for play.

Among the new features is revival of the option for users to create new groups, putting then squarely in competition with [YahooGroups](http://groups.yahoo.com/). (btw if you control both the mailing list and the mail account this opens up some cool possibilities, the most boring of which is keeping only a single copy of a message instead of one per subscribers [stuff we chatted about in the context of [Riseup](http://riseup.net)])

### Now with Atom

However I think the coolest feature are the Atom feeds per group. Just a short 9 years since I’ve stopped compulsive reading rec.arts.books <acronym title="rec.arts.books">rab</acronym> has [2 shiny new Atom feeds](http://groups-beta.google.com/group/rec.arts.books/feeds), [recent posts](http://groups-beta.google.com/group/rec.arts.books/feed/msgs.xml), and [recent threads](http://groups-beta.google.com/group/rec.arts.books/feed/topics.xml). An aside, I’ve always thought the argument of the form <cite>“there are more RSS 2.0 feeds then any other format so…”</cite> were specious, but [some people](http://scripting.com) are fond of them. Well with Usenet+Blogger my gut says the total number of Atom feeds is on track to pass RSS 2.0.

### Whither the Atom Namespaces?

My critique of [Atom](http://www.atomenabled.org/) is, was, and has always been that it was invented as a weblog syndication format. I brought this up during the initial design process, but the idea failed to gain traction. Its very cool to see Usenet to RSS, but its a shame that this distinct content with its own unique metadata is getting shoe horned into looking like blog posts.

Where are the custom Atom namespaces? (modules in RSS 1.0 parlance) I’ve noticed that as new Atom sources come online they seem to be shy about extending the core, and so some things which should not be forgotten, are lost.

### Give me Threads

Google Groups as the definitive source of Usenet over Atom is in place to do some good for the world, and create a de facto standard for this space. As they move into competition with YahooGroups (a service which while popular, hasn’t changed much in the last 3-4 years, except to ad the interstatials, and whose own syndicated offerings suck) they’re going to be one of the largest providers of mailing lists. At the very least threading information would be nice. And if Atom can get it together and offer a decent, cross application threading module, I’ll take back all the nasty things I’ve said about it. (which really haven’t been that nasty) We tried with RSS 1.0 and the ThreadML initative, but it kept bogging down. I tried to get this stuff [into Atom from the start](http://www.intertwingly.net/wiki/pie/CommentEntryExample), but didn’t have the time/clout/cabal status to influence. If I was modelling it today I would have used the [link ](http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.4) element, with a new rel type. Also might be worth checking out [the prior art](http://laughingmeme.org/archives/000234.html) in the space.

Also does [Gmane](http://gmane.org/) provide RSS feeds? I a quick search this morning didn’t turn anything up. (talk about a candidate for Google acquisition, they wouldn’t even have to change the name)

(Mark [agrees that YahooGroups has failed to innovate](http://www.wingedpig.com/archives/000149.html), and he should know.)

**update:** Proposal for [threading in Atom](http://intertwingly.net/wiki/pie/PaceLinkParent)