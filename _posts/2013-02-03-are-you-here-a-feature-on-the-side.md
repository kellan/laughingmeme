---
id: 5189
title: 'Are you here? A feature on the side'
date: '2013-02-03T13:44:48+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=5189'
permalink: /2013/02/03/are-you-here-a-feature-on-the-side/
categories:
    - Uncategorized
---

I was talking with \[Aaron\](http://www.aaronland.info/weblog/) and \[Blackman\](https://github.com/blackmad) a week or so ago about the state of reverse geocoding. This is the business of turning a lat/long into a named place. Besides a neat party trick it turns out that named places have a few benefits over floating point pairs.

1. while technically the space is infinite and the lat/long space is finite, in practice the names we use to call places converge rapidly to a very small set (in any given region), and for whatever reason (natural or historical) seem to have an affinity for being hierarchical. Both good properties for clustering, compression, and discovery.
2. humans don’t tend to think in floating point pairs.

At Flickr we spent a while working on turning the point where a photo was set on map (or whose GPS coordinates were shoved into the EXIF) into a place. The work of reverse geocoding is about taking a point, and finding out which polygon its in. This is a well solved problem. With two caveats:

1. places don’t have neat boundaries, but overlap all over each other. And people disagree about the overlaps
2. even if places had neat boundaries, and people agreed on them, availability of information about those boundaries is variable at best.

Also it turned out not many people cared, and the ones who did tend to care extraordinarily when we got it wrong. And they cared most passionately about the things that were hardest to get right, points near borders, contested neighborhoods, etc.

Most folks dealing with geo presently bypass this whole problem, and instead go straight to human places, named things, a bar, a restaurant, a rest stop on the side of a highway. And Foursquare has done an amazing job of aggregating and sorting out human attention (and intention) around these places.

But that doesn’t mean the problem is solved, merely deferred. Not all of life’s interesting moments take place in bars (just most), and when aggregating information across multiple steams collapsing onto human labelled places is challenging.

Plus, it’s just dumb that a 100mil+ people carry GPS device in their pockets and we have to buy expensive proprietary data to find out about the shape of where we live.

### Anyway, here’s the pitch

Are you shipping a location based mobile app? Would you like to increase engagement? Consider adding a quiz to your app asking people whether they’re in Williamsburg or Northside? Are they in the Bay Area or the East Bay? Is this the Burlingame or the Pennisula? And then publish that aggregated data. People love quizzes, \[Flickr released a piece of software for turning those answers into shapefiles\](https://github.com/straup/Clustr), the answers change over time, and paying someone for this info is silly. But seriously, if you’re presenting people geographic data, ask them sometime if you’re getting it right.