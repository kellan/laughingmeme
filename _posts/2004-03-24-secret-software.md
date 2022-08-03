---
id: 778
title: 'Secret Software'
date: '2004-03-24T00:32:59+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=778'
permalink: /2004/03/24/secret-software/
typo_id:
    - '776'
mt_id:
    - '1887'
link_related:
    - ''
raw_content:
    - "Ran into a new concept while looking around Simon Cozens\\' site to see if I could find more recent Maypole docs.  <a href=\\\"http://simon-cozens.org/programmer/secret-software.html\\\">Secret software</a>, the crufty hacks you write for yourself, and never let see the light of day.  Apparently <a href=\\\"http://www.oblomovka.com/\\\">Danny</a> wondered, \\\"Why does no one release this stuff?\\\"  (<a href=\\\"http://www.jwz.org/hacks/marginal.html\\\">JWZ does</a>)\nI tend to post a link to my quick hacks as I do them, but now I\\'ve got a label for it all, I\\'m inspired to pull them together onto a single page.\n\nIn the meantime, one of my favorite scripts, which got a bit more polish <a href=\\\"http://laughingmeme.org/archives/001875.html#001875\\\">this weekend</a>, is my <a href=\\\"/code/parse_apache.pl\\\">parse_apache.pl</a> script.  You see it is very difficult to work on Apache logs with conventional tools like <code>sort</code>, <code>uniq</code>, and <code>cut</code> because the data the fields are never in the order you want to sort on, at the very least the date is different for ever row (nullifying uniq), and there are a bunch of complex delimiters (making cut and awk a challenge).  <code>parse_apache.pl</code> takes a format string, tears apart each row, and spits it back out again in this new format (unless you pass it the -u param, in which case it acts like you appended <code>uniq -c</code>)\n\nProbably there exists a number of scripts that already do this, but I didn\\'t find one that did what I wanted.\n\n(I was also able to confirm that more people have linked to <a href=\\\"http://laughingmeme.org/cvs2rss\\\">cvs2rss</a> (high 200s) then have downloaded it (212), which I find very odd)"
---

Ran into a new concept while looking around Simon Cozens’ site to see if I could find more recent Maypole docs. [Secret software](http://simon-cozens.org/programmer/secret-software.html), the crufty hacks you write for yourself, and never let see the light of day. Apparently [Danny](http://www.oblomovka.com/) wondered, “Why does no one release this stuff?” ([JWZ does](http://www.jwz.org/hacks/marginal.html)) I tend to post a link to my quick hacks as I do them, but now I’ve got a label for it all, I’m inspired to pull them together onto a single page.

In the meantime, one of my favorite scripts, which got a bit more polish [this weekend](http://laughingmeme.org/archives/001875.html#001875), is my [parse*apache.pl*](/code/parse_apache.pl) script. You see it is very difficult to work on Apache logs with conventional tools like `sort`, `uniq`, and `cut` because the data the fields are never in the order you want to sort on, at the very least the date is different for ever row (nullifying uniq), and there are a bunch of complex delimiters (making cut and awk a challenge). `parseapache.pl` takes a format string, tears apart each row, and spits it back out again in this new format (unless you pass it the -u param, in which case it acts like you appended `uniq -c`)

Probably there exists a number of scripts that already do this, but I didn’t find one that did what I wanted.

(I was also able to confirm that more people have linked to [cvs2rss](http://laughingmeme.org/cvs2rss) (high 200s) then have downloaded it (212), which I find very odd)