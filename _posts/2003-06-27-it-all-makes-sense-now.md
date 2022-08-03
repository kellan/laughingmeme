---
id: 494
title: 'It All Makes Sense Now'
date: '2003-06-27T00:03:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=494'
permalink: /2003/06/27/it-all-makes-sense-now/
typo_id:
    - '492'
mt_id:
    - '920'
link_related:
    - ''
raw_content:
    - "<p>\r\nAfter reading this thread <a href=\\\"http://www.intertwingly.net/blog/1494.html\\\">discussing Dave\\'s \\\"clarificaton\\\" of the &lt;link&gt;</a> element, I think I finally figured out why RSS has always seemed straightforward and clear to me, but so confusing, and difficult to others.  \r\n</p>\r\n<p>\r\n<h3>I Believe in History</h3>\r\nYou see <a href=\\\"http://laughingmeme.org/archives/000004.html\\\">my history with RSS</a> goes directly from the straightforward, and simple RSS 0.9 to the well thought out, and refactored RSS 1.0, just skipping the murkiness in between.  What becomes clear reading the above thread is what I\\'ve always felt at a gut level, the RSS 0.9x series is a kludge, an unacknowledge attempt to hijack one format (with high visibility) to serve the intentions of another.  Its sort of a reversal on the old \\\"when all you have is a hammer\\\" saying, reformulated as \\\"if you tell people really loudly, over and over that you pound nails with a saw, people will eventually believe you\\\". (and cut their hand in the process).  \r\n</p>\r\n<p>\r\n<h3>Shocking</h3>\r\nI knew things were dire at a times, but it never occured to me that their could be so much confusion about the basic RSS data model, and core elements. (this perspective again comes from using primarily RSS 1.0 which made as one of its cheif design criteria backwards compatibility with RSS 0.9, therefore never having cut itself loose to drift in ambiguity the same way)\r\n</p>\r\n<p>\r\n<h3>Message is the Medium?</h3>\r\nA more constructive way to characterize the confusion is whether RSS is a syndication format (the RSS 0.9 and RSS 1.0 data model) that is providing information about an external resource (and there for all &lt;link&gt; elements are conceptually contained by the &lt;channel&gt; element they are nested in [thats what nesting means folks!]), or is it a publishing medium, a really ugly, but semantically rich weblog in its own right (which is the argued for meaning of link in RSS 2.0, that necessitated adding the guid element).\r\n</P>\r\n<p>ps. I promise something more interesting soon, really.  Or at least more interesting to me</p>\r\n<p>pps.  if people are <b>really</b> have trouble extracting links from their weblog posts, contact me, and I\\'ll send you code to do is</b>"
tags:
    - funky
    - rss
    - rss2.0
    - winer
---

After reading this thread [discussing Dave’s “clarificaton” of the &lt;link&gt;](http://www.intertwingly.net/blog/1494.html) element, I think I finally figured out why RSS has always seemed straightforward and clear to me, but so confusing, and difficult to others.

### I Believe in History

You see [my history with RSS](http://laughingmeme.org/archives/000004.html) goes directly from the straightforward, and simple RSS 0.9 to the well thought out, and refactored RSS 1.0, just skipping the murkiness in between. What becomes clear reading the above thread is what I’ve always felt at a gut level, the RSS 0.9x series is a kludge, an unacknowledge attempt to hijack one format (with high visibility) to serve the intentions of another. Its sort of a reversal on the old “when all you have is a hammer” saying, reformulated as “if you tell people really loudly, over and over that you pound nails with a saw, people will eventually believe you”. (and cut their hand in the process).  
### Shocking

I knew things were dire at a times, but it never occured to me that their could be so much confusion about the basic RSS data model, and core elements. (this perspective again comes from using primarily RSS 1.0 which made as one of its cheif design criteria backwards compatibility with RSS 0.9, therefore never having cut itself loose to drift in ambiguity the same way) ### Message is the Medium?

A more constructive way to characterize the confusion is whether RSS is a syndication format (the RSS 0.9 and RSS 1.0 data model) that is providing information about an external resource (and there for all &lt;link&gt; elements are conceptually contained by the &lt;channel&gt; element they are nested in \[thats what nesting means folks!\]), or is it a publishing medium, a really ugly, but semantically rich weblog in its own right (which is the argued for meaning of link in RSS 2.0, that necessitated adding the guid element). ps. I promise something more interesting soon, really. Or at least more interesting to me

pps. if people are **really** have trouble extracting links from their weblog posts, contact me, and I’ll send you code to do is