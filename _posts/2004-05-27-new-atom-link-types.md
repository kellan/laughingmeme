---
id: 828
title: 'New Atom Link Types?'
date: '2004-05-27T09:51:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=828'
permalink: /2004/05/27/new-atom-link-types/
typo_id:
    - '826'
mt_id:
    - '2071'
link_related:
    - ''
raw_content:
    - "<p>\r\nArbitrary links which are self-describing as to their intent are incredibly cool, and I\\'m happy Atom offers them using the <a href=\\\"http://atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.4\\\">link constructs</a> plus rel attribute. (I was also <a href=\\\"http://laughingmeme.org/archives/000292.html\\\">a fan of RSS 1.0 mod_link</a>, but the only one apparently)   However Atom has some potentially problematic, or at least confusing limitations.\r\n</p>\r\n\n<p>\r\nLast week, when I was thinking about <a href=\\\"http://laughingmeme.org/archives/002040.html#002040\\\">Google leveraging the link construct to syndicate Usenet threading</a>, I was rebuffed by the Atom spec <a href=\\\"http://atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.4.1\\\">which claims</a>:\r\n<blockquote>\r\nThe \\\"rel\\\" attribute indicates the type of relationship that the link represents. Link constructs MUST have a rel attribute, whose value MUST be a string, and MUST be one of the values enumerated in the Atom API specification <a href=\\\"http://bitworking.org/projects/atom/draft-gregorio-09.html\\\">http://bitworking.org/projects/atom/draft-gregorio-09.html</a>.\r\n</blockquote>\r\n</p>\r\n<p>\r\nNow Mark is <a href=\\\"http://diveintomark.org/archives/2004/05/27/howto-atom-linkblog\\\">using the \\'via\\' type</a> and pointing to <a href=\\\"http://intertwingly.net/wiki/pie/LinkTagMeaning\\\">LinkTagMeaning</a> as the definite list of rel types.\r\n</p>\r\n<p>\r\n<h3>The Question</h3>\r\nSo my question is, <a href=\\\"http://intertwingly.net/wiki/pie/LinkTagMeaning\\\">LinkTagMeaning</a> is a wiki page, does this mean that the rel vocabulary for Atom is open for growth as long as it is documented on this page?\r\n</p>\r\n<p>\r\n(<em>an aside:  The problem with the theory behind trackbacks - that the web is just one large conversation and therefore we don\\'t need to enable comments - is that I could have written this question as two sentences in the context of Mark\\'s blog, but its 3 paragraphs over here</em>)\r\n</p>"
tags:
    - atom
    - design
    - links
    - rss
    - syndication
---

Arbitrary links which are self-describing as to their intent are incredibly cool, and I’m happy Atom offers them using the [link constructs](http://atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.4) plus rel attribute. (I was also [a fan of RSS 1.0 mod\_link](http://laughingmeme.org/archives/000292.html), but the only one apparently) However Atom has some potentially problematic, or at least confusing limitations.

Last week, when I was thinking about [Google leveraging the link construct to syndicate Usenet threading](http://laughingmeme.org/archives/002040.html#002040), I was rebuffed by the Atom spec [which claims](http://atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.4.1):

> The “rel” attribute indicates the type of relationship that the link represents. Link constructs MUST have a rel attribute, whose value MUST be a string, and MUST be one of the values enumerated in the Atom API specification <http://bitworking.org/projects/atom/draft-gregorio-09.html>.

Now Mark is [using the ‘via’ type](http://diveintomark.org/archives/2004/05/27/howto-atom-linkblog) and pointing to [LinkTagMeaning](http://intertwingly.net/wiki/pie/LinkTagMeaning) as the definite list of rel types.

### The Question

So my question is, [LinkTagMeaning](http://intertwingly.net/wiki/pie/LinkTagMeaning) is a wiki page, does this mean that the rel vocabulary for Atom is open for growth as long as it is documented on this page? (*an aside: The problem with the theory behind trackbacks – that the web is just one large conversation and therefore we don’t need to enable comments – is that I could have written this question as two sentences in the context of Mark’s blog, but its 3 paragraphs over here*)