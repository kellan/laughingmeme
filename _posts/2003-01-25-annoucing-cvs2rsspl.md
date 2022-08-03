---
id: 289
title: 'Annoucing cvs2rss.pl'
date: '2003-01-25T13:36:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=289'
permalink: /2003/01/25/annoucing-cvs2rsspl/
typo_id:
    - '287'
mt_id:
    - '296'
link_related:
    - ''
raw_content:
    - "<p>\r\nWhen I \r\n<a href=\\\"http://laughingmeme.org/archives/000294.html#000294\\\">consulted the omens</a> this morning they said don\\'t get out bed.  So I wrote\r\n<a href=\\\"/cvs2rss/\\\">cvs2rss.pl</a> instead.  I think its pretty cool, but then I\\'m not really trust worthy at the moment as I started halluncinating about\r\nan hour ago from lack of food and coffee.(thats the real problem with leaving college, no longer having a mini fridge you can reach from bed)\r\n</p>\r\n<p>\r\n<h3>CVS -> RSS</h3>\r\ncvs2rss.pl is a Perl script (and a couple of modules) that can mine an RSS feed\r\nout of a local cvs checkout. (though mostly it asks \r\n<a href=\\\"http://www.red-bean.com/cvs2cl\\\">cvs2cl.pl</a> to do the heavy\r\nlifting)\r\n</p>\r\n<p>\r\nIts kind of a hack, but its a cool hack, and I put sometime into thinking about\r\nwhat should values should be in fields like \\'title\\' and \\'link\\', and it works\r\npretty well.\r\n</p>\r\n<p>\r\n<h3>CVS & the Web</h3>\r\nCurrently cvs2rss.pl depends on you to have a copy of <a\r\nhref=\\\"http://viewcvs.sf.net\\\">ViewCVS</a>(aka, the CVS browser on Sourceforge)\r\nrunning somewhere public for it to link to, but is designed to be extended for\r\nuse with other web repository browsers.\r\n</p>\r\n<p>\r\nAn example <a href=\\\"/cvs2rss/xml_rss.rdf\\\">CVS RSS feed for XML::RSS</a>.\r\n</p>\r\n<p>\r\n<h3>On a side note</h3>\r\nHmmm, starting to feel like the all-RSS, all-the-time channel around here (count \\'em, \r\n<a href=\\\"/archives/cat_rss.html\\\">6 RSS entries</a> in 5 days).  I wonder if its too late to run away to \r\n<a href=\\\"http://www.portoalegre2003.org/publique/index02I.htm\\\">Brazil</a>? \r\n</p>"
tags:
    - cvs
    - cvs2rss
    - rss
---

When I [consulted the omens](http://laughingmeme.org/archives/000294.html#000294) this morning they said don’t get out bed. So I wrote [cvs2rss.pl](/cvs2rss/) instead. I think its pretty cool, but then I’m not really trust worthy at the moment as I started halluncinating about an hour ago from lack of food and coffee.(thats the real problem with leaving college, no longer having a mini fridge you can reach from bed)

### CVS -&gt; RSS

cvs2rss.pl is a Perl script (and a couple of modules) that can mine an RSS feed out of a local cvs checkout. (though mostly it asks [cvs2cl.pl](http://www.red-bean.com/cvs2cl) to do the heavy lifting) Its kind of a hack, but its a cool hack, and I put sometime into thinking about what should values should be in fields like ‘title’ and ‘link’, and it works pretty well.

### CVS &amp; the Web

Currently cvs2rss.pl depends on you to have a copy of [ViewCVS](http://viewcvs.sf.net)(aka, the CVS browser on Sourceforge) running somewhere public for it to link to, but is designed to be extended for use with other web repository browsers. An example [CVS RSS feed for XML::RSS](/cvs2rss/xml_rss.rdf).

### On a side note

Hmmm, starting to feel like the all-RSS, all-the-time channel around here (count ’em, [6 RSS entries](/archives/cat_rss.html) in 5 days). I wonder if its too late to run away to [Brazil](http://www.portoalegre2003.org/publique/index02I.htm)? 