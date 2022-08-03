---
id: 5037
title: 'Remembrance Engines'
date: '2012-02-11T09:28:35+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=5037'
permalink: /2012/02/11/remembrance-engines/
categories:
    - Uncategorized
---

[![](http://farm5.staticflickr.com/4022/4471436844_429078f1be_z.jpg)](http://www.flickr.com/photos/sweetfineday/4471436844/)

> *That history is written by the winners is at least in part an unfortunate artifact of poor storage and retrieval technologies, and a poor backup regime.*

I love \[Photojojo’s TimeCapsule\](http://photojojo.com/timecapsule/). \[TwitShift\](http://www.twitshift.com/) is delightful. And I’m sure in time I’ll come to feel the same way about \[TimeHop\](http://www.timehop.com). Like many people of my generation I’ve spent most of my “adult” life bouncing between jobs, cities, countries, etc. At one point Jasmine and I calculated that between the two of us we’d moved 14 times in the previous 10 years. Outsourcing memory to silicon in a life that largely lacks useful time signifiers is immensely helpful. But I’m also a bit uncomfortable with how much I like these services. Besides a certain puritan work ethic guilt, they’re deeply narcissistic.

In particular two features bother me:

- they present the world devoid of the people I was sharing it with at the time
- they’re largely constrained to minor modes of participation, e.g. tweets and check-ins.

Rod tweeted out a link yesterday to his \[8 years old blog post about Flickr launching\](http://groovymother.com/2004/feb/12/flickr*of*inspi/), it’s amazing:

> *It has the standard Friendster-esque friend-browsing capabilities, plus Tribe’s, erm, tribes. So far, so orkut. But what’s super-neato is what’s on top.*
> 
> *First off, you can gradate your friendships. The levels of Acquaintance, Friend, Best Buddy and Soulmate are all available to make the politics of friendship even more precarious. (There’s also a planned-for-the-future level called Enemy which is as-yet unattainable)*
> 
> *Then there’s the funky flash chat-app: an multi-window IRC-lite affair with an emphasis on picture sharing.*

This is not the Flickr most people think of, or even that most people remember existed. The Flickr of today is many iterations of lessons learned later, and perfectly binary nature of the digital world largely hides that honing effort, except in the remembrances of those who were there 8 years ago.

I’d like that as a service. Send me what my friends were writing 8 years ago today-ish. Their long form work. We could start with blogs, tease out books and papers later, eventually troll \[The Archive\](http://archive.org) for projects they were launching.

Over coffee this morning I thought about how you’d do it just for blogs. And I decided I wasn’t going to try to build it this morning as it clearly was going to take longer then 20 minutes.

My first thought was using RSS. It has fairly well understood semantics for permalink and publish date extraction. But you’d really only be able to start at this moment in time, not have the last decade plus of historical record.

You could build a time machine and go back and make sure either good semantic markup/microformats got adopted or that the RSS pagination specs became the norm. But if you’ve got a time machine fixing those issues aren’t even on my top 10 list for you.

Continuing on the time machine line of thought, one of the old aggregators, like Bloglines could offer the service assuming IAC still has the archives around. (oh wait, looks like they sold Bloglines to \[MerchantCircle\](http://www.merchantcircle.com/), huh)

Not sure how interesting/practical the above are.

So then I started thinking about all the folks over the years who built blog crawlers with logic for doing date and permalink extraction, and even summarization. Some quick Googling turned up nothing useful in terms of documented techniques or code. But I figure someone has just got to have some code lying around, yes?

Could you please build this? (or barring that, send pointers on papers/code/etc)

Thanks.

photo by [sweetfineday](http://www.flickr.com/photos/sweetfineday/4471436844/)