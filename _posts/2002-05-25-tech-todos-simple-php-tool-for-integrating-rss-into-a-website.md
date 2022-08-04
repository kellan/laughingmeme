---
id: 39
title: 'Tech Todos – Simple PHP tool for integrating RSS into a website.'
date: '2002-05-25T15:22:34+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=39'
permalink: /2002/05/25/tech-todos-simple-php-tool-for-integrating-rss-into-a-website/
typo_id:
    - '37'
mt_id:
    - '35'
link_related:
    - ''
raw_content:
    - "I\\'m really hoping to find this one rather then have to build it.  This\r\n\tshould exist already.  PHP is everywhere, and unaviodable.  Therefore there\r\n\tshould be a toolkit aimed at the skillset of the average PHP user.\r\n\t<p>\r\n\t<ul>\r\n<li>As someone creating a website:  I don\\'t want to use one of the <a href=\\\"http://publish.curry.com/rss/\\\"> remote, javascript based tools</a>,\r\n\tthat automatically fetch, and display an RSS feed, as that will slow down my\r\n\twebiste (while that remote call is made) and not give me the control I\r\n\twant.\r\n\t<p>\r\n\t<li>As a RSS feed publisher, I would rather not have a hit to my site,\r\n\teverytime your PHP page is viewed.\r\n\t<p>\r\n\t<li>As someone using PHP to publish a website, I may or may not feel comfortable\r\n\twith XML, but I certainly don\\'t want t have to think about it.\r\n\t<p>\r\n\t<li>As a RSS feed publisher, I want to be able to use the full range of tools\r\n\tgiven me by the flexibility of RSS, particularily the modular 1.0 version.\r\n</ul>\t\r\n<p>\r\n\tI think a there is a need for a simple PHP  tool that can:\r\n\t<ul>\r\n\t<li>fetch remote RSS feeds, and parse them into a data structure or object\r\n\t(or both) that is simple, and useful from within a PHP script.\r\n\t\r\n<li>can intelligently cache the parsed form of that remote feed to conserve\r\n\tresources, and speed up response. \r\n\t\r\n<li>whoses complexity is hidden by a simple function interface\r\n\t\r\n<li>makes available some of the RSS data is a format more natural to a PHP\r\n\tenvironment.  e.g. providing a version of date fields that are in epoch\r\n\tseconds rather then <a href=\\\"http://www.w3.org/TR/NOTE-datetime\\\">W3CDTF</a>.\r\n\t</ul>\r\n\r\nDoes something like  the <a href=\\\"http://perl-cache.sf.net\\\">Perl Cache project</a> exists for PHP?\r\n<p/>\r\n<p>\r\n<b>UPDATE:</b>  Nothing existed which worked like I describe above, in fact very little existed in the way of real PHP RSS tools, so I built one, <a href=\\\"http://magpierss.sf.net\\\">Magpie RSS</a>, xml-based, caches requests.\r\n</p>\r\n<p>\r\n<b>UPDATE:</b><a href=\\\"http://laughingmeme.org/archives/000183.html#000183\\\"> jpcache looks intriguing</a>\r\n</p>"
tags:
    - magpie
---

I’m really hoping to find this one rather then have to build it. This should exist already. PHP is everywhere, and unaviodable. Therefore there should be a toolkit aimed at the skillset of the average PHP user.

- As someone creating a website: I don’t want to use one of the [ remote, javascript based tools](http://publish.curry.com/rss/), that automatically fetch, and display an RSS feed, as that will slow down my webiste (while that remote call is made) and not give me the control I want.
- As a RSS feed publisher, I would rather not have a hit to my site, everytime your PHP page is viewed.
- As someone using PHP to publish a website, I may or may not feel comfortable with XML, but I certainly don’t want t have to think about it.
- As a RSS feed publisher, I want to be able to use the full range of tools given me by the flexibility of RSS, particularily the modular 1.0 version.

  
 I think a there is a need for a simple PHP tool that can:

- fetch remote RSS feeds, and parse them into a data structure or object (or both) that is simple, and useful from within a PHP script.
- can intelligently cache the parsed form of that remote feed to conserve resources, and speed up response.
- whoses complexity is hidden by a simple function interface
- makes available some of the RSS data is a format more natural to a PHP environment. e.g. providing a version of date fields that are in epoch seconds rather then [W3CDTF](http://www.w3.org/TR/NOTE-datetime).

Does something like the [Perl Cache project](http://perl-cache.sf.net) exists for PHP?

**UPDATE:** Nothing existed which worked like I describe above, in fact very little existed in the way of real PHP RSS tools, so I built one, [Magpie RSS](http://magpierss.sf.net), xml-based, caches requests.

**UPDATE:**[ jpcache looks intriguing](http://laughingmeme.org/archives/000183.html#000183)