---
id: 842
title: 'Recycled RSS Items'
date: '2004-06-15T09:55:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=842'
permalink: /2004/06/15/recycled-rss-items/
typo_id:
    - '840'
mt_id:
    - '2117'
link_related:
    - ''
raw_content:
    - "A couple of weeks ago at CATS I promised the <a href=\\\"http://riseup.net\\\">Riseup</a> folks that there was an easy way to aggregate and selectively republish RSS items, aka <a href=\\\"http://eyebeam.org/reblog\\\">\\\"reBlogging\\\"</a>.  Well a cursory scan of the web didn\\'t turn up anything suitable, so I sat down and wrote a quick patch to <a href=\\\"http://minutillo.com/steve/feedonfeeds/\\\">FoF</a> (I think it was during the Certificate Anti-Authority discussion).\r\n\r\nMade a couple of tweaks to it last night to make it less of a diff from Feed on Feed 0.1.3, and now I\\'m releasing it onto an unsuspecting public, as <a href=\\\"/code/recycle-0.2.tar.gz\\\">a patch file, plus a couple of auxiliary files</a>.\nWorks just like FoF, except there is now a checkbox labeled \\'Recycle\\'.  Any items you choose to recycle will be available in your re-published RSS feed (at http://example.org/&lt;recycle-install&gt;/rss.php).\r\n\r\nThere is a lot of room for improvement including better RSS feeds (they are pretty simple right now, and more suited for a headlines box, then full re-syndication), and support for conditional GETs.\r\n\r\nYou can see it the <a href=\\\"http://tamarin.laughingmeme.org/recycle/test/\\\">FoF interface</a> and <a href=\\\"http://tamarin.laughingmeme.org/recycle/test/rss.php\\\">the RSS</a> feed on my test server (though I just blew away the database so you\\'ll have to add some items)\r\n\r\nMy favorite feature is I\\'m using \\\"submit in place\\\" Javascript, meaning the page doesn\\'t have to refresh when you recycle an item.  See the behindthescenes.js file, lifted largely from orkut."
tags:
    - eyebeam
    - fof
    - magpie
    - reblog
---

A couple of weeks ago at CATS I promised the [Riseup](http://riseup.net) folks that there was an easy way to aggregate and selectively republish RSS items, aka [“reBlogging”](http://eyebeam.org/reblog). Well a cursory scan of the web didn’t turn up anything suitable, so I sat down and wrote a quick patch to [FoF](http://minutillo.com/steve/feedonfeeds/) (I think it was during the Certificate Anti-Authority discussion).

Made a couple of tweaks to it last night to make it less of a diff from Feed on Feed 0.1.3, and now I’m releasing it onto an unsuspecting public, as [a patch file, plus a couple of auxiliary files](/code/recycle-0.2.tar.gz). Works just like FoF, except there is now a checkbox labeled ‘Recycle’. Any items you choose to recycle will be available in your re-published RSS feed (at http://example.org/&lt;recycle-install&gt;/rss.php).

There is a lot of room for improvement including better RSS feeds (they are pretty simple right now, and more suited for a headlines box, then full re-syndication), and support for conditional GETs.

You can see it the [FoF interface](http://tamarin.laughingmeme.org/recycle/test/) and [the RSS](http://tamarin.laughingmeme.org/recycle/test/rss.php) feed on my test server (though I just blew away the database so you’ll have to add some items)

My favorite feature is I’m using “submit in place” Javascript, meaning the page doesn’t have to refresh when you recycle an item. See the behindthescenes.js file, lifted largely from orkut.