---
id: 888
title: 'Error Pages'
date: '2004-08-22T19:27:46+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=888'
permalink: /2004/08/22/error-pages/
typo_id:
    - '886'
mt_id:
    - '2311'
link_related:
    - ''
raw_content:
    - "I assume everyone does this but I\\'ll blog it anyway.  One of the best ways to find out the technology powering a well designed site is to generate an error condition.  \n\nMost sites litter clues as to their implementation all over the place, must to consternation of the <a href=\\\"http://www.w3.org/Provider/Style/URI\\\">Cool URIs</a> school of thought, but its an interesting paradox that the sites that are the most interesting, and best implemented are the ones that are most silent about their underlying technology.  <code>wget -S http://example.org</code> can sometimes tell you a bit, but you really need an error message to uncover the deep dark secrets.\n\nI was reminded of this quite by accident today, when I ran into an error on <a href=\\\"http://del.icio.us\\\">del.icio.us</a>.  The answer is <a href=\\\"http://www.masonhq.com/\\\">Mason</a>, which I must say raises my estimation of Mason considerably.  Now if only it was <a href=\\\"http://lists.burri.to/pipermail/delicious-discuss/2004-August/000780.html\\\">open source</a>.\n\n<b>update (2004/9/15):</b> or <a href=\\\"http://www.wormus.com/aaron/stories/2004/09/15/flickr-runs-php.html\\\">flickr runs PHP and Smarty</a>"
tags:
    - debugging
    - perl
    - php
    - web
---

I assume everyone does this but I’ll blog it anyway. One of the best ways to find out the technology powering a well designed site is to generate an error condition.

Most sites litter clues as to their implementation all over the place, must to consternation of the [Cool URIs](http://www.w3.org/Provider/Style/URI) school of thought, but its an interesting paradox that the sites that are the most interesting, and best implemented are the ones that are most silent about their underlying technology. `wget -S http://example.org` can sometimes tell you a bit, but you really need an error message to uncover the deep dark secrets.

I was reminded of this quite by accident today, when I ran into an error on [del.icio.us](http://del.icio.us). The answer is [Mason](http://www.masonhq.com/), which I must say raises my estimation of Mason considerably. Now if only it was [open source](http://lists.burri.to/pipermail/delicious-discuss/2004-August/000780.html).

**update (2004/9/15):** or [flickr runs PHP and Smarty](http://www.wormus.com/aaron/stories/2004/09/15/flickr-runs-php.html)