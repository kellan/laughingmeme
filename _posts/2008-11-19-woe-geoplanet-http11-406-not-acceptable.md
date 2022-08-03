---
id: 4087
title: 'WOE &#8220;GeoPlanet&#8221;: HTTP/1.1 406 Not Acceptable'
date: '2008-11-19T16:36:25+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4087'
permalink: /2008/11/19/woe-geoplanet-http11-406-not-acceptable/
categories:
    - Uncategorized
tags:
    - '406'
    - api
    - debugging
    - geo
    - geoplanet
    - http
    - rest
    - restful
    - webservice
    - woe
    - yahoo
---

[![not simple polygons](http://farm4.static.flickr.com/3231/3039449386_ccdfe55571.jpg)](http://www.flickr.com/photos/kellan/3039449386/ "not simple polygons by kellan, on Flickr")

Just putting a note here for the next time I’m working with the \[Yahoo! GeoPlanet\](http://developer.yahoo.com/geo/) APIs.

The conudrum: a HTTP GET on a given resource (`http://where.yahooapis.com/v1/place/23511846?appid=$appid`) works in the browser, and works with `wget` from the command line, but fails from within PHP with a `406 Not Acceptable`.

The solution, append `format=XML` to the resource URL, because the service is blowing out its brains on a missing `Accept`s header.

And that folks is the magic of REST.

**update 2008/12/04:** quick scan of my referer logs suggests this is biting folks using \[lwp-simple\](http://search.cpan.org/~gaas/libwww-perl-5.821/lib/LWP/Simple.pm) and wget particularly hard.