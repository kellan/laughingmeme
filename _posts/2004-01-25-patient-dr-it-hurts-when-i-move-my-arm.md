---
id: 718
title: 'Patient:  Dr., It Hurts When I Move My Arm!'
date: '2004-01-25T19:00:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=718'
permalink: /2004/01/25/patient-dr-it-hurts-when-i-move-my-arm/
typo_id:
    - '716'
mt_id:
    - '1681'
link_related:
    - ''
raw_content:
    - "<p>\r\nSince I had rss_parse.inc open and was hacking on it, I briefly thought about enhancing Magpie\\'s RSS 2.0 support.  What a train wreck.  It was about the time I noticed that at least one high profile feed didn\\'t have link elements, and another was embedding arbitrary XHTML tags using inline namespaces (which I\\'ll grant is conceptually cool, if I wasn\\'t in the middle of writing a parser) that I decided that this is not what I want to be doing.  \r\n</p>\r\n<p>\r\nMagpie is and will remain happy to parse any XML document you say is RSS, but is unlikely to know what to do with one that lacks titles, or links.  Also I would be happy to accept a patch to handle Userland RSS date parsing, but I doubt if I\\'ll get to it anytime soon.  Again, I point people to Aaron\\'s <a href=\\\"http://aaronland.info/xsl/atom/0.3/\\\">XSL wizardry</a> which seems to be able, among other things, to turn Userland RSS dates into the format that Magpie can parse.  (to which the doctor says, \\\"So don\\'t move your arm\\\")\r\n</p>"
tags:
    - magpie
    - rss
    - rss2.0
---

Since I had rss\_parse.inc open and was hacking on it, I briefly thought about enhancing Magpie’s RSS 2.0 support. What a train wreck. It was about the time I noticed that at least one high profile feed didn’t have link elements, and another was embedding arbitrary XHTML tags using inline namespaces (which I’ll grant is conceptually cool, if I wasn’t in the middle of writing a parser) that I decided that this is not what I want to be doing.

Magpie is and will remain happy to parse any XML document you say is RSS, but is unlikely to know what to do with one that lacks titles, or links. Also I would be happy to accept a patch to handle Userland RSS date parsing, but I doubt if I’ll get to it anytime soon. Again, I point people to Aaron’s [XSL wizardry](http://aaronland.info/xsl/atom/0.3/) which seems to be able, among other things, to turn Userland RSS dates into the format that Magpie can parse. (to which the doctor says, “So don’t move your arm”)