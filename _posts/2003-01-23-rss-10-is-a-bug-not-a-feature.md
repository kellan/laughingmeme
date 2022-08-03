---
id: 283
title: 'RSS 1.0 is a bug not a feature?'
date: '2003-01-23T07:30:01+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=283'
permalink: /2003/01/23/rss-10-is-a-bug-not-a-feature/
typo_id:
    - '281'
mt_id:
    - '290'
link_related:
    - ''
raw_content:
    - "<p>\r\nThe \r\n<a href=\\\"http://feeds.archive.org/validator/\\\">RSS Validator</a> is cool, built by smart people, hosted by Archive.org.  They\r\ndid a nice job of it, it works, and it only has one small problem.  These\r\notherwise intelligent people have not only settled on a \r\n<a href=\\\"http://backend.userland.com/rss\\\">poorly designed, dead\r\ntechnology</a>, they are decidedly partisan about it.\r\n</p>\r\n<p>\r\n<a href=\\\"http://radio.userland.com/discuss/msgReader$22177?mode=day\\\">Sam\r\nRuby</a>\r\n\r\n<blockquote>\r\n<em>when errors are detected, suggestions on how to fix the feed will\r\nbe based on the 2.0 spec.   Over time, we have received various requests to add\r\nadditional, version specific, checks. Most notably, verifying the use of\r\nspecific namespaces on RSS 1.0 feeds. We have treated all such requests as very\r\nlow on our lengthy todo list.</em> \r\n</blockquote>\r\n\r\nWhich seems to be, to be a direct snub of my reported issue of the Validator\r\nvalidating \r\n<a href=\\\"http://groups.yahoo.com/group/rss-dev/message/4733\\\">\r\nRSS feeds that don\\'t declare a default namespace</a>.  This totally breaks the RSS 1.0 spec, any hints at RDF compatibility, and while technically well-formed in the \\\"party-like-its-1998\\\" school of XML thought, ugh, who wants to go back.\r\n</p>"
---

The [RSS Validator](http://feeds.archive.org/validator/) is cool, built by smart people, hosted by Archive.org. They did a nice job of it, it works, and it only has one small problem. These otherwise intelligent people have not only settled on a [poorly designed, dead technology](http://backend.userland.com/rss), they are decidedly partisan about it.

[Sam Ruby](http://radio.userland.com/discuss/msgReader$22177?mode=day)

> *when errors are detected, suggestions on how to fix the feed will be based on the 2.0 spec. Over time, we have received various requests to add additional, version specific, checks. Most notably, verifying the use of specific namespaces on RSS 1.0 feeds. We have treated all such requests as very low on our lengthy todo list.*

Which seems to be, to be a direct snub of my reported issue of the Validator validating [RSS feeds that don’t declare a default namespace](http://groups.yahoo.com/group/rss-dev/message/4733). This totally breaks the RSS 1.0 spec, any hints at RDF compatibility, and while technically well-formed in the “party-like-its-1998” school of XML thought, ugh, who wants to go back.