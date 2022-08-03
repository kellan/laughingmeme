---
id: 106
title: 'Mail problems, and .forward tricks'
date: '2002-08-04T12:07:25+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=106'
permalink: /2002/08/04/mail-problems-and-forward-tricks/
typo_id:
    - '104'
mt_id:
    - '114'
link_related:
    - ''
raw_content:
    - "<p>\r\nI\\'ve never really thought that much about the .forward file (said \\\"dot-forward\\\").  You stick an email address in it, and then forget about it.  I have several scattered around on various machines, all pointing to the same account on <a href=\\\"http://riseup.net\\\">riseup</a>.\r\n</p>\r\n<p>\r\nBut riseup has been migrating to a new mail server, a super slick new mail server, but the migration has been rocky, and mail has been bouncing.  So I took this opportunity to look a little deeper into the .forward file, and if it might be a source of deeper, richer functionality.\r\n</p>\r\n<p>\r\nAnd of course it was.  Your typical .forward file looks like:\r\n<pre>\r\nkellan@nsa.gov\r\n</pre>\r\nWhich sends all my email to the <a href=\\\"http://www.nsa.gov\\\">NSA</a>.\r\n</p>\r\n<p>\r\nBut say I wanted to keep a copy for local use, and also send a copy to <a href=\\\"http://www.microsoft.com\\\">msft</a>?\r\n<pre>\r\n<b>\\\\</b>kellan<b>,</b>\r\nlinux-watch@microsoft.com<b>,</b>\r\nkellan@nsa.gov\r\n</pre>\r\nSo I can separate as many recipes for mail delivery as I want, separated by commas.  The <b>\\\\</b> in front of my name says deliver locally to \\'kellan\\'.  I had no idea such possibilities lurked within.\r\n</p>"
---

I’ve never really thought that much about the .forward file (said “dot-forward”). You stick an email address in it, and then forget about it. I have several scattered around on various machines, all pointing to the same account on [riseup](http://riseup.net).

But riseup has been migrating to a new mail server, a super slick new mail server, but the migration has been rocky, and mail has been bouncing. So I took this opportunity to look a little deeper into the .forward file, and if it might be a source of deeper, richer functionality.

And of course it was. Your typical .forward file looks like:

```

kellan@nsa.gov
```

Which sends all my email to the [NSA](http://www.nsa.gov). But say I wanted to keep a copy for local use, and also send a copy to [msft](http://www.microsoft.com)?

```

<b>\</b>kellan<b>,</b>
linux-watch@microsoft.com<b>,</b>
kellan@nsa.gov
```

So I can separate as many recipes for mail delivery as I want, separated by commas. The **\\** in front of my name says deliver locally to ‘kellan’. I had no idea such possibilities lurked within. 