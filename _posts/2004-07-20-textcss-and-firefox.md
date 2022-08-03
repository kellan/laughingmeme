---
id: 864
title: 'text/css and Firefox'
date: '2004-07-20T12:02:54+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=864'
permalink: /2004/07/20/textcss-and-firefox/
typo_id:
    - '862'
mt_id:
    - '2212'
link_related:
    - ''
raw_content:
    - "<p>\nIf your stylesheet is inexplicably failing to load in Firefox, but working just fine in IE (perish the thought), you might check the Javascript console to see if you\\'re seeing something like:\n\n<blockquote>\nError: The stylesheet http://advocacydev.org/blogs/planet.css was not loaded because its MIME type, \\\"text/plain\\\", is not \\\"text/css\\\".\n</blockquote>\n</p>\n<p>\nI couldn\\'t begin to speculate why the Apache on this box doesn\\'t have text/css in the mime.types file.   All I can tell you is it\\'s a FreeBSD box.\n</p>"
---

If your stylesheet is inexplicably failing to load in Firefox, but working just fine in IE (perish the thought), you might check the Javascript console to see if you’re seeing something like:

> Error: The stylesheet http://advocacydev.org/blogs/planet.css was not loaded because its MIME type, “text/plain”, is not “text/css”.

I couldn’t begin to speculate why the Apache on this box doesn’t have text/css in the mime.types file. All I can tell you is it’s a FreeBSD box.