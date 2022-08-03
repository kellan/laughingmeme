---
id: 716
title: 'Experimental Magpie Support for Atom'
date: '2004-01-24T03:00:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=716'
permalink: /2004/01/24/experimental-magpie-support-for-atom/
typo_id:
    - '714'
mt_id:
    - '1676'
link_related:
    - ''
raw_content:
    - "<p>\r\nYou are officially entering <a href=\\\"http://laughingmeme.org/archives/000918.html#000918\\\">wet cat territory.</a>\r\n</p>\r\n<p>\r\nInspired by <a href=\\\"http://www.papascott.de/2004/01/03/2785.php\\\">Scott\\'s patch</a>, the <a href=\\\"http://new.blogger.com/news_archive.pyra?which=2004_01_01_archive.html#107482061490785955\\\">million or so sites that only produce Atom</a>, and a couple of requests, I hacked experimental support for parsing <a href=\\\"http://www.intertwingly.net/wiki/pie/FrontPage\\\">Atom</a> into <a href=\\\"http://magpierss.sf.net\\\">Magpie</a>.\r\n</p>\n<p>\r\nTaking a page from <a href=\\\"http://diveintomark.org\\\">Mark\\'s</a> <a href=\\\"http://diveintomark.org/projects/feed_parser/\\\">Feed Parser</a>, it should be relatively transparent to move between parsing an RSS feed, and parsing an Atom feed.  Specifically\r\n<ul>\r\n<li>Atom feed elements and RSS channel elements are both accessible via <code>$feed-&gt;channel[$element_name]</code>.</li>\r\n<li>Atom link elements that point to an alternative html version (i.e. those with the attribute <code>rel=\\\"alternative\\\"</code>) are treated as being equivalent to RSS\\'s link elements and are accessible via <code>$feed-&gt;channel[\\'link\\']</code> and <code>$item[\\'link\\']</code></li>\r\n<li>channel/description is mapped to channel/tagline and channel/tagline is mapped to channel/description</li>\r\n<li>item/description is mapped to item/summary and item/summary is mapped to item/description</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<h3>\r\nNamespaces and Atom\\'s item/content field\r\n</h3>\r\nMagpie handles namespaces by adding an array to an item using the namespace prefix as the key.  For example and item\\'s &lt;dc:subject&gt; (aka item/dc/subject) field is available at <code>$item[\\'dc\\'][\\'subject\\']</code>.  This has never been ideal, but it is simple, from both the parser\\'s and the user\\'s perspective.    This causes a small conflict between RSS\\'s item/content/encoded field and Atom\\'s item/content field.  I\\'ve chosen to make Atom\\'s item/content field available at <code>$item[\\'atom_content\\']</code>.  If the content field is of type xml, I flatten it to string instead of making the parse tree available. (I don\\'t think anyone using Magpie wants the parse tree).  Like I said, wet cat country.  Also, item/content/encoded and item/atom_encoded are mapped to each other. \r\n</p>\r\n<p>\r\n<h3>Nested Elements</h3>\r\nMagpie has never handled elements nested more then one level deep.  While this could have potentially been a problem while parsing RSS, no one has mentioned it yet.  However Atom even at its simplest has a number of nested elements, so just ignoring them wasn\\'t going to work.  Here is what I do, this:\r\n<pre>\r\n  &lt;author&gt;\r\n    &lt;name&gt;Mark Pilgrim&lt;/name&gt;\r\n    &lt;url&gt;http://diveintomark.org/&lt;/url&gt;\r\n    &lt;email&gt;f8dy@diveintomark.org&lt;/email&gt;\r\n  &lt;/author&gt;\r\n\r\n</pre>\r\nBecomes:\r\n<pre>\r\n[author_name] => Mark Pilgrim\r\n[author_url] => http://diveintomark.org/\r\n[author_email] => f8dy@diveintomark.org\r\n</pre>\r\n\r\nLastly there are two new methods <code>$feed->is_rss()</code> and <code>$rss->is_atom()</code> which return false when false, and return the version number of the feed when true (e.g. for Atom will likely return \\'0.3\\', for RSS could return \\'1.0\\', \\'2.0\\', \\'0.91\\', \\'0.93b71\\', or a variety of other values)\r\n</p>\r\n<p>\r\n<h3>Getting Started.</h3>\r\n\r\nI think that is everything you need to know to get started playing.  I\\'ll do a release complete with tarball once Sourceforge\\'s CVS servers are back online, in the meantime you can download <a href=\\\"/rss_parse.inc.with.atom\\\">rss_parse.inc.with.atom</a>, rename it rss_parser.inc, and it should be a drop in replacement for your current rss_parser.inc.  All the documentation at the beginning of the file is all of out of date, but the inline comments have been updated, and you have this blog entry. (as an alternative, you might want to look at using Aaron\\'s <a href=\\\"http://aaronland.info/weblog/2004/01/23/5373/\\\">Atom to RSS stylesheets</a>.)\r\n</p>\r\n<p>\r\n<h3>Caveat</h3>\r\nI tested against only two Atom feeds, <a href=\\\"http://saladwithsteve.com/\\\">Steve\\'s</a> which I took to be representative of Blogger\\'s output, and <a href=\\\"http://diveintomark.org/xml/atom.xml\\\">Mark\\'s</a> which I assume is an example of best practices per Atom 0.3.  There was a enough variation between them that I don\\'t feel it was a horrible sampling.  Also I only tested against an RSS 1.0 feed to make sure that RSS parsing hadn\\'t broken, but again, I\\'m feeling pretty good about it.\r\n</p>\r\n<p>\r\n<h3>Next Steps</h3>\r\n\r\nThe code is still kind of hoary, and in need of a major refactoring.  Also I\\'m not sure how happy I am with this whole solution, it is partially a proof of concept.  So if your interested in parsing parsing Atom with PHP, or have thoughts on Magpie and Atom, take it for a spin, give me some feedback, and we\\'ll see where it goes.\r\n</p>\r\n<p>\r\n<h3>Thoughts on Atom</h3>\r\n\r\nI\\'m still not as excited about Atom as I am about RSS.  It feels like a dead end format designed for one, and one thing only, blogs.  I guess its a good idea to do one thing, and do it well, but I\\'m not sure I would have chosen blogs as my one thing to do well in life.  Also little things like in channel the summary field is called tagline is just annoying, and reminescinent of some of RSS\\'s worse descision. The various modes, and types of fields make it hard to write a parser which is \\\"correct\\\" (as opposed to us writing <acronym title=\\\"Really Stupid Support for Atom\\\">RSAS</acronym> parsers)\r\n</p>\r\n<p>\r\n<b>update:</b> Magpierss-0.6a (alpha) is <a href=\\\"http://sourceforge.net/project/showfiles.php?group_id=55691\\\">available for download</a>.  This release adds the above support for Atom, as well as the <a href=\\\"http://laughingmeme.org/archives/001644.html\\\">support borken webservers</a> patch.   This is <b>not</b> the fabled 0.6 release that was going to be a total rewrite of the parser for better namespace support, that is still vapor.\r\n</p>\r\n<p>\r\n<b>udpate:</b> <a href=\\\"http://laughingmeme.org/archives/001973.html\\\">MagpieRSS 0.61 (not alpha)</a> is out with Atom support.\r\n</p>"
tags:
    - atom
    - magpie
    - php
    - rss
    - syndication
---

You are officially entering [wet cat territory.](http://laughingmeme.org/archives/000918.html#000918)

Inspired by [Scott’s patch](http://www.papascott.de/2004/01/03/2785.php), the [million or so sites that only produce Atom](http://new.blogger.com/news_archive.pyra?which=2004_01_01_archive.html#107482061490785955), and a couple of requests, I hacked experimental support for parsing [Atom](http://www.intertwingly.net/wiki/pie/FrontPage) into [Magpie](http://magpierss.sf.net).

Taking a page from [Mark’s](http://diveintomark.org) [Feed Parser](http://diveintomark.org/projects/feed_parser/), it should be relatively transparent to move between parsing an RSS feed, and parsing an Atom feed. Specifically

- Atom feed elements and RSS channel elements are both accessible via `$feed->channel[$element<em>name]</em>`.
- Atom link elements that point to an alternative html version (i.e. those with the attribute `rel="alternative"`) are treated as being equivalent to RSS’s link elements and are accessible via `$feed->channel['link']` and `$item['link']`
- channel/description is mapped to channel/tagline and channel/tagline is mapped to channel/description
- item/description is mapped to item/summary and item/summary is mapped to item/description

### Namespaces and Atom’s item/content field 

Magpie handles namespaces by adding an array to an item using the namespace prefix as the key. For example and item’s &lt;dc:subject&gt; (aka item/dc/subject) field is available at `$item['dc']['subject']`. This has never been ideal, but it is simple, from both the parser’s and the user’s perspective. This causes a small conflict between RSS’s item/content/encoded field and Atom’s item/content field. I’ve chosen to make Atom’s item/content field available at `$item['atomcontent']`. If the content field is of type xml, I flatten it to string instead of making the parse tree available. (I don’t think anyone using Magpie wants the parse tree). Like I said, wet cat country. Also, item/content/encoded and item/atom\_encoded are mapped to each other. ### Nested Elements

Magpie has never handled elements nested more then one level deep. While this could have potentially been a problem while parsing RSS, no one has mentioned it yet. However Atom even at its simplest has a number of nested elements, so just ignoring them wasn’t going to work. Here is what I do, this: ```

  <author>
    <name>Mark Pilgrim</name>
    <url>http://diveintomark.org/</url>
    <email>f8dy@diveintomark.org</email>
  </author>

<p></p>
```

Becomes: ```

[author<em>name] => Mark Pilgrim
[author</em>url] => http://diveintomark.org/
[author_email] => f8dy@diveintomark.org
```

Lastly there are two new methods `$feed->is<em>rss()</em>` and `$rss->isatom()` which return false when false, and return the version number of the feed when true (e.g. for Atom will likely return ‘0.3’, for RSS could return ‘1.0’, ‘2.0’, ‘0.91’, ‘0.93b71’, or a variety of other values)

### Getting Started.

I think that is everything you need to know to get started playing. I’ll do a release complete with tarball once Sourceforge’s CVS servers are back online, in the meantime you can download [rss*parse.inc.with.atom*](/rss_parse.inc.with.atom), rename it rssparser.inc, and it should be a drop in replacement for your current rss\_parser.inc. All the documentation at the beginning of the file is all of out of date, but the inline comments have been updated, and you have this blog entry. (as an alternative, you might want to look at using Aaron’s [Atom to RSS stylesheets](http://aaronland.info/weblog/2004/01/23/5373/).)

### Caveat

I tested against only two Atom feeds, [Steve’s](http://saladwithsteve.com/) which I took to be representative of Blogger’s output, and [Mark’s](http://diveintomark.org/xml/atom.xml) which I assume is an example of best practices per Atom 0.3. There was a enough variation between them that I don’t feel it was a horrible sampling. Also I only tested against an RSS 1.0 feed to make sure that RSS parsing hadn’t broken, but again, I’m feeling pretty good about it. ### Next Steps

The code is still kind of hoary, and in need of a major refactoring. Also I’m not sure how happy I am with this whole solution, it is partially a proof of concept. So if your interested in parsing parsing Atom with PHP, or have thoughts on Magpie and Atom, take it for a spin, give me some feedback, and we’ll see where it goes.

### Thoughts on Atom

I’m still not as excited about Atom as I am about RSS. It feels like a dead end format designed for one, and one thing only, blogs. I guess its a good idea to do one thing, and do it well, but I’m not sure I would have chosen blogs as my one thing to do well in life. Also little things like in channel the summary field is called tagline is just annoying, and reminescinent of some of RSS’s worse descision. The various modes, and types of fields make it hard to write a parser which is “correct” (as opposed to us writing <acronym title="Really Stupid Support for Atom">RSAS</acronym> parsers)

**update:** Magpierss-0.6a (alpha) is [available for download](http://sourceforge.net/project/showfiles.php?group_id=55691). This release adds the above support for Atom, as well as the [support borken webservers](http://laughingmeme.org/archives/001644.html) patch. This is **not** the fabled 0.6 release that was going to be a total rewrite of the parser for better namespace support, that is still vapor.

**udpate:** [MagpieRSS 0.61 (not alpha)](http://laughingmeme.org/archives/001973.html) is out with Atom support.