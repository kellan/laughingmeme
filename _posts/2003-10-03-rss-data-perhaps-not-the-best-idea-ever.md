---
id: 615
title: 'RSS-Data:  Perhaps Not the Best Idea Ever'
date: '2003-10-03T22:58:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=615'
permalink: /2003/10/03/rss-data-perhaps-not-the-best-idea-ever/
typo_id:
    - '613'
mt_id:
    - '1278'
link_related:
    - ''
raw_content:
    - "<p>\r\nJeremey Allaire has <a href=\\\"http://radio.weblogs.com/0113297/2003/10/01.html#a236\\\">proposed RSS-Data</a>, an attempt to wedge XML-RPC serialization into RSS, an idea which is so phenomenally bad, and wrong headed, I\\'m momentarily speechless. (At least of anything I would say in public) \r\n</p>\r\n<p>\r\nThe joy, however, of being behind the curve is someone else has already said it for you.  \r\n</p>\r\n<p>\r\n<h3>Whats all that noise?</h3>\r\nLes has put together <a href=\\\"http://www.decafbad.com/blog/tech/rss_data_versus_namespace.html\\\">examples of RSS with namespaces vs. RSS-Data</a>; examples that I think speak for themselves (the RSS-Data example is so spaghetti, and loose it gives me the willies just looking at it [or maybe that is my OPML <em>\\\"we\\'ll just cram everything in all which way, like, in poorly defined attributes that we make up as we go along\\\"</em> flashback kicking in]).   \r\n</p>\r\n<p>\r\n<h3>Been Done, Been Done Better, Already Part of RSS</h3>\r\nBut if they aren\\'t speaking to you as clearly (and I\\'ll admit the voices in my head are particularly loud and clear tonight), you might see if Danny\\'s <a href=\\\"http://dannyayers.com/archives/001908.html\\\">Um, we\\'ve had that for 3 years it\\'s called RDF, and it works much better</a>, makes it any clearer.  \r\n</p>\r\n<p>\r\n<h3>Ah, Running Code</h3>\r\nSo technologically it sucks, but what about this supposed ease of use?  \r\nSee <a href=\\\"http://www.myelin.co.nz/post/2003/10/3/#200310031\\\">parsing RSS-Data</a> vs. <a href=\\\"http://www.myelin.co.nz/post/2003/10/3/#200310032\\\">parsing RSS namespaces</a>, and <a href=\\\"http://www.myelin.co.nz/post/2003/10/3/#200310033\\\">compare these 2 samples for readability</a>.\r\n</p>\r\n<p>\r\n<h3>The Macromedia Way?</h3>\r\nAllaire speaks about a new crop of aggregators that could be extended to solve domain specific problems, and new formats of RSS-Data.  All I can say is, namespaces, RDF, and XML...Hello?\r\n\r\nHe also mentions how wonderful it would be to get all this stuff into Flash, and Java, and that <a href=\\\"http://www.macromedia.com/software/central/\\\">Macromedia Central</a> might be a great container for this stuff, to which I can only say, \\\"What can you expect from the man who gave us ColdFusion!\\\" (literally, this is the same spirit that I think ColdFusion embodies in all it\\'s hackish, kludgy, kind of uncomfortable with intermediate concepts in computer science, proprietary way)\r\n</p>\r\n<p>\r\nAnd I challenge someone to explain to me why adding 3-4 layers of nested XML, to get a poorly specified date format is an improvement over just using W3CDTF?\r\n</p>"
tags:
    - design
    - rant
    - rss
    - rss-data
---

Jeremey Allaire has [proposed RSS-Data](http://radio.weblogs.com/0113297/2003/10/01.html#a236), an attempt to wedge XML-RPC serialization into RSS, an idea which is so phenomenally bad, and wrong headed, I’m momentarily speechless. (At least of anything I would say in public)

The joy, however, of being behind the curve is someone else has already said it for you.

### Whats all that noise?

Les has put together [examples of RSS with namespaces vs. RSS-Data](http://www.decafbad.com/blog/tech/rss_data_versus_namespace.html); examples that I think speak for themselves (the RSS-Data example is so spaghetti, and loose it gives me the willies just looking at it [or maybe that is my OPML *“we’ll just cram everything in all which way, like, in poorly defined attributes that we make up as we go along”* flashback kicking in]).  
### Been Done, Been Done Better, Already Part of RSS

But if they aren’t speaking to you as clearly (and I’ll admit the voices in my head are particularly loud and clear tonight), you might see if Danny’s [Um, we’ve had that for 3 years it’s called RDF, and it works much better](http://dannyayers.com/archives/001908.html), makes it any clearer.  
### Ah, Running Code

So technologically it sucks, but what about this supposed ease of use?  
See [parsing RSS-Data](http://www.myelin.co.nz/post/2003/10/3/#200310031) vs. [parsing RSS namespaces](http://www.myelin.co.nz/post/2003/10/3/#200310032), and [compare these 2 samples for readability](http://www.myelin.co.nz/post/2003/10/3/#200310033). ### The Macromedia Way?

Allaire speaks about a new crop of aggregators that could be extended to solve domain specific problems, and new formats of RSS-Data. All I can say is, namespaces, RDF, and XML…Hello? He also mentions how wonderful it would be to get all this stuff into Flash, and Java, and that [Macromedia Central](http://www.macromedia.com/software/central/) might be a great container for this stuff, to which I can only say, “What can you expect from the man who gave us ColdFusion!” (literally, this is the same spirit that I think ColdFusion embodies in all it’s hackish, kludgy, kind of uncomfortable with intermediate concepts in computer science, proprietary way)

And I challenge someone to explain to me why adding 3-4 layers of nested XML, to get a poorly specified date format is an improvement over just using W3CDTF?