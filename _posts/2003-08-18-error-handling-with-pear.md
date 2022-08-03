---
id: 562
title: 'Error Handling with PEAR'
date: '2003-08-18T23:19:27+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=562'
permalink: /2003/08/18/error-handling-with-pear/
typo_id:
    - '560'
mt_id:
    - '1103'
link_related:
    - ''
raw_content:
    - "<p>\n<a href=\\\"http://www.asiatica.org/~ludo/\\\">Ludo</a> has a nice post on <a href=\\\"http://asiatica.org/~ludo/archive/2003/08/PHP_php101_errorhandling.html\\\">how to leverage PEAR\\'s native error handling methods</a> in your own libraries.  These are exactly the short of tutorials that are needed for PEAR to live up to its potential.   Wish someone had laid it out for me sooner.\n</p>\n<p>\nOne option if your nervous about whether PEAR will be installed locally is to distribute the base class in a local extlib directory alongside your library.  MoveableType for example gives you the option of downloading it with, or without a complete extlib.  (this is an off the cuff suggestions, I haven\\'t confirmed this is kosher with the PEAR license for example)\n</p>"
---

[Ludo](http://www.asiatica.org/~ludo/) has a nice post on [how to leverage PEAR’s native error handling methods](http://asiatica.org/~ludo/archive/2003/08/PHP_php101_errorhandling.html) in your own libraries. These are exactly the short of tutorials that are needed for PEAR to live up to its potential. Wish someone had laid it out for me sooner.

One option if your nervous about whether PEAR will be installed locally is to distribute the base class in a local extlib directory alongside your library. MoveableType for example gives you the option of downloading it with, or without a complete extlib. (this is an off the cuff suggestions, I haven’t confirmed this is kosher with the PEAR license for example)