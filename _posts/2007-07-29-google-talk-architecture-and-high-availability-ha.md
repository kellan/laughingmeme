---
id: 3685
title: 'Google Talk Architecture, and High Availability (HA)'
date: '2007-07-29T09:36:02+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/07/29/google-talk-architecture-and-high-availability-ha/'
permalink: /2007/07/29/google-talk-architecture-and-high-availability-ha/
categories:
    - Uncategorized
tags:
    - google
    - ha
    - jabber
    - network
    - scalability
    - social
    - twitter
    - xmpp
---

[![P7280018_Moleskine_Kreisel](http://farm2.static.flickr.com/1428/937741152_c3a40b3836.jpg)](http://www.flickr.com/photos/98657307@N00/937741152/ "Photo Sharing")

Via the \[HA blog\](http://highscalability.com) (an obviously unserved niche in retrospect), a very interesting \[30 minute presentation on the Google Talk architecture\](http://video.google.com/videoplay?docid=6202268628085731280).

### ConnectedUsers \* BuddyListSize \* OnlineStateChanges

Interestingly people keep independently re-discovering that maintaining presence is the hard part of scaling these systems.

Its something that really came home hard in my talking with Twitter helping with their scaling challenges (so much so that we took a slide out of our \[“Social Software for Robots” talk\](http://www.slideshare.net/Blaine/scaling-twitter/) to talk about it, and Blaine mentioned it again in his \[“Scaling Twitter” talk\](http://www.slideshare.net/Blaine/scaling-twitter/))

So by way of a PSA:

> Presence isn’t easy.

Growth in social systems in non-linear. Ignore the network effect at your peril.

### Kick the Tires

Also interesting was “Real Life Load Tests”. The GTalk team deployed to Orkut and GMail weeks before actually turning on the UI for the features to be able to monitor the load. These are the practices that make Bill’s \[recent observation on HA systems\](http://www.dehora.net/journal/2007/07/eventually\_consistent.html) possible:

> An interesting takeaway is that it’s clearly possible to re-architect data storage on super-busy production systems seemingly no matter where you start from.

For the rest of bullets see the \[HA blog post\](http://highscalability.com/googletalk-architecture).