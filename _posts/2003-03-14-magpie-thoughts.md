---
id: 360
title: 'Magpie Thoughts'
date: '2003-03-14T19:42:23+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=360'
permalink: /2003/03/14/magpie-thoughts/
typo_id:
    - '358'
mt_id:
    - '525'
link_related:
    - ''
raw_content:
    - "<p>\r\nJust got an <acronym title=\\\"Request for Enhancement\\\">RFE</acronym> filed against <a href=\\\"http://magpierss.sourceforge.net\\\">Magpie</a>.\r\n<blockquote>\r\nMagpieRSS dies on an invalid feed (contains\r\n&amp;cedil;). This is understandable but wouldn\\'t it\r\nmake more sense to attempt to skip the item with the\r\nproblem and return those items that are valid RSS? I\\'m\r\ngoing to go take a look at how to do this now.\r\n</blockquote>\r\nHmmm, not sure how I feel about that.  On one hand its an intriguing solution a soft failover without having to revert to regexes, on the other it changes the nature of the data rather drastically and leads to quiet failures.  Maybe an option, off by default?  Maybe I just need to update Martin\\'s <a href=\\\"http://traumwind.tierpfad.de/blog/magpie/magpie_alike.php\\\">REX based parser</a> and failover to that?\r\n</p>\r\n<p>\r\nSpeaking of working on the Magpie parser, I\\'m still struggling with how to add support for registering custom namespaces (ala XML::RSS\\'s <code>add_module()</code>) without cluttering Magpie\\'s simple one function API.  Thoughts?\r\n</p>"
tags:
    - magpie
---

Just got an <acronym title="Request for Enhancement">RFE</acronym> filed against [Magpie](http://magpierss.sourceforge.net).

> MagpieRSS dies on an invalid feed (contains &amp;cedil;). This is understandable but wouldn’t it make more sense to attempt to skip the item with the problem and return those items that are valid RSS? I’m going to go take a look at how to do this now.

Hmmm, not sure how I feel about that. On one hand its an intriguing solution a soft failover without having to revert to regexes, on the other it changes the nature of the data rather drastically and leads to quiet failures. Maybe an option, off by default? Maybe I just need to update Martin’s [REX based parser](http://traumwind.tierpfad.de/blog/magpie/magpie_alike.php) and failover to that? Speaking of working on the Magpie parser, I’m still struggling with how to add support for registering custom namespaces (ala XML::RSS’s `add_module()`) without cluttering Magpie’s simple one function API. Thoughts?