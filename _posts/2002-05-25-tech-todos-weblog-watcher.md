---
id: 38
title: 'Tech Todos – Weblog Watcher.'
date: '2002-05-25T15:18:06+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=38'
permalink: /2002/05/25/tech-todos-weblog-watcher/
typo_id:
    - '36'
mt_id:
    - '34'
link_related:
    - ''
raw_content:
    - "WeblogWatcher - for flexible tracking of a weblog watch list\r\n\r\n\tAgain this is something I would rather find then build.  I through together\r\n\ta simple python script to parse <a\r\n\thref=\\\"http://www.weblogs.com/changes.xml\\\">weblogs.com\\'s xml</a> and produce\r\n\ta list of the most recently updated weblogs <a\r\n\thref=\\\"http://protest.net/~kellan/recent_weblogs.html\\\">is a simple html list.</a>\r\n\t<p>\r\n\tHowever much of what I want to be watching doesn\\'t ping weblogs.com, so any\r\n\ttool that would be sufficient would need to have other means of finding out\r\n\twhether a webpage has been updated.\r\n\t<p>\r\n\tThe features I\\'m thinking about are:\r\n\t<ul>\r\n\t<li>Check for updates via: weblogs.com, RSS feeds, Syndic8\\'s web services, or\r\n\ta simple MD5 hash of the webpage.  Hopefully watch methods would be easy to\r\n\tadd with a simple plugin architecture.\r\n\t<li>Driven by a config file of sites to watch, and watch method.\r\n\t<li>Recently updated information is stored persistently.\r\n\t<li>A tool for turning the information into a presentable form, should be\r\n\taccept templates as a command line argument so that the same application,\r\n\tand data pool can be used to generate a variety of displays. (which is how\r\n\tthe script that generates the <a href=\\\"http://www.indymedia.org\\\">IMC</a>\r\n\tfeatures newswire works, and it works well)\r\n\t</ul>"
---

WeblogWatcher – for flexible tracking of a weblog watch list

```
Again this is something I would rather find then build.  I through together
a simple python script to parse <a
href="http://www.weblogs.com/changes.xml">weblogs.com's xml</a> and produce
a list of the most recently updated weblogs <a
href="http://protest.net/~kellan/recent_weblogs.html">is a simple html list.</a>
<p>
However much of what I want to be watching doesn't ping weblogs.com, so any
tool that would be sufficient would need to have other means of finding out
whether a webpage has been updated.
<p>
The features I'm thinking about are:
<ul>
<li>Check for updates via: weblogs.com, RSS feeds, Syndic8's web services, or
a simple MD5 hash of the webpage.  Hopefully watch methods would be easy to
add with a simple plugin architecture.
<li>Driven by a config file of sites to watch, and watch method.
<li>Recently updated information is stored persistently.
<li>A tool for turning the information into a presentable form, should be
accept templates as a command line argument so that the same application,
and data pool can be used to generate a variety of displays. (which is how
the script that generates the <a href="http://www.indymedia.org">IMC</a>
features newswire works, and it works well)
</ul>

```