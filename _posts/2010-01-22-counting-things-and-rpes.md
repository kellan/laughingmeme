---
id: 4394
title: 'Counting Things, and RPEs'
date: '2010-01-22T00:35:28+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4394'
permalink: /2010/01/22/counting-things-and-rpes/
categories:
    - Uncategorized
tags:
    - flickr
    - rpe
    - software
    - teams
---

[![306 Million And Counting](http://farm4.static.flickr.com/3606/3371542499_420680b533.jpg)](http://www.flickr.com/photos/siliconmonkey/3371542499/ "306 Million And Counting by siliconmonkey, on Flickr")

On an unrelated email thread this morning I got to thinking about how I quantify the [Flickr engineering team](http://flickr.com/about/), and counting things in general.

Depending on how I’m counting I tend to place the Flickr engineering team at ~20 people. In that group I include everyone on our team who writes code (including HTML, CSS, Javascript, PHP, Java, Perl, Python, C, C++, XUL, or Objective-C). Additionally I include our operations team (aka sysadmins aka “service engineering”), our “tech support” team (technical customer care/qa/researchers), and various folks with “manager” in their title.

(a more traditional count would probably put the Flickr engineering team at 5 application/backend engineers, 4 front-end engineers, and 4 technical manager types.)

Which got me thinking about a new metric, the RPE or “roughly per engineer”. Mostly it’s a useful thought tool (for me) to think about what sorts of things scale up with economies of scale, and what doesn’t. Here are a couple of quick RPE metrics I pulled tonight.

- We’ve got roughly 2.5 million Flickr members per engineer.
- Roughly [200 million photos](http://www.flickr.com/photos/) per engineer.
- 28 user facing pages.
- 23 administrative pages.
- 20 [API methods](http://flickr.com/services/api), though only 7.5 public API methods.
- 80 API calls per second.
- 250 CPUs.
- 850 [annual deploys](http://code.flickr.com/#foot-search).
- 16 [feature flags](http://code.flickr.com/blog/2009/12/02/flipping-out/).

Photo from [siliconmonkey](http://www.flickr.com/photos/siliconmonkey/)