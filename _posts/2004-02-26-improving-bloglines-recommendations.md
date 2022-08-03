---
id: 750
title: 'Improving Bloglines Recommendations'
date: '2004-02-26T18:04:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=750'
permalink: /2004/02/26/improving-bloglines-recommendations/
typo_id:
    - '748'
mt_id:
    - '1792'
link_related:
    - ''
raw_content:
    - "<a href=\\\"http://bloglines.com\\\">Bloglines</a> is in the best possible position, if it chooses, to build a recommendation service.  They already have <a href=\\\"http://bloglines.com/recommendations\\\">a basic service</a>, but its usefulness is pretty limited as it is heavily weighted by popularity.  Bloglines has consistently suggested that I should be reading <a href=\\\"http://slashdot.org\\\">Slashdot</a>, <a href=\\\"http://theregister.co.uk/\\\">The Register</a>, and <a href=\\\"http://salon.com\\\">Salon</a>.  Lets assume that if my profile suggests I\\'m a geek, and I\\'m not subscribed to Slashdot, it isn\\'t because I haven\\'t heard of it. \nWhat we need is inverse frequency weighting, if you and I are the only people are on Earth who subscribe to a handful of feeds, I\\'m very interested in your reccomendations for related readings.   The more I think about this, the more it sounds like a vector space problem. \r\n\r\nAnd Bloglines has a few advantages that other services, like Winer\\'s <a href=\\\"http://feeds.scripting.com/\\\">Share Your OPML</a> don\\'t have, you see Bloglines knows if I\\'m actually reading the feeds I\\'m subscribed to, or just letting items pile up.  Bloglines knows I\\'m more likely to read the Guardian, then the BBC, more likely to read the New York Times Review of Books, then their national news, and that, while I\\'m subscribed to 6 feeds on ColdFusion, I haven\\'t read any of them since December.\r\n\r\nOf course as <a href=\\\"http://laughingmeme.org/archives/000550.html\\\">my own experiments</a> with finding similar items suggests modelling problems as a vector space has its draw backs.  They tend to consume a lot of memory, and they can\\'t be updated incrementally.  With Bloglines seeming add several hundred new feeds a day to the system, there would probably have to be a week, to a month delay in adding new feeds to the mix/vector."
---

[Bloglines](http://bloglines.com) is in the best possible position, if it chooses, to build a recommendation service. They already have [a basic service](http://bloglines.com/recommendations), but its usefulness is pretty limited as it is heavily weighted by popularity. Bloglines has consistently suggested that I should be reading [Slashdot](http://slashdot.org), [The Register](http://theregister.co.uk/), and [Salon](http://salon.com). Lets assume that if my profile suggests I’m a geek, and I’m not subscribed to Slashdot, it isn’t because I haven’t heard of it. What we need is inverse frequency weighting, if you and I are the only people are on Earth who subscribe to a handful of feeds, I’m very interested in your reccomendations for related readings. The more I think about this, the more it sounds like a vector space problem.

And Bloglines has a few advantages that other services, like Winer’s [Share Your OPML](http://feeds.scripting.com/) don’t have, you see Bloglines knows if I’m actually reading the feeds I’m subscribed to, or just letting items pile up. Bloglines knows I’m more likely to read the Guardian, then the BBC, more likely to read the New York Times Review of Books, then their national news, and that, while I’m subscribed to 6 feeds on ColdFusion, I haven’t read any of them since December.

Of course as [my own experiments](http://laughingmeme.org/archives/000550.html) with finding similar items suggests modelling problems as a vector space has its draw backs. They tend to consume a lot of memory, and they can’t be updated incrementally. With Bloglines seeming add several hundred new feeds a day to the system, there would probably have to be a week, to a month delay in adding new feeds to the mix/vector.