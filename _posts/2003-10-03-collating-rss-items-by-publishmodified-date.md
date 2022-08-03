---
id: 617
title: 'Collating RSS Items by Publish/Modified Date'
date: '2003-10-03T19:24:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=617'
permalink: /2003/10/03/collating-rss-items-by-publishmodified-date/
typo_id:
    - '615'
mt_id:
    - '1280'
link_related:
    - ''
raw_content:
    - "Jarno who says we <a href=\\\"http://www.hole.fi/jajvirta/weblog/20031001T1201.html\\\">shouldn\\'t use the timestamp in RSS feeds to sort the entries</a>, also invites us to disagree.  And I disagree.  People keep forgetting that RSS pre-dates blogging, and is used for other tasks this pushing headlines to a desktop aggregator.  Wish people would stop trying to limit us all because they lose sight of the bigger picture (as was done with Atom in my opinion) or are working with a poorly thought out spec. (Userland RSS)  Just for the record, I\\'ve included below the algorithm I used to sort items into a collated list in one of my aggregators.\r\n\n<ul>\r\n<li> check for a dc:date or pubDate per item, and assign the item that as its pub/mod date.  (unfortunately for me, the handful of feeds published in Userland RSS I was aggregating were confused by the lastBuildDate tag, using it to keep track of the last build date for an item or a channel, instead of the item\\'s modification date, making it largely useless)</li>\r\n<li>otherwise, attempt to a certain the most recent publish time of the feed, by either looking at the channel\\'s dc:date, or the channel\\'s pubDate, and use that as the pub/mod time for all newly seen items.\r\n</li>\r\n<li>\r\nThis has some nice features.  Like, depending on how smart your aggregator is, it could do the right thing with the <a href=\\\"http://upcoming.org\\\">upcoming</a> RSS feeds, even though they don\\'t use <a href=\\\"http://www.purl.org/rss/1.0/modules/event/\\\">mod_event</a>. (note to self, send <a href=\\\"http://waxy.org\\\">Andy</a> a note about that)\r\n</li>"
tags:
    - aggregation
    - howto
    - magpie
    - rss
---

Jarno who says we [shouldn’t use the timestamp in RSS feeds to sort the entries](http://www.hole.fi/jajvirta/weblog/20031001T1201.html), also invites us to disagree. And I disagree. People keep forgetting that RSS pre-dates blogging, and is used for other tasks this pushing headlines to a desktop aggregator. Wish people would stop trying to limit us all because they lose sight of the bigger picture (as was done with Atom in my opinion) or are working with a poorly thought out spec. (Userland RSS) Just for the record, I’ve included below the algorithm I used to sort items into a collated list in one of my aggregators.

- check for a dc:date or pubDate per item, and assign the item that as its pub/mod date. (unfortunately for me, the handful of feeds published in Userland RSS I was aggregating were confused by the lastBuildDate tag, using it to keep track of the last build date for an item or a channel, instead of the item’s modification date, making it largely useless)
- otherwise, attempt to a certain the most recent publish time of the feed, by either looking at the channel’s dc:date, or the channel’s pubDate, and use that as the pub/mod time for all newly seen items.
- This has some nice features. Like, depending on how smart your aggregator is, it could do the right thing with the [upcoming](http://upcoming.org) RSS feeds, even though they don’t use [mod\_event](http://www.purl.org/rss/1.0/modules/event/). (note to self, send [Andy](http://waxy.org) a note about that)