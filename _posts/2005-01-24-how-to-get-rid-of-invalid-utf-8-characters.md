---
id: 2782
title: 'How to get rid of invalid UTF-8 characters'
date: '2005-01-24T12:28:01+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=2782'
permalink: /2005/01/24/how-to-get-rid-of-invalid-utf-8-characters/
typo_id:
    - '2780'
mt_id:
    - '2741'
link_related:
    - 'http://blog.bitflux.ch/archive/how-to-get-rid-of-invalid-utf-8-characters.html'
raw_content:
    - '$t = iconv(\''UTF-8\'',\''UTF-8//IGNORE\'',$t);'
categories:
    - Aside
tags:
    - i18n
    - magpie
    - php
    - utf8
---

$t = iconv(‘UTF-8′,’UTF-8//IGNORE’,$t);