---
id: 661
title: 'OS X Speed Up Magic'
date: '2003-11-14T23:32:30+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=661'
permalink: /2003/11/14/os-x-speed-up-magic/
typo_id:
    - '659'
mt_id:
    - '1432'
link_related:
    - ''
raw_content:
    - "<p>\nMy powerbook has been sluggish lately, I\\'ve been doing some more hard core hacking, but it wasn\\'t fun, I thought I had reached the end of what I could accomplish with my puny 384M, and I was sad.\n</p>\n<p>\nStop!  Wait! Hold that thought.  I just got an email from <a href=\\\"http://bumppo.net\\\">Nat</a>:\n\n<blockquote>\nWhat happens when you run \\\"sysctl hw.cpufrequency\\\" on your PB at the\nterminal? If it returns \\\"533333332\\\", then resetting the PMU will give\nyou back a few hundred extra MHz.\n</blockquote>\n</p>\n<p>\nI <a href=\\\"http://docs.info.apple.com/article.html?artnum=14449\\\">reset my <acronym title=\\\"Power Management Unit\\\">PMU</acronym></a>, turned my laptop back on, and now <code>sysctl</code> is reporting <code>866666664</code>, but more importantly my laptop is zippy again.   Thanks Nat.\n</p>\n<p>\n<a href=\\\"http://discussions.info.apple.com/WebX?128@118.G0RvaUdOgw4.28@.599a42a6\\\">More Info</a>\n</p>\n<p>\n<b>update: (2003/11/18)</b> - Nat, purveyor of fine magics, has his own doubts about the validity of this trick, but it works for me.\n</p>"
---

My powerbook has been sluggish lately, I’ve been doing some more hard core hacking, but it wasn’t fun, I thought I had reached the end of what I could accomplish with my puny 384M, and I was sad.

Stop! Wait! Hold that thought. I just got an email from [Nat](http://bumppo.net):

> What happens when you run “sysctl hw.cpufrequency” on your PB at the terminal? If it returns “533333332”, then resetting the PMU will give you back a few hundred extra MHz.

I [reset my <acronym title="Power Management Unit">PMU</acronym>](http://docs.info.apple.com/article.html?artnum=14449), turned my laptop back on, and now `sysctl` is reporting `866666664`, but more importantly my laptop is zippy again. Thanks Nat.

[More Info](http://discussions.info.apple.com/WebX?128@118.G0RvaUdOgw4.28@.599a42a6)

**update: (2003/11/18)** – Nat, purveyor of fine magics, has his own doubts about the validity of this trick, but it works for me.