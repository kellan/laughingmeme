---
id: 4974
title: 'Booknotes: Kindle Highlights to Tumblr, a Bookmarklet'
date: '2011-08-06T21:39:26+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4974'
permalink: /2011/08/06/booknotes-kindle-highlights-to-tumblr-a-bookmarklet/
categories:
    - Uncategorized
---

About a year ago I did some deep diving into [kindle.amazon.com](http://kindle.amazon.com) trying to find a good programatic way to extract my data. It was a nightmare of client side JS templates, and general hatred of everything that was good about the Web.

In the last few months the Kindle site has gotten better. It uses real HTML, and has a semi-functioning concept of profiles, and contacts. But it still isn’t really what I want. But I’m busier then I was a year ago, and even given relatively sane HTML, I don’t feel like writing a scraper for something that ought to have an API.

But Fred’s post from this morning on [“Sharing My Kindle Highlights”](http://www.avc.com/a\_vc/2011/08/sharing-my-kindle-highlights.html) got me thinking that maybe I had been thinking about it wrong. Maybe I don’t need programmatic access to all of them, maybe I just wanted a bookmarklet to post selected hilights to Tumblr.

And I’ve got some bookmarklet code lying around, so I beat on it a bit, and was able to whip out [Booknotes, alpha](http://kellan.io/booknotes), a bookmarklet for posting from your Kindle hilights page to Tumblr.

I’m pulling the ASIN out of the “Read more at location X” links, and feeding that into the [“Product Advertising API”](https://affiliate-program.amazon.com/gp/advertising/api/detail/main.html), so while I’m only posting the title, link, and authors at the moment (because I couldn’t figure out how to pass rich markup to Tumblr’s share widget), there is a ton more metadata (like book covers) that could be included.

At the moment it’s only been tested on Chrome latest and on OS X Lion for a handful of my own highlights as building has already taken 200% of the 2 hours I allotted myself. (though part of that was getting XCode and Brew and a text editor installed on the new laptop)

So yeah, [Booknotes, alpha](http://kellan.io/booknotes).