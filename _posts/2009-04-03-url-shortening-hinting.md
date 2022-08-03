---
id: 4216
title: 'URL Shortening Hinting'
date: '2009-04-03T16:55:45+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4216'
permalink: /2009/04/03/url-shortening-hinting/
categories:
    - Uncategorized
tags:
    - 'cool uris don''t change'
    - revcanonical
    - urls
    - web
---

[![Chmurka & Bu?eczka (+ MESSAGE TO THE WORLD)](http://farm4.static.flickr.com/3114/2524849923_1c191ef42e.jpg)](http://www.flickr.com/photos/chmurka/2524849923/ "Chmurka & Bu?eczka (+ MESSAGE TO THE WORLD) by pyza*, on Flickr")

We’ve been playing with coding up a URL shortener at \[Flickr\](http://flickr.com) this week. A URL shortener that only shortens Flickr URLs. (and right now only shortens URLs to photo pages)

Amazingly enough, this stodgiest of all conversations is a hot topic this week, with joshua’s \[url shorteners considered harmful post\](http://joshua.schachter.org/2009/04/on-url-shorteners.html) acting as something of a catalyst. Though the \[slick looking working on DiggBar\](http://blog.digg.com/?p=591) has to be on folks mind.

Meanwhile I was curious if there \[a proposed rel=”alternate” syntax floating around for sites that run their own URL shortener?\](http://twitter.com/kellan/status/1448297080). I thought \[Dave\](http://scripting.com) posted one as part of his call for sites to run their owner shorteners, but I can’t find any evidence that this is correct memory.

\[Kevin Marks\](http://epeus.blogspot.com/) suggested \[rel=”canonical”\](http://googlewebmastercentral.blogspot.com/2009/02/specify-your-canonical.html) and when I said that was the opposite of what I wanted replied \[rev=”canonical” is by definition the opposite of rel=”canonical”, but in practice people don’t grok rev\](http://twitter.com/kevinmarks/status/1448424167). I had never heard of “link rev”, but lose the idea of marking up pages with their canonical opposites. But is that correct?

\[Les Orchard\](http://www.decafbad.com/) suggested the probably more practical \[rel=”shorter-alternative”\](http://twitter.com/lmorchard/status/1448338963), with Jon Williams refining to “\[rel=”shorter alternative” because IIRC rel values are like CSS classes\](http://twitter.com/WIZARDISHUNGRY/status/1448383800)”.

All of this implicitly based on the Mark’s \[work on RSS auto-discovery\](http://diveintomark.org/archives/2002/05/30/rss\_autodiscovery).

I realize this probably reads like a blow by blow description of watching paint dry.

But I’d like to pretend we’ve got some momentum here, maybe we could solve all the world’s problems my dinner time. (or at least auto-discovering url shortening problems)

**update 2009/4/6:** And I’ve published my \[rev=”canonical” URL shortening service\](http://revcanonical.appspot.com)

Photo by \[chmurka\](http://www.flickr.com/photos/chmurka/2524849923), just because.