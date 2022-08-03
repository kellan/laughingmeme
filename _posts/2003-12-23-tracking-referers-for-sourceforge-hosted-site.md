---
id: 691
title: 'Tracking Referers for Sourceforge Hosted Site'
date: '2003-12-23T18:35:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=691'
permalink: /2003/12/23/tracking-referers-for-sourceforge-hosted-site/
typo_id:
    - '689'
mt_id:
    - '1585'
link_related:
    - ''
raw_content:
    - "<p>\r\nHosting a project with Sourceforge is great.  They provide bandwidth, CVS with anonymous access (something I never set up on my own boxes), and above all, a certain credibility.  But they don\\'t provide good traffic analysis.  There was some recent discussion if people were actually finding Magpie searching for PHP RSS parsing, or if they were simple <a href=\\\"http://images.google.com/images?q=magpie\\\">searching for a picture of a magpie</a>.\r\n</p>\r\n<p>\r\nSo here is a bit of Javascript that will fetch a remote image from your <a href=\\\"http://magpierss.sf.net\\\">Sourceforge project home page</a> and tack the original referer url to the image.\r\n\r\n<pre>\r\n&lt;script language=\\\"javascript\\\"&gt;\r\nvar img = \\\"http://example.org/bigbrother.gif\\\"\r\nvar ref = parent.document.referrer;\r\ndocument.write(\\\"&lt;img src=\\\\\\\"\\\"+img+\\\"?\\\"+escape(ref)+\\\"\\\\\\\"&gt;\\\");\r\n&lt;/script&gt;\r\n\r\n</pre>\r\n\r\nI imagine this is what someone like <a href=\\\"http://sitemeter.com\\\">SiteMeter</a> does.\r\n</p>"
tags:
    - credibility
    - hacks
    - javascript
    - sourceforge
    - stats
    - tip
---

Hosting a project with Sourceforge is great. They provide bandwidth, CVS with anonymous access (something I never set up on my own boxes), and above all, a certain credibility. But they don’t provide good traffic analysis. There was some recent discussion if people were actually finding Magpie searching for PHP RSS parsing, or if they were simple [searching for a picture of a magpie](http://images.google.com/images?q=magpie).

So here is a bit of Javascript that will fetch a remote image from your [Sourceforge project home page](http://magpierss.sf.net) and tack the original referer url to the image.

```

<script language="javascript">
var img = "http://example.org/bigbrother.gif"
var ref = parent.document.referrer;
document.write("<img src=\""+img+"?"+escape(ref)+"\">");
</script>

```

I imagine this is what someone like [SiteMeter](http://sitemeter.com) does.