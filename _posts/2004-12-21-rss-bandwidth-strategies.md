---
id: 985
title: 'RSS Bandwidth Strategies'
date: '2004-12-21T08:45:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=985'
permalink: /2004/12/21/rss-bandwidth-strategies/
typo_id:
    - '983'
mt_id:
    - '2656'
link_related:
    - ''
raw_content:
    - "<p>\r\nMuch concern, hand wringing and advice on RSS bandwidth issues lately.  (see <a href=\\\"http://regsched.bookinfo.info/\\\">Regular Sucking Schedule</a>, and <a href=\\\"http://www.kbcafe.com/rss/rssfeedstate.html\\\">HowTo RSS Feed State</a>).  Here\\'s some more.\r\n</p>\r\n<p>\r\n<a href=\\\"http://backend.userland.com/skipHoursDays\\\">skipHours (and co.)</a>, <a href=\\\"http://blogs.law.harvard.edu/tech/rss#requiredChannelElements\\\">ttl</a>, and <a href=\\\"http://web.resource.org/rss/1.0/modules/syndication/\\\">mod_syndication</a> are all considered harmful.  They\\'re all under specified, highly ambiguous, poorly supported, poorly implemented, and move logic into the file which should be (and is) in the protocol.   Rule of thumb, if your bandwidth saving mechanism is in your feed, it\\'s a mistake.  They promise false hopes of salvation, ignore them.\r\n</p>\r\n<p>\r\n<h3>HTTP *Will* Save You</h3>\r\nRather look to:\r\n<ul>\r\n<li>Conditional GET, learn it, live it, love it.  <a href=\\\"http://fishbowl.pastiche.org/2002/10/21/http_conditional_get_for_rss_hackers\\\">Trivial to support</a>, you have my permission to ban clients which don\\'t support it.</li>\r\n\r\n<li>GZIP encoding, the obvious solution to bandwidth concerns is to swap a little CPU (and the magic of HTTP caching really does minimize it), for a whole lot of bandwidth savings.  Been looking for a reason to upgrade to <a href=\\\"http://httpd.apache.org/docs-2.0/\\\">Apache 2.0</a>?  How about <a href=\\\"http://httpd.apache.org/docs-2.0/mod/mod_deflate.html\\\">mod_deflate</a> is included by default and is more stable then the arcane (and nomadic) <a href=\\\"http://sourceforge.net/projects/mod-gzip/\\\">mod_gzip</a> (which was a beacon a in the darkness in its day)</li>\r\n \r\n<li><a href=\\\"http://www.faqs.org/rfcs/rfc3229.html\\\">RFC 3229</a> aka HTTP deltas, and <a href=\\\"http://asdf.blogs.com/asdf/2004/09/mod_speedyfeed_.html\\\">mod_speedyfeed</a> (reason #2 for upgrading Apache 2.0).  Wave of the future, next puncture in the equilibrium, Sam has some notes: <a href=\\\"http://intertwingly.net/blog/2004/09/11/Vary-ETag/\\\">Varg ETag</a>, <a href=\\\"http://www.intertwingly.net/blog/2004/09/15/Syndication-with-RFC3229\\\">Syndication with RFC3229</a>, <a href=\\\"http://www.intertwingly.net/blog/2004/09/18/RFC3229-enabled\\\">RFC3229 enabled</a>, <a href=\\\"http://www.intertwingly.net/blog/2004/09/17/mod-speedyfeed\\\">mod_speedyfeed</a>.</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<h3>It\\'s All About Apache2 and HTTP/1.1</h3>\r\nThis post also does double duty as the my weighing in on <a href=\\\"http://drbacchus.com/wordpress/index.php?p=844\\\">Apache2 vs PHP</a> <a href=\\\"http://shiflett.org/archive/86\\\">mini-</a> <a href=\\\"http://blog.coggeshall.org/archives/174_Apache_2.0,_My_Two_Cents.html\\\">controversy</a>\r\n</p>\r\n<p>\r\n<h3>Fat Media</h3>\r\nObviously none of this will save you from the bandwidth concern of podcasting (or videoblogging!).  I\\'m willing concede that those concerns are beyond the scope of basic HTTP, and point your attention to <a href=\\\"http://bittorrent.com/\\\">BitTorrent</a>.\r\n</p>"
tags:
    - apache
    - http
    - rss
    - timbl
---

Much concern, hand wringing and advice on RSS bandwidth issues lately. (see [Regular Sucking Schedule](http://regsched.bookinfo.info/), and [HowTo RSS Feed State](http://www.kbcafe.com/rss/rssfeedstate.html)). Here’s some more.

[skipHours (and co.)](http://backend.userland.com/skipHoursDays), [ttl](http://blogs.law.harvard.edu/tech/rss#requiredChannelElements), and [mod\_syndication](http://web.resource.org/rss/1.0/modules/syndication/) are all considered harmful. They’re all under specified, highly ambiguous, poorly supported, poorly implemented, and move logic into the file which should be (and is) in the protocol. Rule of thumb, if your bandwidth saving mechanism is in your feed, it’s a mistake. They promise false hopes of salvation, ignore them.

### HTTP *Will* Save You

Rather look to: - Conditional GET, learn it, live it, love it. [Trivial to support](http://fishbowl.pastiche.org/2002/10/21/http_conditional_get_for_rss_hackers), you have my permission to ban clients which don’t support it.
- GZIP encoding, the obvious solution to bandwidth concerns is to swap a little CPU (and the magic of HTTP caching really does minimize it), for a whole lot of bandwidth savings. Been looking for a reason to upgrade to [Apache 2.0](http://httpd.apache.org/docs-2.0/)? How about [mod*deflate*](http://httpd.apache.org/docs-2.0/mod/mod_deflate.html) is included by default and is more stable then the arcane (and nomadic) [modgzip](http://sourceforge.net/projects/mod-gzip/) (which was a beacon a in the darkness in its day)
- [RFC 3229](http://www.faqs.org/rfcs/rfc3229.html) aka HTTP deltas, and [mod*speedyfeed*](http://asdf.blogs.com/asdf/2004/09/mod_speedyfeed_.html) (reason #2 for upgrading Apache 2.0). Wave of the future, next puncture in the equilibrium, Sam has some notes: [Varg ETag](http://intertwingly.net/blog/2004/09/11/Vary-ETag/), [Syndication with RFC3229](http://www.intertwingly.net/blog/2004/09/15/Syndication-with-RFC3229), [RFC3229 enabled](http://www.intertwingly.net/blog/2004/09/18/RFC3229-enabled), [modspeedyfeed](http://www.intertwingly.net/blog/2004/09/17/mod-speedyfeed).

### It’s All About Apache2 and HTTP/1.1

This post also does double duty as the my weighing in on [Apache2 vs PHP](http://drbacchus.com/wordpress/index.php?p=844) [mini-](http://shiflett.org/archive/86) [controversy](http://blog.coggeshall.org/archives/174_Apache_2.0,_My_Two_Cents.html)### Fat Media

Obviously none of this will save you from the bandwidth concern of podcasting (or videoblogging!). I’m willing concede that those concerns are beyond the scope of basic HTTP, and point your attention to [BitTorrent](http://bittorrent.com/). 