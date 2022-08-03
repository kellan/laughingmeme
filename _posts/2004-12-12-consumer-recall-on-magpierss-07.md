---
id: 975
title: 'Consumer Recall on MagpieRSS 0.7'
date: '2004-12-12T10:59:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=975'
permalink: /2004/12/12/consumer-recall-on-magpierss-07/
typo_id:
    - '973'
mt_id:
    - '2633'
link_related:
    - ''
raw_content:
    - "We have reports of certain models of MagpieRSS 0.7 are unsafe when traveling over 60 miles an hour.  Or something like that.\r\n\r\nActually there is a silly bug in the new encoding work where we check for mb_convert_encoding function exists, and then use iconv.  Whoops.\r\n\r\nDownload the fix with <a href=\\\"http://sourceforge.net/project/showfiles.php?group_id=55691&package_id=50728&release_id=289412\\\">MagpieRSS 0.71</a>, or alternately grab rev1.29 or <a href=\\\"http://cvs.sourceforge.net/viewcvs.py/*checkout*/magpierss/magpierss/rss_parse.inc?rev=1.29\\\">rss_parse.inc</a>"
tags:
    - magpie
    - php
---

We have reports of certain models of MagpieRSS 0.7 are unsafe when traveling over 60 miles an hour. Or something like that.

Actually there is a silly bug in the new encoding work where we check for mb*convert*encoding function exists, and then use iconv. Whoops.

Download the fix with [MagpieRSS 0.71](http://sourceforge.net/project/showfiles.php?group_id=55691&package_id=50728&release_id=289412), or alternately grab rev1.29 or [rss\_parse.inc](http://cvs.sourceforge.net/viewcvs.py/*checkout*/magpierss/magpierss/rss_parse.inc?rev=1.29)