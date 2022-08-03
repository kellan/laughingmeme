---
id: 154
title: 'A Dodged Bullet: Function before Philosophy?'
date: '2002-09-17T09:42:31+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=154'
permalink: /2002/09/17/a-dodged-bullet-function-before-philosophy/
typo_id:
    - '152'
mt_id:
    - '163'
link_related:
    - ''
raw_content:
    - "<p>\r\nSo just as I sit down to some serious coding this weekend, my text editor,\r\n<a href=\\\"http://www.nedit.org\\\">NEdit</a>, went all weird on me.  I don\\'t know how to draw the proper analogy for\r\nnon-programmers, when I explained it to my grandmother this morning I suggested\r\nit was something like her sewing machine going out as she started a quilt, but\r\nas I survey her studio the vast array of scissors, and knives, stencils, mat\r\nboards, needles, dyes, and tools without names, I realized this was an insufficient parallel.  How to say, \\\"Yes I do something real, but I use just one tool to do it.\\\"?\r\n</p>\r\n<p>\r\n<a href=\\\"http://www.nedit.org\\\">NEdit</a> didn\\'t stop working entirely.  In fact it took me a little while to\r\nfigure out what it was doing.  Eventually I figured it out.  The first document\r\nI opened worked fine.  However, if I tried to open any other documents (and\r\nworking in more then one document while programming is a given) then these\r\nchildren windows would act sullen, and unresponsive.  I could see the contents,\r\nbut all mouse or keyboard clicks were ignored.\r\n</p>\r\n<p>\r\nI was despairing a little, but I took my relatively clueless understanding of\r\nthe situation to the \r\n<a href=\\\"http://www.nedit.org/archives/discuss/\\\">NEdit mailing lists</a>, \r\nand got an amazing deluge of helpful\r\nemails.  I sent my email before going to bed, and got up 6 hours later with an\r\ninbox <b>full</b> of helpful suggestions.  The problem is the current version of\r\nLessTif (the one Debian packages) is buggy.  The solutions are:\r\n<ol>\r\n<li> Compile against an older version of LessTif</li>\r\n<li>Download the pre-compiled binaries</li>\r\n<li>Compile against OpenMotif which doesn\\'t have this bug</li>\r\n</ol>\r\n\r\nAs I\\'m not sure how to roll back to an earlier version of a package with apt\r\n(shame on me) I\\'m opted for option 2, and am back in business.\r\n</p>\r\n<p>\r\nBut I\\'ll leave you with this bit of wisdom from Scott T. \r\n<blockquote> <em>\r\nDebain\r\nwill likely never link against OSF Motif due to their philosophy.  So, if you\\'d\r\nrather have a working editor instead of philosophy, try the binary from our\r\nwebsite.</em>\r\n</blockquote>\r\n\r\nI love Debian, but it has its costs.\r\n</p>"
tags:
    - debian
    - freesoftware
    - linux
    - nedit
---

So just as I sit down to some serious coding this weekend, my text editor, [NEdit](http://www.nedit.org), went all weird on me. I don’t know how to draw the proper analogy for non-programmers, when I explained it to my grandmother this morning I suggested it was something like her sewing machine going out as she started a quilt, but as I survey her studio the vast array of scissors, and knives, stencils, mat boards, needles, dyes, and tools without names, I realized this was an insufficient parallel. How to say, “Yes I do something real, but I use just one tool to do it.”?

[NEdit](http://www.nedit.org) didn’t stop working entirely. In fact it took me a little while to figure out what it was doing. Eventually I figured it out. The first document I opened worked fine. However, if I tried to open any other documents (and working in more then one document while programming is a given) then these children windows would act sullen, and unresponsive. I could see the contents, but all mouse or keyboard clicks were ignored.

I was despairing a little, but I took my relatively clueless understanding of the situation to the [NEdit mailing lists](http://www.nedit.org/archives/discuss/), and got an amazing deluge of helpful emails. I sent my email before going to bed, and got up 6 hours later with an inbox **full** of helpful suggestions. The problem is the current version of LessTif (the one Debian packages) is buggy. The solutions are:

1. Compile against an older version of LessTif
2. Download the pre-compiled binaries
3. Compile against OpenMotif which doesn’t have this bug

As I’m not sure how to roll back to an earlier version of a package with apt (shame on me) I’m opted for option 2, and am back in business.

But I’ll leave you with this bit of wisdom from Scott T.

> *Debain will likely never link against OSF Motif due to their philosophy. So, if you’d rather have a working editor instead of philosophy, try the binary from our website.*

I love Debian, but it has its costs.