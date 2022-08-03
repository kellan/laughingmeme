---
id: 1062
title: 'XML::RSS Free to Good Home'
date: '2005-04-05T07:43:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1062'
permalink: /2005/04/05/xmlrss-free-to-good-home/
typo_id:
    - '1060'
mt_id:
    - '2913'
link_related:
    - ''
raw_content:
    - "I\\'ve been trying to give away [XML::RSS](http://search.cpan.org/dist/XML-RSS) for a long time now.  Private emails, comments, etc have gone nowhere.  The drive towards a 2.0 version based on libxml2/DOM, and a rich object model stalled.  (though I\\'ve got a nascent version I use privately for scripts like my rss2delicious, and the [RNC protest infoline](http://www.anarchogeek.com/archives/000430.html)).  \r\n\r\nXML::RSS has a number of fatal flaws that make it hard to grow, and hard to support.  Its handling of character encoding will always be fatally flawed (its a hard problem), and its parser model has been evolving over many many years.\r\n\r\nIt is also the oldest RSS parser around, hugely popular, widely used, and with an amazing number of really excellent patches sitting in the queue.  Work has been done to fix the encoding issues, re-factor out the RSS writing, and generally spiff it up.  And I\\'m the road block to that all getting rolled out.  I\\'ve got my solution, and I\\'m not having fun hacking on XML::RSS, time to pass it on.\r\n\r\nWant it?"
tags:
    - perl
    - rss
---

I’ve been trying to give away \[XML::RSS\](http://search.cpan.org/dist/XML-RSS) for a long time now. Private emails, comments, etc have gone nowhere. The drive towards a 2.0 version based on libxml2/DOM, and a rich object model stalled. (though I’ve got a nascent version I use privately for scripts like my rss2delicious, and the \[RNC protest infoline\](http://www.anarchogeek.com/archives/000430.html)).

XML::RSS has a number of fatal flaws that make it hard to grow, and hard to support. Its handling of character encoding will always be fatally flawed (its a hard problem), and its parser model has been evolving over many many years.

It is also the oldest RSS parser around, hugely popular, widely used, and with an amazing number of really excellent patches sitting in the queue. Work has been done to fix the encoding issues, re-factor out the RSS writing, and generally spiff it up. And I’m the road block to that all getting rolled out. I’ve got my solution, and I’m not having fun hacking on XML::RSS, time to pass it on.

Want it?