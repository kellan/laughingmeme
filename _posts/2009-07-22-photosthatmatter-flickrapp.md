---
id: 4254
title: 'photosthatmatter & FlickrApp'
date: '2009-07-22T13:27:37+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4254'
permalink: /2009/07/22/photosthatmatter-flickrapp/
categories:
    - Uncategorized
tags:
    - api
    - appengine
    - Code
    - flickr
    - python
---

[![Picture 53](http://farm3.static.flickr.com/2667/3747384500_dacdd8c86e.jpg)](http://photosthatmatter.appspot.com)

Aaron’s [FlickrApp](http://github.com/straup/gae-flickrapp/tree/master) is a brain dead easy to use subclass of [webapp.RequestHandler](http://code.google.com/appengine/docs/python/gettingstarted/handlingforms.html) that turns [Flickr](http://flickr.com) into an single-sign on service for [Google AppEngine](http://code.google.com/appengine/).

As a bonus, you get a valid Flickr auth\_token for every signed in user. This makes writing [Flickr API apps](http://flickr.com/services/api) about the simplest thing ever.

Case in point, I wrote the largely mis-named [photosthatmatter](http://photosthatmatter.appspot.com) app last night in slightly less then 20 minutes, while waiting for dinner to simmer. Shows the most interesting photo from each for your contact in a given time period. Great for catching up on things you missed as they flowed by the first time.

YMMV, but it works for me.