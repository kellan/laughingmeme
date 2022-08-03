---
id: 4458
title: 'What Second Life can teach about scaling'
date: '2010-02-03T18:00:07+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4458'
permalink: /2010/02/03/what-second-life-can-teach-about-scaling/
categories:
    - Uncategorized
tags:
    - scaling
---

Just read Ian Wilkes’ [What Second Life can teach your datacenter about scaling Web apps](http://arstechnica.com/business/data-centers/2010/02/what-second-life-can-teach-all-companies-about-scaling-web-apps.ars/) article.

It’s packed full of really great radically pragmatic advice. Go read it. Couple of times I literally shouted out “Yes!”, so I pulled a few choice quotes out.

> *herein lies a trap for smaller ones: the belief that you can “do it right the first time.”*

Wanted to jump up and down when I read this. Building it “right” the first time is one of the best guarantees of failure I know. [Scaling is always a catch up game](http://laughingmeme.org/2007/04/12/twitter-ruby-and-scaling/).

> *a recurring billing system needs to touch each user annually, and the product is only available to Internet users in the US and Europe, and by the biggest estimates will achieve no more than 10% penetration, then it needs to handle about 2-3 events per second (1bn \* 75% \* 10% / (365 \* 86,400)). Conversely, a chat system with a similar userbase averaging 10 messages/day, concentrated during work hours, might need to handle 20,000 messages per second or more.*

Events per second is usually the first and more important metric I calculate when designing a system. Even if you only have the roughest of notions, orders of magnitude are important. (and remember you’re the cynical geek on the team, there are folks on the team paid to dream of world domination, don’t let them influence your numbers too much)

> *can the system be shut down at regular intervals?*

Because change is inevitable, and anything resembling perfect uptime is more expensive then you can afford.

> *Another often-overlooked component of a scaling strategy is the makeup and attitude of the team … the entire development team needs to be aware of at least the basic implications of working on a large system … . This is especially a risk if a centralized resource (say, a database) is heavily abstracted and somewhat invisible to the developer (by, say, an ORM).*

So true! Abstractions kill.

> *the ultimate solution is typically to partition databases into horizontal slices of the data set (typically by user), but this approach can be very expensive to implement.*

Not sure why partitioning is thought of as so expensive. It’s annoying, and [not for the lazy](http://laughingmeme.org/2009/09/29/try-coding-dear-boy/), but it’s not that difficult/expensive.

> *Instrument, propagate, and isolate errors*

Flickr’s mantra is graph, graph, graph everything that moves.

> *It pays to thoroughly embrace the exception model*

I can only say I wish I had this, haven’t scaled it, but living without it is instructive. And painful.

> *“Fix all the bugs” is rarely a realistic plan.*

Similarly advice to “close bugs first” will leave your product dead in the water.

> *Batch jobs: the silent killer*

Yup.

> *Beware the grand re-write*

Oh my yes.

> *Have a Plan B*

Someday I’ll publish some of our “plan B” documents. Plan Bs are critical to moving fast.

> *Don’t be afraid to change the product. Sometimes, a small number of features are responsible for the lion’s share of bottlenecks.*

Twitter is the master of this.

All around great pragmatic advice.