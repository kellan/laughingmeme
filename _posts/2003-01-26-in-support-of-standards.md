---
id: 291
title: 'In support of standards'
date: '2003-01-26T09:02:50+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=291'
permalink: /2003/01/26/in-support-of-standards/
typo_id:
    - '289'
mt_id:
    - '298'
link_related:
    - ''
raw_content:
    - "<p>\r\n<a href=\\\"http://diveintomark.org\\\">Mark Pilgrim</a> is dangerous; a good writer and deep thinker with a mind blowing amount of \r\n<a href=\\\"http://www.craphound.com/down/\\\" title=\\\"is there a shorter defintion of whuffie somewhere?\\\">whuffie</a>.  So when he starts talking about <a href=\\\"http://www.xml.com/cs/user/view/cs_msg/966\\\">competitive advantage</a> of ignoring standards, unfortunately people hear more then I think he said.  There seems to an anti-standards wind blowing through the blogosphere this morning, and its kind of alarming.  I would like to think about alternatives.\r\n</p>\r\n<p>\r\n<h3>Capitalist Mindset</h3>\r\nIn ensuring discussion all sorts of wonderfully capitalist metaphors about accured interest, natural costs, and competive advantage have floated to the surface.  So here are a couple of more, \r\n<a href=\\\"http://perl-rss.sourceforge.net/\\\">XML::RSS</a> has an overwhelming mindshare, and namespace lockout in the Perl community, giving us a virtual monopoly.  Its true \r\n<a href=\\\"http://www.disobey.com/amphetadesk/\\\">Amphetadesk</a>, an RSS aggregator written in Perl, chose to go its owny way, and perhaps that proves Mark\\'s point for the niche market of aggregators.(which is a loud, and very profile market I give you that)  But there is still a lot of demand from people who aren\\'t aggregators and I feel like XML::RSS should be able to do something with its market power.  Think Microsoft, but in a good way :)\r\n</p>\r\n<p>\r\n<h3>A few thoughts on making things better</h3>\r\n<ol>\r\n<li>Help people produce valid feeds.  XML::RSS was one of the biggest offenders in this regard.  It actively worked against people, unescaping their HTML entities, and not re-escaping this.  This has been fixed in the next release.\r\n<br />&nbsp;\r\n</li>\r\n\r\n<li>Give helpful error messages when parsing fails.  In the long term it would be nice to port the <a href=\\\"http://feeds.archive.org/validator/\\\">RSS Validator</a> to be part of the toolkit to tell people <b>exactly</b> whats wrong with the feed.  Feed consumers might be more outspoken if they knew why the feed broke and whose fault it was.  Despite <a href=\\\"http://laughingmeme.org/archives/000290.html#000290\\\">my minor gripes</a> about it, the RSS Validator is a very powerful tool.\r\n<br />&nbsp;\r\n</li>\r\n<li>\r\nUntil we port the Validator, perhaps when RSS hits a parsing error, we can say.\r\n<blockquote>\r\n<code>RSS parsing error on line 345, column 12</code> [like we do now, plus]\r\n<br />\r\n<code>For more info on why parsing failed see: http://feeds.archive.org/validator/check?url=http://someurl/index.rdf\r\n</blockquote>\r\n</li>\r\n<li>\r\nNow that XML::RSS has a <a href=\\\"http://perl-rss.sf.net\\\">webpage</a>, we should be putting up articles, and links to articles showing best practice, and talking about pitfalls.\r\n<br />&nbsp;\r\n</li>\r\n<li>\r\nOther ideas?\r\n</li>\r\n</ol>\r\n</p>\r\n<p>\r\n<h3>What are the toolkits?</h3>\r\nWhat are people using to parse RSS these days?  Python has Mark N.\\'s <a href=\\\"http://www.mnot.net/python/RSS.py\\\">RSS.py</a> and Mark P.\\'s <a href=\\\"http://diveintomark.org/projects/rss_parser/\\\">rss_parsrer</a>, PHP has hundreds of solutions, and lots of doing it by hand, but I think <a href=\\\"http://php.resourceindex.com/detail/00884.html\\\">PHP-RSS</a> was close to a standard, and I think <a href=\\\"http://magpierss.sf.net\\\">MagpieRSS</a> is gaining acceptance.  What do people use in Java?  In C?  In those other languages?  What does \r\n<a href=\\\"http://ranchero.com\\\">NetNewsWire</a> use?  And all these Windows aggregators?\r\n</p>\r\n<p>\r\nYup still, geeking out on RSS despite what I said yesterday. \r\n</p>"
tags:
    - mark.pilgrim
    - rss
    - standards
    - syndication
---

[Mark Pilgrim](http://diveintomark.org) is dangerous; a good writer and deep thinker with a mind blowing amount of [whuffie](http://www.craphound.com/down/ "is there a shorter defintion of whuffie somewhere?"). So when he starts talking about [competitive advantage](http://www.xml.com/cs/user/view/cs_msg/966) of ignoring standards, unfortunately people hear more then I think he said. There seems to an anti-standards wind blowing through the blogosphere this morning, and its kind of alarming. I would like to think about alternatives.

### Capitalist Mindset

In ensuring discussion all sorts of wonderfully capitalist metaphors about accured interest, natural costs, and competive advantage have floated to the surface. So here are a couple of more, [XML::RSS](http://perl-rss.sourceforge.net/) has an overwhelming mindshare, and namespace lockout in the Perl community, giving us a virtual monopoly. Its true [Amphetadesk](http://www.disobey.com/amphetadesk/), an RSS aggregator written in Perl, chose to go its owny way, and perhaps that proves Mark’s point for the niche market of aggregators.(which is a loud, and very profile market I give you that) But there is still a lot of demand from people who aren’t aggregators and I feel like XML::RSS should be able to do something with its market power. Think Microsoft, but in a good way ![:)](http://lm.local/wp-includes/images/smilies/simple-smile.png)### A few thoughts on making things better

1. Help people produce valid feeds. XML::RSS was one of the biggest offenders in this regard. It actively worked against people, unescaping their HTML entities, and not re-escaping this. This has been fixed in the next release.
2. Give helpful error messages when parsing fails. In the long term it would be nice to port the [RSS Validator](http://feeds.archive.org/validator/) to be part of the toolkit to tell people **exactly** whats wrong with the feed. Feed consumers might be more outspoken if they knew why the feed broke and whose fault it was. Despite [my minor gripes](http://laughingmeme.org/archives/000290.html#000290) about it, the RSS Validator is a very powerful tool.
3. Until we port the Validator, perhaps when RSS hits a parsing error, we can say. > `RSS parsing error on line 345, column 12` \[like we do now, plus\]   
    > `For more info on why parsing failed see: http://feeds.archive.org/validator/check?url=http://someurl/index.rdf`
4. Now that XML::RSS has a [webpage](http://perl-rss.sf.net), we should be putting up articles, and links to articles showing best practice, and talking about pitfalls.
5. Other ideas?

### What are the toolkits?

What are people using to parse RSS these days? Python has Mark N.'s [RSS.py](http://www.mnot.net/python/RSS.py) and Mark P.'s [rss\_parsrer](http://diveintomark.org/projects/rss_parser/), PHP has hundreds of solutions, and lots of doing it by hand, but I think [PHP-RSS](http://php.resourceindex.com/detail/00884.html) was close to a standard, and I think [MagpieRSS](http://magpierss.sf.net) is gaining acceptance. What do people use in Java? In C? In those other languages? What does [NetNewsWire](http://ranchero.com) use? And all these Windows aggregators? Yup still, geeking out on RSS despite what I said yesterday.