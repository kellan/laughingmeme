---
id: 709
title: 'Sourceforges fsockopen() delaying Magpie "blog"'
date: '2004-01-17T22:47:22+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=709'
permalink: /2004/01/17/sourceforges-fsockopen-delaying-magpie-blog/
typo_id:
    - '707'
mt_id:
    - '1648'
link_related:
    - ''
raw_content:
    - "<p>\nI\\'m bummed.  I just spent a couple of hours putting together a \\\"blog\\\" for <a href=\\\"http://magpierss.sf.net\\\">Magpie</a>; something that would pull the <a href=\\\"http://laughingmeme.org/magpierss.rdf\\\">MapieRSS feed</a> from <a href=\\\"http://laughingmeme.org\\\">LM</a>, and tie together a few other feeds.  However it looks like Sourceforge\\'s installation of PHP isn\\'t able to open a socket to a non-Sourceforge domain.  So it is living at the temporary location of <a href=\\\"/magpie_blog\\\">Magpie Blog</a> until I get things straightened out with Sourceforge.\n</p>\n<p>\n<h3>Use Your Own Code</h3>\nIt was an interesting experience putting together the page.  It is relatively simple, nothing fancy like Steve\\'s <a href=\\\"http://minutillo.com/steve/feedonfeeds/\\\">Feed on Feeds</a>, or all the other cool projects that use Magpie, but it was farther then I had taken the code.  So far most of my Magpie using scripts were of the toy variety for educational purposes. (and in truth if I had just been writing this for myself I would have used Smarty, and structured the code a little differently)\n</p>\n<p>\nI learned that the tradeoffs I made between ease of use, and object orientation annoy me, the end-using coder.  I want a layer between <code>fetch_rss()</code> and the parser, something that can provide access to status and error messages in an OO manner. Use of <code>magpie_error()</code> can get pretty clunky when parsing a large number of feeds on the same page.\n</p>\n<p>\n<h3>Mapgie Blog, and Example RSS Parsing/Formatting</h3>\nThe blog is supposed to be an information space, something to encourage people to get the lastest Magpie news, but it is also supposed to be a demonstration of one way (certainly not the \\\"one true way\\\") of using Magpie.  In that spirit it provides examples of:\n<ul>\n<li>How to parse Sourceforge project feeds</li>\n<li>Parse <a href=\\\"http://www.undergroundlondon.com/weather/\\\">world weather RSS feeds</a>. (one of several good weather via RSS sources.  I choose it because I wanted a forecast format.)</li>\n<li>Pulling in the RSS for the <a href=\\\"http://del.icio.us/tag/php\\\">del.icio.us metatag \\'php\\'</a>. (jeff v.  show hows to <a href=\\\"http://veen.com/jeff/delicious-tutorial.html\\\">parse del.icio.us</a> using magpie-powered <a href=\\\"http://www.feedroll.com/rssviewer/\\\">feedroll</a>, while bill b. <a href=\\\"http://weblog.mrbill.net/how2del/\\\">has a pure Magpie example</a>)</li>\n<li>How to Parse Dublin Core dates, display a content:encoded field, and other namespace fun.</li>\n</ul>\nSource is all available, bottom right.\n</p>\n<p>\n<h3>CSS Composition</h3>\nThis is also my first pure CSS layout.  In it I use a technique I\\'ve been playing with at work where I split my CSS rules into structural, and styling (color really).  The rounded (if you\\'re using Gecko) boxes in the right hand column are an example of that.  The box is laid out by the .roundbox class, while color is applied separately like so <code>&lt;div class=\\\"roundbox peach\\\"&gt;</code>.  I think is very cool, and you can get some really interesting effects leveraging it, and CSS background images.  I\\'m surprised more people aren\\'t using it.\n</p>\n<p>\nLastly, it is kind of funny, once I publish this, it will show up on the <a href=\\\"/magpie_blog/\\\">Magpie Blog</a> become a meta-entry.  So concludes the one day a month or so I let my self spend just futzing with Magpie.\n</p>"
tags:
    - magpie
---

I’m bummed. I just spent a couple of hours putting together a “blog” for [Magpie](http://magpierss.sf.net); something that would pull the [MapieRSS feed](http://laughingmeme.org/magpierss.rdf) from [LM](http://laughingmeme.org), and tie together a few other feeds. However it looks like Sourceforge’s installation of PHP isn’t able to open a socket to a non-Sourceforge domain. So it is living at the temporary location of [Magpie Blog](/magpie_blog) until I get things straightened out with Sourceforge.

### Use Your Own Code

It was an interesting experience putting together the page. It is relatively simple, nothing fancy like Steve’s [Feed on Feeds](http://minutillo.com/steve/feedonfeeds/), or all the other cool projects that use Magpie, but it was farther then I had taken the code. So far most of my Magpie using scripts were of the toy variety for educational purposes. (and in truth if I had just been writing this for myself I would have used Smarty, and structured the code a little differently) I learned that the tradeoffs I made between ease of use, and object orientation annoy me, the end-using coder. I want a layer between `fetch<em>rss()</em>` and the parser, something that can provide access to status and error messages in an OO manner. Use of `magpieerror()` can get pretty clunky when parsing a large number of feeds on the same page.

### Mapgie Blog, and Example RSS Parsing/Formatting

The blog is supposed to be an information space, something to encourage people to get the lastest Magpie news, but it is also supposed to be a demonstration of one way (certainly not the “one true way”) of using Magpie. In that spirit it provides examples of: - How to parse Sourceforge project feeds
- Parse [world weather RSS feeds](http://www.undergroundlondon.com/weather/). (one of several good weather via RSS sources. I choose it because I wanted a forecast format.)
- Pulling in the RSS for the [del.icio.us metatag ‘php’](http://del.icio.us/tag/php). (jeff v. show hows to [parse del.icio.us](http://veen.com/jeff/delicious-tutorial.html) using magpie-powered [feedroll](http://www.feedroll.com/rssviewer/), while bill b. [has a pure Magpie example](http://weblog.mrbill.net/how2del/))
- How to Parse Dublin Core dates, display a content:encoded field, and other namespace fun.

Source is all available, bottom right. ### CSS Composition

This is also my first pure CSS layout. In it I use a technique I’ve been playing with at work where I split my CSS rules into structural, and styling (color really). The rounded (if you’re using Gecko) boxes in the right hand column are an example of that. The box is laid out by the .roundbox class, while color is applied separately like so `<div class="roundbox peach">`. I think is very cool, and you can get some really interesting effects leveraging it, and CSS background images. I’m surprised more people aren’t using it. Lastly, it is kind of funny, once I publish this, it will show up on the [Magpie Blog](/magpie_blog/) become a meta-entry. So concludes the one day a month or so I let my self spend just futzing with Magpie.