---
id: 321
title: 'CPANs RSS sucks'
date: '2003-02-17T15:02:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=321'
permalink: /2003/02/17/cpans-rss-sucks/
typo_id:
    - '319'
mt_id:
    - '409'
link_related:
    - ''
raw_content:
    - "<p>\r\nWhy does \r\n<a href=\\\"http://search.cpan.org/recent.rdf\\\">CPAN\\'s RSS feed</a> suck so much?  \r\n</p>\r\n<p>\r\nIt only lists the module name, and the link, even though the <a href=\\\"http://search.cpan.org/recent\\\">recent uploads page</a>, also lists a one line description.  Not only would it be trivial to include the one line description, almost every module on CPAN has all that cool POD stuff that would make it trivial to include a more detailed description (hint: the contents of <code>=head1 DESCRIPTION</code>), plus why not stick the HTML rendering of the full pod into &lt;content:encoded&gt;? (its looks like with version 2.0 the \r\n<a href=\\\"http://www.purl.org/rss/1.0/modules/content/\\\">content module</a> lost the ability to specify a format, or we could simply stick the raw pod in, and see what happens)\r\n</p>\r\n<p>\r\nAnd the file is named \\\"recent.rdf\\\", even though its RSS 0.91, hell they might be opening themselves up for a libel suit from Userland if the W3C doesn\\'t get them first.\r\n</p>\r\n<p>\r\nJust starting to catch up from a weekend without \r\n<a href=\\\"http://www.nongnu.org/straw/\\\">Straw</a>. (is anyone else alarmed that an RSS aggregator is the 2nd Google result for \\\"straw\\\"?)\r\n</p>\r\n<p>\r\n<b>update:</b> I\\'m <a href=\\\"http://laughingmeme.org/archives/000498.html\\\">maintaining</a> a <a href=\\\"http://laughingmeme.org/feed/cpan_recent.rdf\\\">scraped CPAN RSS feed</a>.\r\n</p>"
tags:
    - cpan
    - rss
---

Why does [CPAN’s RSS feed](http://search.cpan.org/recent.rdf) suck so much?

It only lists the module name, and the link, even though the [recent uploads page](http://search.cpan.org/recent), also lists a one line description. Not only would it be trivial to include the one line description, almost every module on CPAN has all that cool POD stuff that would make it trivial to include a more detailed description (hint: the contents of `=head1 DESCRIPTION`), plus why not stick the HTML rendering of the full pod into &lt;content:encoded&gt;? (its looks like with version 2.0 the [content module](http://www.purl.org/rss/1.0/modules/content/) lost the ability to specify a format, or we could simply stick the raw pod in, and see what happens)

And the file is named “recent.rdf”, even though its RSS 0.91, hell they might be opening themselves up for a libel suit from Userland if the W3C doesn’t get them first.

Just starting to catch up from a weekend without [Straw](http://www.nongnu.org/straw/). (is anyone else alarmed that an RSS aggregator is the 2nd Google result for “straw”?)

**update:** I’m [maintaining](http://laughingmeme.org/archives/000498.html) a [scraped CPAN RSS feed](http://laughingmeme.org/feed/cpan_recent.rdf).