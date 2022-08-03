---
id: 3612
title: 'Liminal Existence: MapReduce in 36 lines of Ruby'
date: '2007-04-03T16:27:13+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/04/03/liminal-existence-mapreduce-in-36-lines-of-ruby/'
permalink: /2007/04/03/liminal-existence-mapreduce-in-36-lines-of-ruby/
link_related:
    - 'http://romeda.org/blog/2007/04/mapreduce-in-36-lines-of-ruby.html'
categories:
    - Aside
    - Uncategorized
tags:
    - distributed
    - drb
    - functional
    - mapreduce
    - programming
    - ruby
---

Amazing what you can do with a higher order functional language, and a couple of good libraries. Short step to `(1..100).each { ec2.spin_up }.dmap { hard problem }.inject { take over the world }`