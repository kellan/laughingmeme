---
id: 5121
title: oldtweets
date: '2012-07-10T09:04:50+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=5121'
permalink: /2012/07/10/oldtweets/
categories:
    - Uncategorized
---

\[oldtweets\](http://kellan.io/oldtweets) is a search engine for the first year of Twitter.

A bunch of folks asked about the how. The Twitter API provides \[a method for fetching a tweet by ID\](http://api.twitter.com/1/statuses/show/20.json). So to build an index of the first year of Twitter you need call the api for each ID in the range of IDs 1-20,000,000. 20 million API calls at the rate of 150 calls per hour. Or roughly 15 years of elapsed API time to index year one.

It also helps to know that Twitter is, and has always been, a MySQL shop, and that in the early days there was a theory about scaling databases by using large auto-increment offsets. (I don’t remember what the logic of that was) That started about 6 months in, was turned off for a while, and periodically drifted. So good news the 20 million ID space is very sparse, which significantly cuts down on the elapsed API time. You just need to send tracers into the space to map it.

From there it’s just a question of patience.

The whole things runs on a very small EC2 instance, and it’s on this week’s todo list to get the index running under Upstart, but it hasn’t happened yet. So if it goes away….

### Why

I think our history is what makes us human, and the push to ephemerality and disposability “as a feature” is misguided. And a key piece of our personal histories is becoming “the story we want to remember”, aka what we’ve shared. I just wanted my old tweets, as a side effect I got all of them.

Providing an interface to the whole corpus was motivated by the desire that folks would investigate where the social norms arose, exactly like \[Rabble’s @-reply investigation\](http://anarchogeek.com/2012/07/09/origin-of-the-reply-digging-through-twitters-history/).

### Year 1

I thought year one was a meaningful symbol. It maps to the time when we were figuring out how to use Twitter, and maps to the time when I felt like the service was working best for me and mine as an “ambient intimacy” service.

Additionally after SxSW 2007 the rate of tweeting increased significantly, making the brute force approach even slower.