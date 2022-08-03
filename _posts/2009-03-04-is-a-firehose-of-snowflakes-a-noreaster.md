---
id: 4189
title: 'Is a Firehose of Snowflakes a Nor&#8217;easter?'
date: '2009-03-04T11:05:20+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4189'
permalink: /2009/03/04/is-a-firehose-of-snowflakes-a-noreaster/
categories:
    - Uncategorized
tags:
    - data
    - flickr
    - 'real time'
    - 'social software for robots'
    - xmpp
---

I tried explaining the title of this blog post to Jasmine this morning. Suffice to say my explanation needed a bit of practice. And more than 140 characters. Or it might just be I’m a bit stir crazy from Winter returning with a vengeance in these here parts. But I wanted to call out a couple of points that might have gotten overshadowed in the good Reverend’s \[recent post on the Flickr Panda APIs\](http://code.flickr.com/blog/2009/03/03/panda-tuesday-the-history-of-the-panda-new-apis-explore-and-you/).

### NewsWire API

[![Picture 21](http://farm4.static.flickr.com/3375/3328143847_b2882436aa.jpg)](http://twitter.com/kellan/status/1231156302)

The [NY Times](http://nytimes.com) at their great [Times Open](http://open.nytimes.com/) event announced their Newswire API, which is a real time stream of their content. Stories, and blog posts, and what not. More interestingly was their discussion about how they’ve built a backend “pinging service” that makes it easy for them to add new types of data to their stream. I’m a dork enough that a [Grey Lady firehose](http://open.blogs.nytimes.com/2009/02/25/announcing-the-times-newswire-api/) sounds pretty awesome.

But they got some flack for it being a [snowflake API](http://www.dehora.net/journal/2009/01/09/snowflake-apis/). From where I sit snowflake APIs look like opening up your data as fast as possible, along any means necessary, and trying not to pre-judge how people will use it, but I’m thankful for the metaphor, as it allowed me to spend the morning envisioning fire hoses of snowflakes.

Still I spent 2007, and 2008 talking about how XMPP was going to be a key piece of \[building firehoses\](http://blog.twitter.com/2008/07/twitter-and-xmpp-drinking-from-fire.html) standardizing and enabling the real time Web, so its a criticism I’m sensitive to. (and I’ve already been skipping conferences in 2009 in the hopes of actually having some time to **build** it, though thankfully minor details like time haven’t stopped my colleagues at Fire Eagle from [launching theirs](http://feblog.yahoo.net/2009/02/19/fire-eagle-location-streams/))

### Pandas

[![Flickr Panda!](http://farm4.static.flickr.com/3070/2913831391_7abfb85d94.jpg)](http://www.flickr.com/photos/psd/2913831391/ "Flickr Panda! by psd, on Flickr")

Which is all apropos of saying, \[we\](http://flickr.com) launched our own “snowflake” realtime API yesterday. (though actually its just a slight modification of our standard photo response format). And its \[Panda-shaped\](http://code.flickr.com/blog/2009/03/03/panda-tuesday-the-history-of-the-panda-new-apis-explore-and-you/). And it is awesome.

### Near Real-Time, Every Minute, up to 120 Events

But because the documentation is quirky, I think people missed the significance. These are Flickr real time data APIs.

We’re building streams of photos in real time. Examining the huge stream of data events that happen on Flickr, the social activity, the searching, the meta-data creation, and fishing from that stream to build 3 real time streams. We’re then exposing those streams via a near real time polling based API.

The API pattern is specifically structured around making it easy to call from client side scripting, and the data streams are structured around discovery rather then guided search, but we’re pushing up to 120 discovered photos down these streams each minutes, every minute. Two streams of real-time interestingness, and 1 of lightly interestingnessed geotagged photos.

And they’re named after famous pandas. Really what more do you want?

### Whither XMPP

So what’s up with the blossoming real time data APIs? And where is our promised standardization? They’re coming. There has always been a tricky chicken and egg problem. There is so little data out there that is appropriate to expose in a real time fashion, that there is little demand to consume it, so the tools fail to evolve. But I’m seeing tons of work, great toolkits from like [Fire Hydrant from FireEagle](http://github.com/mojodna/fire-hydrant/tree/master) and [Babylon from notifixio.us](http://github.com/julien51/babylon/tree/master), and Google’s decision to make [XMPP a standard part of their AppEngine toolkit](http://googleappengine.blogspot.com/2009/02/roadmap-update.html) are just I’ve been most excited about recently.