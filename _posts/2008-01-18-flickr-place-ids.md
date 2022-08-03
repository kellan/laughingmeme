---
id: 3761
title: 'Flickr Place IDs'
date: '2008-01-18T17:34:28+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2008/01/18/flickr-place-ids/'
permalink: /2008/01/18/flickr-place-ids/
categories:
    - Uncategorized
tags:
    - flickr
    - geo
    - places
---

Geocoding is hard work, figuring out where exactly on this wobbly sphere a given humanly vague string might be referring to is just crazy.

Turns out there are a bunch of interesting things you can do *without* knowing a lot of detailed latitude, longitude stuff but instead just having an agreement that when I say “San Francisco”, and you say “San Francisco”, we’re talking about the one in California, and not somewhere else.

On Flickr we call these things [“places”](http://flickr.com/places). (creative?) And as I [mentioned](http://tech.groups.yahoo.com/group/yws-flickr/message/3688) on the Flickr API mailing list last week and in my early [places blog post](http://laughingmeme.org/2007/12/10/flickr-a-place-of-our-own/), places have “place ids”.

This post is just a quick note to the effect that as of this afternoon on top of getting `place_ids` back with (http://www.flickr.com/services/api/flickr.photos.getInfo.html), and being able to round trip a `place_id` with the (http://www.flickr.com/services/api/flickr.places.resolvePlaceURL.html) and (http://www.flickr.com/services/api/flickr.places.resolvePlaceID.html) you can [now do a free form search for places](http://tech.groups.yahoo.com/group/yws-flickr/message/3716) with the new (http://www.flickr.com/services/api/flickr.places.find.html).