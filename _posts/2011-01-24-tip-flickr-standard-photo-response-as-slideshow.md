---
id: 4791
title: 'Tip: Flickr standard photo response as slideshow'
date: '2011-01-24T19:44:56+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4791'
permalink: /2011/01/24/tip-flickr-standard-photo-response-as-slideshow/
categories:
    - Uncategorized
tags:
    - api
    - flickr
---

We’ve been doing a ton of hacking recently on our [Taste Test](http://tastetest.etsy.com) experiment, which in turn reminds me a lot of an ill-fated Flickr project, “Top Explorers”. (to anyone who still has Flickr SVN access the code should still be there) Computers have made dumb consensus and simple popularity so trivially simple to implement, that projects to explicit hilight individual voice really intrigue me.

Anyway I got inspired last weekend to spend a little while coding up a primitive Top Explorers implementation that would run over the API and on top of [Pig](http://pig.apache.org/). And as part of that I resorted to one of my favorite hacks for visualizing Flickr API results, the “[standard photo response](http://code.flickr.com/blog/2008/08/19/standard-photos-response-apis-for-civilized-age/) as slideshow” hack.

Not sure it was ever documented, but you can call it with the form:

```
http://www.flickr.com/show.gne?api_method=$method_name&method_params=param1|paramvalue1;param2|paramvalue2

```

The canonical example of this is [kittens from galleries](http://www.flickr.com/show.gne?api*method=flickr.photos.search&amp;method*params=in*gallery|1;text|kittens), but I was just using it to help visualize variations on [recent photos sorted by interestingness](http://www.flickr.com/show.gne?api*method=flickr.photos.search&amp;method*params=min*taken*date|1295664643;max*taken*date|1295758800;sort|interestingness-desc;safe*search|1).

With any luck I’ll actually have some interesting Top Explorers results soon as well.