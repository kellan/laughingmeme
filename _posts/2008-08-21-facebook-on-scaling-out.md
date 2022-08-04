---
id: 3994
title: 'Facebook on "Scaling Out"'
date: '2008-08-21T08:23:56+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=3994'
permalink: /2008/08/21/facebook-on-scaling-out/
categories:
    - Uncategorized
tags:
    - bcp
    - facebook
    - ha
    - scalability
---

Jason Sobel has an [interesting post, “Scaling Out”](http://facebook.com/notes.php?id=9445547199) on Facebook’s <acronym title="business continuity planning">BCP</acronym> work and the move to being multi-colo.

Interesting to me was noting that:

- they just got around to this 8 months ago, and they’re fscking Facebook (which means you can wait)
- they’re still doing all writes to a single datacenter
- they’re hacking an object-level mark/sweep into the MySQL replication stream suggesting a certain parable of a hammer and nails.

[via PaulH](http://paranoidfish.org)