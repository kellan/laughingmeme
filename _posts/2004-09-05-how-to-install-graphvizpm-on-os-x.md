---
id: 904
title: 'How to Install GraphViz.pm on OS X'
date: '2004-09-05T12:21:11+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=904'
permalink: /2004/09/05/how-to-install-graphvizpm-on-os-x/
typo_id:
    - '902'
mt_id:
    - '2364'
link_related:
    - ''
raw_content:
    - "<a href=\\\"http://search.cpan.org/dist/GraphViz/\\\">GraphViz.pm</a> is a Perl wrapper for the excellent <a href=\\\"http://www.graphviz.org/\\\">GraphViz</a> library.  Installation is easy, download <a href=\\\"http://www.pixelglow.com/graphviz/\\\">Graphviz for OS X</a>, which is adds a slick GUI on top of the command line tools, drag it to Applications, and add <code>/Applications/Graphviz.app/Contents/MacOS</code> to your <code>$PATH</code> (probably want to do this in your <code>.profile</code> so it persists).  Now <code>perl -MCPAN -e \\'install GraphViz\\'</code>, and your done.\n\nWhat I want (and I\\'m surprised doesn\\'t exist) is a Graphiz to XHTML/CSS renderer, for small to medium sized graphs seems obvious."
tags:
    - networks
    - visualization
---

[GraphViz.pm](http://search.cpan.org/dist/GraphViz/) is a Perl wrapper for the excellent [GraphViz](http://www.graphviz.org/) library. Installation is easy, download [Graphviz for OS X](http://www.pixelglow.com/graphviz/), which is adds a slick GUI on top of the command line tools, drag it to Applications, and add `/Applications/Graphviz.app/Contents/MacOS` to your `$PATH` (probably want to do this in your `.profile` so it persists). Now `perl -MCPAN -e 'install GraphViz'`, and your done.

What I want (and I’m surprised doesn’t exist) is a Graphiz to XHTML/CSS renderer, for small to medium sized graphs seems obvious.