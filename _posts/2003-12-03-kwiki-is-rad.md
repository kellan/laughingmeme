---
id: 674
title: 'Kwiki is R.A.D.'
date: '2003-12-03T22:48:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=674'
permalink: /2003/12/03/kwiki-is-rad/
typo_id:
    - '672'
mt_id:
    - '1505'
link_related:
    - ''
raw_content:
    - "<p>\r\nWikis (or at least <a href=\\\"http://kwiki.org\\\">Kwiki</a>) make a great rapid development environment.\r\n</p>\r\n<p>\r\n<h3>Problem</h3>\r\nBuild a tool to allow collaborative editing and maintenance of the <a href=\\\"/imc.opml\\\">Indymedia folk blogroll</a>. (data needs to be improved)\r\n</p>\r\n<p>\r\n<h3>Solution</h3>\r\n<ol>\r\n<li>Write a few notes on the problem in my todo wiki</li>\r\n<li>Decide on a simple wiki syntax for representing the data.  I chose field: value, with records separated with by blank like.\r\n<pre>\r\nTitle: LaughingMeme\r\nUrl: http://laughingmeme.org\r\nRSS: http://laughingmeme.org/index.rdf\r\nLanguage: en\r\n</pre>\r\n</li>\r\n<li>\r\nWrite a 20 line subclass of <code>Kwiki::Plugin</code> that returns the relevant page as OPML\r\n</li>\r\n<li>\r\nWrite some simple custom formatting rules for displaying this new wiki syntax. (actually I skipped this step, but it would be easy)\r\n</li>\r\n<li>\r\nCross off todo list.\r\n</li>\r\n<li>Blog about it.</li>\r\n</ol>\r\nTime spent: approx 20 minutes, including writing this entry.\r\n</p>"
tags:
    - kwiki
    - perl
    - wiki
---

Wikis (or at least [Kwiki](http://kwiki.org)) make a great rapid development environment.

### Problem

Build a tool to allow collaborative editing and maintenance of the [Indymedia folk blogroll](/imc.opml). (data needs to be improved) ### Solution

1. Write a few notes on the problem in my todo wiki
2. Decide on a simple wiki syntax for representing the data. I chose field: value, with records separated with by blank like. ```
    
    Title: LaughingMeme
    Url: http://laughingmeme.org
    RSS: http://laughingmeme.org/index.rdf
    Language: en
    ```
3. Write a 20 line subclass of `Kwiki::Plugin` that returns the relevant page as OPML
4. Write some simple custom formatting rules for displaying this new wiki syntax. (actually I skipped this step, but it would be easy)
5. Cross off todo list.
6. Blog about it.

Time spent: approx 20 minutes, including writing this entry. 