---
id: 1067
title: 'Log anonymizing patches'
date: '2005-04-10T06:49:36+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1067'
permalink: /2005/04/10/log-anonymizing-patches/
typo_id:
    - '1065'
mt_id:
    - '2923'
link_related:
    - ''
raw_content:
    - "[Riseup](http://riseup.net) [patches to keep various logging apps like syslog from recording IP addresses](http://dev.riseup.net/patches/).  Also\n\n> Additionally we\\'ve got a patch to postfix that anonymizes SMTP header\nlines that are sent through over a SASL authenticated SMTP connection.\nThis is unnecessary information added for no apparant reason by\nPostfix, and we dont think its a nice thing to do to let everyone know\nwhat your home DSL connection is.\n\n\nNice!  That was one of the few features about me Postfix which really bugged me.  More info on [imc-tech](http://lists.indymedia.org/pipermail/imc-tech/2005-April/0410-j5.html)"
tags:
    - imc
    - linux
    - postfix
    - privacy
    - riseup.net
    - sysadmin
---

[Riseup](http://riseup.net) [patches to keep various logging apps like syslog from recording IP addresses](http://dev.riseup.net/patches/). Also

> Additionally we’ve got a patch to postfix that anonymizes SMTP header lines that are sent through over a SASL authenticated SMTP connection. This is unnecessary information added for no apparant reason by Postfix, and we dont think its a nice thing to do to let everyone know what your home DSL connection is.

Nice! That was one of the few features about me Postfix which really bugged me. More info on [imc-tech](http://lists.indymedia.org/pipermail/imc-tech/2005-April/0410-j5.html)