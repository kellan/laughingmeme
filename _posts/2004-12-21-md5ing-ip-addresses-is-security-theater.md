---
id: 984
title: 'MD5&#8217;ing IP Addresses is Security Theater'
date: '2004-12-21T08:07:25+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=984'
permalink: /2004/12/21/md5ing-ip-addresses-is-security-theater/
typo_id:
    - '982'
mt_id:
    - '2655'
link_related:
    - ''
raw_content:
    - "<p>\nI felt dumb back in 2001 when I suggested that the solution to IMC\\'s ip address privacy concerns was to use a one-way hash (e.g. MD5), and a few basic facts where pointed out to me.\n\n<ul>\n<li>IPv4 provides a total possible search space for ~4 billion highly predictable records, a dictionary style attack against this is well within reason.</li><li>the effective address space is actually *much* less then 4 billion due to the way that IP addresses are distributed.\n\n<li>it is likely that the search space will actually be *drastically* smaller (a few hundred) based on the amount of information the attacker has already been able to gather.</li></ul>\n</p>\n\n<p>\nI\\'m not a cypherpunk, but the numbers kind of speak for themselves.  Hashing of IP addresses is useless.  Which is why <a href=\\\"http://www.indymedia.org\\\">Indymedia</a> doesn\\'t log IP addresses.\n</p>\n<p>\nSo its a little odd to see that bastion of geeky wisdom <a href=\\\"http://slashdot.org/\\\">Slashdot</a>, talking about how they\\'ve <a href=\\\"http://slashdot.org/~jamie/journal/93006\\\">\\\"voluntarily taken on the privacy burden of MD5\\'ing incoming IP addresses\\\"</a>.  \n</p>\n<p>\nI guess that prevents against accidental discovery, and maybe thats their threat model.  (that must be nice)\n</p>\n<p>\nThis has been a public service announcement.\n</p>"
tags:
    - privacy
    - security
---

I felt dumb back in 2001 when I suggested that the solution to IMC’s ip address privacy concerns was to use a one-way hash (e.g. MD5), and a few basic facts where pointed out to me.

- IPv4 provides a total possible search space for ~4 billion highly predictable records, a dictionary style attack against this is well within reason.
- the effective address space is actually \*much\* less then 4 billion due to the way that IP addresses are distributed.
- it is likely that the search space will actually be \*drastically\* smaller (a few hundred) based on the amount of information the attacker has already been able to gather.

I’m not a cypherpunk, but the numbers kind of speak for themselves. Hashing of IP addresses is useless. Which is why [Indymedia](http://www.indymedia.org) doesn’t log IP addresses.

So its a little odd to see that bastion of geeky wisdom [Slashdot](http://slashdot.org/), talking about how they’ve [“voluntarily taken on the privacy burden of MD5’ing incoming IP addresses”](http://slashdot.org/~jamie/journal/93006).

I guess that prevents against accidental discovery, and maybe thats their threat model. (that must be nice)

This has been a public service announcement.