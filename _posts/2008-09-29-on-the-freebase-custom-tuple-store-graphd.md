---
id: 4043
title: 'On the Freebase custom tuple store, graphd'
date: '2008-09-29T07:13:45+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4043'
permalink: /2008/09/29/on-the-freebase-custom-tuple-store-graphd/
categories:
    - Uncategorized
tags:
    - architecture
    - 'beyond lamp'
    - freebase
    - 'log oriented'
    - scalability
    - semweb
---

[Thanks to Simon](http://blog.freebase.com/2008/04/09/a-brief-tour-of-graphd/) for tickling my memory on this [great blog post from Freebase on their custom tuple server](http://blog.freebase.com/2008/04/09/a-brief-tour-of-graphd/).

Graphd is another good example of the log-oriented append only pattern. This is the sort of stuff [I’ve been thinking about](http://laughingmeme.org/2008/04/05/quiet-saturday-thoughts/) for a bit, and wishing I had more time to play with. Disks and disk metaphors might turn out to be our most dramatically parallelizable constructs.

[![](http://farm1.static.flickr.com/24/40955407_3a90eded8d_m.jpg)](http://www.flickr.com/photos/peapea/40955407/ "Untitled by pea., on Flickr")

Still my favorite hack is that, because they’re building a wiki-like tool, Freebase can bubble their eventual consistency implementation all the way up to the end-users, who are mentally prepared to deal with write contentions (they’re already dealing with rightness contention after all). We’re living in a [post-ACID](http://www.acmqueue.org/modules.php?name=Content&amp;pa=showpage&amp;pid=540) world.

The only down side is everyone I’ve talked to at Freebase seems pretty solid on this being their proprietary secret sauce, because a good, fast scalable open source tuple store might actually jump start a real semantic (small-S) web after all these years.

Oh, and only tangentially related, Myles published a [good high level on our job queue system](http://code.flickr.com/blog/2008/09/26/flickr-engineers-do-it-offline/) last Friday.