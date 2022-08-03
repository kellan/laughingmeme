---
id: 4617
title: 'Minimal Competence: Data Access, Data Ownership, and Sharecropping.'
date: '2010-05-18T08:59:51+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4617'
permalink: /2010/05/18/minimal-competence-data-access-data-ownership-and-sharecropping/
categories:
    - Uncategorized
tags:
    - api
    - data
    - flickr
    - 'minimal competence'
    - 'web 2.0'
---

A friend (from Google) recently trolled me, asking, “What’s up with the data lock-in at Flickr?”.

Got me thinking about standards. I wrote back a rant to a mailing list of fellow senior hacker, and coders types. Below I’ve included that rant, largely verbatim. I’d been meaning to turn it into a more reasoned blog post, maybe something suitable for posting on a more official outlet, but life is short, and [Rod’s post about Quora](http://groovymother.com/2010/may/16/importance-api/) reminded me to get on it.

As software engineers, as **social** software engineers, it’s important to have standards. You can debate the how much of what we do can be called engineering, even charitably, but the code we write determines the rules that govern the spaces more and more people spend time in, and while “First, do no harm” might be reaching, a few standards that you should be embarrassed to not meet seem appropriate.

One of those is around data access, data ownership, and sharecropping. This is something Flickr takes very seriously.

### The Minimum

With Flickr you can get out, [via the API](http://www.flickr.com/services/api/), every single piece of information you put into the system.

Every photo, in every size, plus the completely untouched original. (which we store for you indefinitely, whether or not you pay us) Every tag, every comment, every note, every people tag, every fave. Also your stats, view counts, and referers.

Not the most recent *N*, not a subset of the data. All of it.

It’s your data, and you’ve granted us a limited license to use it.

Additionally we provide a moderately competently built API that allows you to access your data at rates roughly 500x faster then the rate that will get you banned from Twitter.

Asking people to accept anything else is sharecropping. It’s a bad deal. Flickr helped pioneer “Web 2.0”, and personal data ownership is a key piece of that vision. Just because the wider public hasn’t caught on yet to all the nuances around data access, data privacy, data ownership, and data fidelity, doesn’t mean you shouldn’t be embarrassed to be failing to deliver a quality product.

The ability to get out the data you put in is the bare minimum. All of it, at high fidelity, in a reasonable amount of time.

The bare minimum that you should be building, bare minimum that you should be using, and absolutely the bare minimum you should be looking for in tools you allow and encourage people who aren’t builders to use.

### A Reasonable Exchange of Value

Flickr actually goes a bit farther, not only can you get your data out, but it gets enriched as it passes through the system.

If you use the geotagging feature, you don’t just get the lat/long out you put in, but your photo comes back with a whole hierarchy of geographic descriptors, that are pointers into a publicly available gazetteer ([Y! GeoPlanet](http://developer.yahoo.com/geo/geoplanet/)). It would be good if there were pointers into other publicly available gazetteers (if for example Google ever released one) but there isn’t a good concordance service yet (but it’s being worked on)

You get structured access to all the metadata that people have added to your photos, with proper attribution available. (of course there is a *working* privacy model, so your “friends” aren’t getting data they aren’t supposed to, like your friend requests, and chat logs)

If you used our [machine tags vocab](http://code.flickr.com/blog/2009/07/06/extraextraextra/), you get extra information pulled in from 3rd party APIs like [Open Street Maps](http://www.flickr.com/photos/tags/osm:*=), [Open Library](http://www.flickr.com/photos/tags/openlibrary:*=), [Last.fm](http://www.flickr.com/photos/tags/lastfm:*=), [various transit administrations](http://fakesubwayapis.appspot.com/), and [Foursquare](http://www.flickr.com/photos/tags/foursquare:*=).

Additionally you also have access to the data that was created in aggregate using the data you shared with us, like [tag clusters](http://www.flickr.com/photos/tags/open/clusters/), and the Creative Commons licensed [neighborhood shape boundaries](http://code.flickr.com/blog/2009/05/21/flickr-shapefiles-public-dataset-10/).

This isn’t the exhaustive list, just a few of the things Flickr does to respect, and collaborate with the people who share their time and data with us.

I’d certainly *love* to get a fraction of this data back from other services I use. Imagine getting access to all the data Google has about you, and everything they’ve learned partially based on observing you. I’ve gotten used to being disappointed by most of my fellow practitioners, but I still dream about using good tools that treat me with respect and want to collaborate.

Thanks go to [Jesse Vincent](http://www.fsck.com/), for the useful [sharecropping metaphor](http://www.slideshare.net/IgniteBoston/12-jesse-vincent).

(and I’ll state the obvious this is my **personal** blog, nothing I post here should be taken as official Flickr or Yahoo communication or policy, unless otherwise noted, that isn’t what they pay me to do.)