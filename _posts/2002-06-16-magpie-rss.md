---
id: 59
title: 'Magpie RSS'
date: '2002-06-16T09:39:40+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=59'
permalink: /2002/06/16/magpie-rss/
typo_id:
    - '57'
mt_id:
    - '55'
link_related:
    - ''
raw_content:
    - "The alpha release of <a href=\\\"http://riseup.net/~kellan/magpie\\\">my RSS parser for PHP</a> is out.  Called <a href=\\\"http://riseup.net/~kellan/magpie\\\">Magpie</a>, it attempts to make including the results of an RSS feed in a PHP page simple, and straightforward.\r\n<P>\r\nTo me, simple and straightforward means:\r\n<ul>\r\n<li>not haveing to setup an external process (cron) to fetch feeds, but not adding the wait for fetching and parsing the RSS feeds to every page view\r\n<li>not haveing to worry about which version of RSS you\\'re parsing, but not losing the richness of any version\r\n<li>not haveing to negoiate PHP\\'s object syntax, when many people are still struggling with functions. (PHP\\'s fault, not theirs)\r\n</ul>\r\nBut as the my motivation for writing this was to parse <a href=\\\"http://www.laughingmeme.org/archives/000039.html#000039\\\">Protest.net\\'s event feeds</a> which use the <a href=\\\"\\\">rss events module</a> I needed a solution that could handle <a href=\\\"http://purl.org/rss/1.0/modules/\\\">RSS 1.0 modules</a>, and give me access to the underlying data, not just a pretty printed version of the feed.\r\n<P>\r\nThe solution.  <a href=\\\"http://riseup.net/~kellan/magpie\\\">MagpieRSS</a> is an XML (expat) based RSS (RSS .9, RSS .91, RSS .93, RSS 1.0) parser for PHP.  It automatically wraps the parser, and a cache system, behind a simple, one function interface.(though each piece is independent and can be used separately)  Modules and namespaces are supported by being tooked into their own hashes, unrecognized tags are accepted on face value and included in the results.  <a href=\\\"http://riseup.net/~kellan/magpie\\\">Magpie</a> returns its results as a PHP data structure, useful for iterating over, and passing to template systems like <a href=\\\"http://smarty.php.net\\\">Smarty</a> or as a simple PHP object for future use.\r\n<p>\r\nMagpieRSS currently makes no attempt to dictate how you want to format, or display your RSS feeds (a key failing amont existing solutions), and a perfectly valid use would be to just use the RSS parser (<code>rss_parse.inc</code>) to store items from a feed in a database.\r\nHowever Magpie assumes you\\'ll want to be displaying the results of parsing and documentation and examples both with templates, and vanilla PHP are coming soon.\r\n<P>\r\nAnd I need to go scare up some coffee, as there are a hell of a lot of run on sentences in this entry.\r\n<p>\r\nAlso, after I announced MagpieRSS on the RSS-DEV list, justin klubnik accouned <a href=\\\"http://fyuze.com/goodies/class.feed.html\\\">class.feed</a> another PHP RSS parser, and the only other one I\\'ve seen, that I would reccomend.\r\n</p>\r\n<p>\r\nUPDATE:  <a href=\\\"http://magpierss.sf.net\\\">Magpie is now hosted at SourceForge</a> \r\n</p>"
tags:
    - magpie
---

The alpha release of [my RSS parser for PHP](http://riseup.net/~kellan/magpie) is out. Called [Magpie](http://riseup.net/~kellan/magpie), it attempts to make including the results of an RSS feed in a PHP page simple, and straightforward.

To me, simple and straightforward means:

- not haveing to setup an external process (cron) to fetch feeds, but not adding the wait for fetching and parsing the RSS feeds to every page view
- not haveing to worry about which version of RSS you’re parsing, but not losing the richness of any version
- not haveing to negoiate PHP’s object syntax, when many people are still struggling with functions. (PHP’s fault, not theirs)

But as the my motivation for writing this was to parse [Protest.net’s event feeds](http://www.laughingmeme.org/archives/000039.html#000039) which use the <a href="">rss events module</a> I needed a solution that could handle [RSS 1.0 modules](http://purl.org/rss/1.0/modules/), and give me access to the underlying data, not just a pretty printed version of the feed. The solution. [MagpieRSS](http://riseup.net/~kellan/magpie) is an XML (expat) based RSS (RSS .9, RSS .91, RSS .93, RSS 1.0) parser for PHP. It automatically wraps the parser, and a cache system, behind a simple, one function interface.(though each piece is independent and can be used separately) Modules and namespaces are supported by being tooked into their own hashes, unrecognized tags are accepted on face value and included in the results. [Magpie](http://riseup.net/~kellan/magpie) returns its results as a PHP data structure, useful for iterating over, and passing to template systems like [Smarty](http://smarty.php.net) or as a simple PHP object for future use.

MagpieRSS currently makes no attempt to dictate how you want to format, or display your RSS feeds (a key failing amont existing solutions), and a perfectly valid use would be to just use the RSS parser (`rss_parse.inc`) to store items from a feed in a database. However Magpie assumes you’ll want to be displaying the results of parsing and documentation and examples both with templates, and vanilla PHP are coming soon.

And I need to go scare up some coffee, as there are a hell of a lot of run on sentences in this entry.

Also, after I announced MagpieRSS on the RSS-DEV list, justin klubnik accouned [class.feed](http://fyuze.com/goodies/class.feed.html) another PHP RSS parser, and the only other one I’ve seen, that I would reccomend.

UPDATE: [Magpie is now hosted at SourceForge](http://magpierss.sf.net)