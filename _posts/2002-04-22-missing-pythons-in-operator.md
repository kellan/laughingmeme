---
id: 9
title: 'Missing Python&#8217;s &#8216;in&#8217; operator'
date: '2002-04-22T20:04:30+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=9'
permalink: /2002/04/22/missing-pythons-in-operator/
typo_id:
    - '7'
mt_id:
    - '8'
link_related:
    - ''
raw_content:
    - "I\\'m sitting here drawing a total blank.  The plain white page of Nedit stares back at me, taunting. \r\n<p>\r\nHow do I test for membership in a list using Perl?  I think about the old writers trick, of just writing, even if you write \r\n\\\"I do not know what to write\\\" over and over.  This does not work with coding.  First its a syntax error.  Second,\r\nNedit will allow me to go on forever, filling page and page, I\\'ll never come to the end of the page, never reach that\r\nmilestone, of having to stop, and turn the page, and examine how ridiculously my last 15 minutes were spent.\r\n<p>\r\nIn Python I can ask:   <code>if ( target in list): </code> <br>\r\nor I can speak about:  <code>for item in list:</code>\r\n<p>\r\nIn Perl.....I guess I say:<br>\r\n<code>\r\nif ( grep { $target eq $_ } @list\r\n</code>\r\n<p>\r\nPerl is my first language really, its what I reach for in the early hours of the morning, sleep deprivation setting in,\r\nand the problem just damn well needs to be solved, but \\'ewwww\\', that <code>grep</code> trick is ugly,\r\nand not simply because its functional programming.  So ugly in fact that my brain decided to spontaneiously\r\nforget it."
tags:
    - perl
    - programming
    - python
---

I’m sitting here drawing a total blank. The plain white page of Nedit stares back at me, taunting.

How do I test for membership in a list using Perl? I think about the old writers trick, of just writing, even if you write “I do not know what to write” over and over. This does not work with coding. First its a syntax error. Second, Nedit will allow me to go on forever, filling page and page, I’ll never come to the end of the page, never reach that milestone, of having to stop, and turn the page, and examine how ridiculously my last 15 minutes were spent.

In Python I can ask: `if ( target in list): `   
or I can speak about: `for item in list:`

In Perl…..I guess I say:  
`if ( grep { $target eq $_ } @list`

Perl is my first language really, its what I reach for in the early hours of the morning, sleep deprivation setting in, and the problem just damn well needs to be solved, but ‘ewwww’, that `grep` trick is ugly, and not simply because its functional programming. So ugly in fact that my brain decided to spontaneiously forget it.