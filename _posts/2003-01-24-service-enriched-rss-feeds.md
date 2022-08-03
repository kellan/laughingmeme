---
id: 285
title: 'Service enriched RSS feeds'
date: '2003-01-24T07:53:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=285'
permalink: /2003/01/24/service-enriched-rss-feeds/
typo_id:
    - '283'
mt_id:
    - '292'
link_related:
    - ''
raw_content:
    - "<p>\r\nDave\\'s \r\n<a href=\\\"http://backend.userland.com/weblogComments\\\">evangelism</a> reminded me of an idea thats been tickling at the back of my brain for a while:\r\n<blockquote>RSS feeds should come packed with a soup of meta-data, and some of that meta-data should be services.</blockquote>\r\n</p>\r\n<p>\r\n<h3>Comment Service</h3>\r\nA comment service is the most obvious service one could provide, and most applicable to the majority of deployed RSS feeds.  As a bonus we\\'ve already got a widely deployed API for publishinhg a comment serve:  a \r\n<a href=\\\"http://www.movabletype.org/trackback/\\\">TrackBack</a> URL. \r\n</p>\r\n<p>\r\nTrackBack provides a simple, RESTful interface for commenting\r\n<ul>\r\n<li> <code>GET</code> a TrackBack and you have a list of comments, <li><code>POST</code> to a TrackBack and your part of the flow. \r\n</ul>\r\nThis is not the only service, just as weblogs are not RSS\\'s only domain, but lets look at how we might include this comment service in an RSS feed.\r\n</p>\r\n\n<p>\r\n<h3>Deployment Vector?</h3>\r\nSo how do we describe such a service?  I suppose the &lt;comment&gt; tag works for RSS 2.0, but I would hope for something a little more structured, clever, and forward looking for RSS 1.0.\r\n</p>\r\n<p>\r\n<h3>mod_trackback</h3>\r\nA proposed \r\n<a href=\\\"http://madskills.com/public/xml/rss/module/trackback/\\\">mod_trackback</a> exists (in a limbo state of not having hit the \r\n<a href=\\\"http://web.resource.org/rss/1.0/modules/proposed.html\\\">proposed modules list</a>) and provides for both <code>ping</code> which is the comment service discussed above, plus <code>about</code> which functions more like annotation.  This works (in fact <a href=\\\"http://rss.benhammersley.com/archives/001429.html\\\">ben  used to suport it</a>), and is very simple.  But isn\\'t very future proof.\r\n<ul>\r\n<li>What do we do when we want to advertise more then one service?</li>\r\n<li>Or a service that works differently then TrackBack?</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<h3>mod_link</h3>\r\nKevin Burton\\'s <a href=\\\"http://web.resource.org/rss/1.0/modules/link/\\\">mod_link</a> seems like it has a lot of promise with its ability to provide richly described. arbitrary linking.     It comes with 6 standard types of links, and is extensible through providing new relationship URIs (like namespaces).  More good info in his <a href=\\\"http://www.peerfear.org/rss/permalink/2002/10/24/1035934972-Design_Decisions_for_the_RSS_10_Link_Module.shtml\\\">design decisions</a>.  Maybe a comment service could be published with relationship \\\"http://purl.org/rss/1.0/modules/link/#comment\\\", e.g.\r\n<pre class=\\\"code\\\">\r\n\r\n&lt;l:link l:rel=\\\"http://purl.org/rss/1.0/modules/link/#comment\\\"\r\n    l:type=\\\"?????\\\"\r\n    l:title=\\\"urn:trackback-comment\\\"\r\n    l:lang=\\\"en\\\"\r\n    rdf:resource=\\\"http://laughingmeme.org/mt-tb.cgi/292\\\"/&gt;\r\n\r\n</pre>\r\n\r\nAs you can see, I\\'m not clear on what should go in the <code>type</code> attribute.\r\n</p>\r\n<p>\r\n<h3>Extensible</h3>\r\nI think this is a cool option, and very extensible.  It also isn\\'t limited to REST based services (though I think REST is a more natural fit for the resources already available to an RSS aggregator) as the mod_link ships with a standard \\\"service\\\" relationship for pointing at WSDL descriptors (and presumably \r\n<a href=\\\"http://archipelago.phrasewise.com/rsd\\\">RSD descriptors</a> as well). \r\n</p>\r\n<p>\r\n<h3>Problem with mod_link</h3>\r\nUnfortunately it would require a rather major (though doable) upgrade of the existing RSS parsers at least the ones I work on: <a href=\\\"http://search.cpan.org\\\">XML::RSS</a> will now (0.98_4) look in rdf:resource attributes if it is explicitly told to, but discards the rest of the attributes, <a href=\\\"http://magpierss.sf.net\\\">MagpieRSS</a> ignores attributes entirely.   Mark Nottingham\\'s <a href=\\\"http://www.mnot.net/python/RSS.py\\\">RSS.py</a> has limited attribute support (and like XML::RSS should be hard to add more support), I haven\\'t played Mark Pilgrim\\'s <a href=\\\"http://diveintomark.org/projects/misc/rssparser.py.txt\\\">rss_parser</a> but I\\'m betting against attribute support.  What are the other standard RSS parser?\r\n</p>\r\n<p>\r\n<h3>A services module</h3>\r\nA last option is to write a new module proposal specifically for carrying service information, it could be simpler, and not make extensive use of attributes.  It would probably be easier to parse with current toolkits, and more likely to be adopted into RSS 2.0.  However, I\\'m having trouble getting motivated to design something new in the face of the elegant work Kevin has already done.  Maybe inspiration will hit soon.\r\n</p>"
tags:
    - design
    - rss
    - service
    - stream
---

Dave’s [evangelism](http://backend.userland.com/weblogComments) reminded me of an idea thats been tickling at the back of my brain for a while:

> RSS feeds should come packed with a soup of meta-data, and some of that meta-data should be services.

### Comment Service

A comment service is the most obvious service one could provide, and most applicable to the majority of deployed RSS feeds. As a bonus we’ve already got a widely deployed API for publishinhg a comment serve: a [TrackBack](http://www.movabletype.org/trackback/) URL. TrackBack provides a simple, RESTful interface for commenting

- `GET` a TrackBack and you have a list of comments,
- `POST` to a TrackBack and your part of the flow.

This is not the only service, just as weblogs are not RSS’s only domain, but lets look at how we might include this comment service in an RSS feed. ### Deployment Vector?

So how do we describe such a service? I suppose the &lt;comment&gt; tag works for RSS 2.0, but I would hope for something a little more structured, clever, and forward looking for RSS 1.0. ### mod*trackback*

A proposed [modtrackback](http://madskills.com/public/xml/rss/module/trackback/) exists (in a limbo state of not having hit the [proposed modules list](http://web.resource.org/rss/1.0/modules/proposed.html)) and provides for both `ping` which is the comment service discussed above, plus `about` which functions more like annotation. This works (in fact [ben used to suport it](http://rss.benhammersley.com/archives/001429.html)), and is very simple. But isn’t very future proof. - What do we do when we want to advertise more then one service?
- Or a service that works differently then TrackBack?

### mod*link*

Kevin Burton’s [modlink](http://web.resource.org/rss/1.0/modules/link/) seems like it has a lot of promise with its ability to provide richly described. arbitrary linking. It comes with 6 standard types of links, and is extensible through providing new relationship URIs (like namespaces). More good info in his [design decisions](http://www.peerfear.org/rss/permalink/2002/10/24/1035934972-Design_Decisions_for_the_RSS_10_Link_Module.shtml). Maybe a comment service could be published with relationship “http://purl.org/rss/1.0/modules/link/#comment”, e.g. ```
<pre class="code">

<p><l:link l:rel="http://purl.org/rss/1.0/modules/link/#comment"
    l:type="?????"
    l:title="urn:trackback-comment"
    l:lang="en"
    rdf:resource="http://laughingmeme.org/mt-tb.cgi/292"/></p>

<p></p>
```

As you can see, I’m not clear on what should go in the `type` attribute.

### Extensible

I think this is a cool option, and very extensible. It also isn’t limited to REST based services (though I think REST is a more natural fit for the resources already available to an RSS aggregator) as the mod*link ships with a standard “service” relationship for pointing at WSDL descriptors (and presumably [RSD descriptors](http://archipelago.phrasewise.com/rsd) as well). ### Problem with mod* link Unfortunately it would require a rather major (though doable) upgrade of the existing RSS parsers at least the ones I work on: [XML::RSS](http://search.cpan.org) will now (0.98*4) look in rdf:resource attributes if it is explicitly told to, but discards the rest of the attributes, [MagpieRSS](http://magpierss.sf.net) ignores attributes entirely. Mark Nottingham’s [RSS.py](http://www.mnot.net/python/RSS.py) has limited attribute support (and like XML::RSS should be hard to add more support), I haven’t played Mark Pilgrim’s [rss](http://diveintomark.org/projects/misc/rssparser.py.txt)*parser but I’m betting against attribute support. What are the other standard RSS parser? ### A services module

A last option is to write a new module proposal specifically for carrying service information, it could be simpler, and not make extensive use of attributes. It would probably be easier to parse with current toolkits, and more likely to be adopted into RSS 2.0. However, I’m having trouble getting motivated to design something new in the face of the elegant work Kevin has already done. Maybe inspiration will hit soon. 