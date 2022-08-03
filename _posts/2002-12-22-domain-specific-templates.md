---
id: 253
title: 'Domain Specific Templates'
date: '2002-12-22T10:39:46+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=253'
permalink: /2002/12/22/domain-specific-templates/
typo_id:
    - '251'
mt_id:
    - '261'
link_related:
    - ''
raw_content:
    - "<p>\r\nRasterweb, whilst \r\n<a href=\\\\\\\"http://zymm.com/raster/200212.html#12202002075144\\\\\\\">musing on PHP and\r\nPerl asked</a>:\r\n\r\n<blockquote>\r\n<em>\r\nI think the biggest strength of a system like Movable Type is that the\r\ntemplating system is so powerful and easy to use. Is there any PHP based\r\nCMS/weblogging tool that uses templates in a way even close to how Movable Type\r\ndoes?</em>\r\n</blockquote>\r\n\r\nTo which \r\n<a href=\\\\\\\"http://aaronland.info/weblog/archive/4762\\\\\\\">aaron responded:</a>\r\n\r\n<blockquote>\r\n<em>php does have a decent template system called \\\\\\'Smarty\\\\\\'</em>\r\n</blockquote>\r\n\r\nAnd I\\\\\\'ll be the first to step up and agree, \r\n<a href=\\\\\\\"http://smarty.php.net/\\\\\\\">Smarty</a> is a fine tool, it lacks the\r\namazing flexibility and elegance of \r\n<a href=\\\\\\\"http://www.tt2.org\\\\\\\">Template Toolkit</a>, but thats frosting, and it\r\nstacks up nicely compared to \r\n<a href=\\\\\\\"http://jakarta.apache.org/velocity/\\\\\\\">Velocity</a> and \r\n<a href=\\\\\\\"http://www.cheetahtemplate.org/\\\\\\\">Cheetah</a>. (<a href=\\\\\\\"http://laughingmeme.org/work/archives/001728.html\\\\\\\" title=\\\\\\\"Comparing Smarty and Template Toolkit\\\\\\\">more on this theme</a>)\r\n</p>\r\n<p>\r\nThat said, its nothing remotely like \r\n<a href=\\\\\\\"http://www.movabletype.org/docs/mtmanual_tags.html#template%20tags\\\\\\\">Moveable Type\\\\\\'s template system</a>, which I\r\nfind novel and nearly perfect.  As a programmer, with Template Toolkit at my\r\nfingers, I tend to think of a template as procedural language for describing\r\npresentation.  This is the same idea behind PHP and JSP.  \r\n</p>\r\n<p>\r\nMT does something\r\ntotally different, it defines a \r\n<a href=\\\\\\\"http://www.google.com/search?q=domain+specific+language\\\\\\\">domain specific</a> templating language for laying\r\nout a blog.  I\\\\\\'ve read about domain specific languages in school, but its not\r\nuntil seeing both how elegant, and powerful it can be did I finally understand\r\nthe appeal. (I\\\\\\'m still not willing to concede the point that Haskell is just\r\nplain weird)  This is the same idea as JSP\\\\\\'s Taglibs, but without the ugly\r\nsyntax.\r\n</p>\r\n<p>\r\nI occasionally run into the limits MT\\\\\\'s language, wishing I had a more flexible\r\nconditional, or not operator, but it makes more sense then any approach I\\\\\\'ve\r\nseen, and I\\\\\\'m trying to incorporate it into the Protest.net rewrite.\r\n</p>\r\n<p>\r\nps. PHP does have ImageMagick bindings, check out the new <a\r\nhref=\\\\\\\"http://magick.communityconnect.com/\\\\\\\">PHP Imagemagick extension</a>.\r\n</p>"
categories:
    - Uncategorized
tags:
    - dsl
    - 'moveable type'
    - php
    - smarty
    - templating
---

Rasterweb, whilst [musing on PHP and Perl asked](http://zymm.com/raster/200212.html#12202002075144):

> I think the biggest strength of a system like Movable Type is that the templating system is so powerful and easy to use. Is there any PHP based CMS/weblogging tool that uses templates in a way even close to how Movable Type does?

To which [aaron responded:](http://aaronland.info/weblog/archive/4762)

> php does have a decent template system called ‘Smarty’

And I’ll be the first to step up and agree, [Smarty](http://smarty.php.net/) is a fine tool, it lacks the amazing flexibility and elegance of [Template Toolkit](http://www.tt2.org), but thats frosting, and it stacks up nicely compared to [Velocity](http://jakarta.apache.org/velocity/) and [Cheetah](http://www.cheetahtemplate.org/). ([more on this theme](http://laughingmeme.org/work/archives/001728.html "Comparing Smarty and Template Toolkit"))

That said, its nothing remotely like [Moveable Type’s template system](http://www.movabletype.org/docs/mtmanual_tags.html#template%20tags), which I find novel and nearly perfect. As a programmer, with Template Toolkit at my fingers, I tend to think of a template as procedural language for describing presentation. This is the same idea behind PHP and JSP.

MT does something totally different, it defines a [domain specific](http://www.google.com/search?q=domain+specific+language) templating language for laying out a blog. I’ve read about domain specific languages in school, but its not until seeing both how elegant, and powerful it can be did I finally understand the appeal. (I’m still not willing to concede the point that Haskell is just plain weird) This is the same idea as JSP’s Taglibs, but without the ugly syntax.

I occasionally run into the limits MT’s language, wishing I had a more flexible conditional, or not operator, but it makes more sense then any approach I’ve seen, and I’m trying to incorporate it into the Protest.net rewrite.

ps. PHP does have ImageMagick bindings, check out the new [PHP Imagemagick extension](http://magick.communityconnect.com/).