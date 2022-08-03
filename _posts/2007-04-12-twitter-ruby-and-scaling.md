---
id: 3615
title: 'Twitter, Ruby, and Scaling'
date: '2007-04-12T11:25:30+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/04/12/twitter-ruby-and-scaling/'
permalink: /2007/04/12/twitter-ruby-and-scaling/
categories:
    - Uncategorized
tags:
    - performance
    - rails
    - ruby
    - scalability
    - twitter
    - twitterversy
---

[Alex](http://www.al3x.net/) gave a [**phenomenal** interview on Twitter and Rails](http://www.radicalbehavior.com/5-question-interview-with-twitter-developer-alex-payne/) a couple of weeks ago. This morning its all over the Net — but folks I think are taking the wrong lessons from it.

1. Ruby is dead slow. This is not news, though it can be surprising when you’re used to thinking about scripting languages as all being roughly equal.
2. Rails trades developer performance for framework performance. Also not news, as this has been the mantra of Rails since day 1.

More importantly he gives a quick insight into the how of making social software scale. It’s hard, it has ugly network effects, it makes databases cry. Alex mentions cache like mad. (because frankly no one but the content creator needs to see fresh data)

Also denormalize like mad, federate like mad, and prune features that make your site slow. (and these are the same techniques that they’re working on behind the scenes at Twitter, and that [we use to scale Flickr](http://www.amazon.com/o/ASIN/0596102356/103-6236904-0024607)).

You’ll never build a successful site if you build to scale from day 1, scaling is always a catch up game, but it’s the best game there is.

(And yes, this is my [all Twitter](http://laughingmeme.org/category/twitter) all the time blog week)

**update:** [Blaine](http://romeda.org), lead Twitter engineer, is giving a talk on [how they scale Rails/Twitter](http://romeda.org/blog/2007/04/scaling-twitter-talk.html) next weekend at the [Rudy SD Forum](http://www.sdforum.org/SDForum/Templates/CalendarEvent.aspx?CID=2135&amp;mo=4&amp;yr=2007). (which has done a terrible job of publicizing its existence, but has a pretty killer looking line up)