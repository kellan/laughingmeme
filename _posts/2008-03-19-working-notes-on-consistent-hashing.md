---
id: 3787
title: 'Working Notes on Consistent Hashing'
date: '2008-03-19T09:51:53+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2008/03/19/working-notes-on-consistent-hashing/'
permalink: /2008/03/19/working-notes-on-consistent-hashing/
categories:
    - Uncategorized
tags:
    - hashing
    - programming
---

Nice to see consistent hashing go from obscure to blindingly obvious in a few short whitepapers.

[Dynamo](http://www.allthingsdistributed.com/2007/10/amazons\_dynamo.html) is certainly the sexiest discussion of distributed hash tables (DHTs), while [Programmerâ€™s Toolbox Part 3: Consistent Hashing](http://www.spiteful.com/2008/03/17/programmers-toolbox-part-3-consistent-hashing/) is the most straightforward. [libketama](http://www.last.fm/user/RJ/journal/2007/04/10/392555/) is open and easy to use implementation of the 64-bit space mapped to a circle style consistent hash, discussed above and originally “popularized” by [Chord](http://pdos.csail.mit.edu/chord/). (and proposed [over a decade ago](http://citeseer.ist.psu.edu/karger97consistent.html))

And best quote:

> “…and if anyone tells you that you shouldn’t use MD5 for this because it isn’t secure, just nod and back away slowly. You have identified someone not worth arguing with.”