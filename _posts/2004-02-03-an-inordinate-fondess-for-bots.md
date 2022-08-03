---
id: 727
title: 'An Inordinate Fondess for Bots'
date: '2004-02-03T09:37:50+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=727'
permalink: /2004/02/03/an-inordinate-fondess-for-bots/
typo_id:
    - '725'
mt_id:
    - '1715'
link_related:
    - ''
raw_content:
    - "Has anyone done a study into how many browsers which claim to be Internet Explorer are actually bots?  Maybe setup bot traps and compare the percentage of IE users which fall into them? \nYou see <a href=\\\"http://protest.net\\\">Protest.net</a> in some ways is one big bot trap. (any dynamic calendar site will be, besides most of our site is blocked via robots.txt)  And we don\\'t scale as well under load as we really should. (ancient, creaking CGI and all that)  So when a few bots get together and start pounding the site on top of the regular traffic, I notice, and go looking for it.  And you know what I find?  I pretty consistently find IE users way out looking at events in 2012.   We don\\'t have events listed yet for 2012, and yet there they are, merrily looking at the day view of June 11th, 2012.  My instinct says this is a bot.  \n\nAnd it isn\\'t isolated, I regularily see IE users blow through LM, downloading a page every 5-10 secs, for a hundred pages at a time.  This could be a person, but it is a very strange one.  A few of them show up as very sparse user agents like \\\"Mozilla/4.0 (compatible; MSIE 6.0)\\\", but many have all the bells and whistle of a modern user agent like \\\"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; MyIE2; .NET CLR 1.1.4322)\\\" (I really should start keep a log, instead of just banning their IP).   I assume these are spambots out looking for email addresses, or something similar.\n\n\nI realize my little sites collect a higher percentage of bots to people then the Googles of the world, but it does seem like IE\\'s market dominance is overstated.  Prompted by <a href=\\\"http://www.mezzoblue.com/archives/2004/02/02/browser_supp/index.php\\\">Which Browsers Should You Support?</a>"
---

Has anyone done a study into how many browsers which claim to be Internet Explorer are actually bots? Maybe setup bot traps and compare the percentage of IE users which fall into them? You see [Protest.net](http://protest.net) in some ways is one big bot trap. (any dynamic calendar site will be, besides most of our site is blocked via robots.txt) And we don’t scale as well under load as we really should. (ancient, creaking CGI and all that) So when a few bots get together and start pounding the site on top of the regular traffic, I notice, and go looking for it. And you know what I find? I pretty consistently find IE users way out looking at events in 2012. We don’t have events listed yet for 2012, and yet there they are, merrily looking at the day view of June 11th, 2012. My instinct says this is a bot.

And it isn’t isolated, I regularily see IE users blow through LM, downloading a page every 5-10 secs, for a hundred pages at a time. This could be a person, but it is a very strange one. A few of them show up as very sparse user agents like “Mozilla/4.0 (compatible; MSIE 6.0)”, but many have all the bells and whistle of a modern user agent like “Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; MyIE2; .NET CLR 1.1.4322)” (I really should start keep a log, instead of just banning their IP). I assume these are spambots out looking for email addresses, or something similar.

I realize my little sites collect a higher percentage of bots to people then the Googles of the world, but it does seem like IE’s market dominance is overstated. Prompted by [Which Browsers Should You Support?](http://www.mezzoblue.com/archives/2004/02/02/browser_supp/index.php)