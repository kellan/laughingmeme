---
id: 849
title: 'procmail quickie'
date: '2004-06-23T10:55:55+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=849'
permalink: /2004/06/23/procmail-quickie/
typo_id:
    - '847'
mt_id:
    - '2154'
link_related:
    - ''
raw_content:
    - "I decided I wanted to push Gmail a little more, and start redirecting my main mailbox there.  Of course I\\'d also like to keep local delivery, just in case, you know?   \nIn simpler, more innocent days I could do this with a <a href=\\\"http://laughingmeme.org/archives/000114.html\\\">.forward trick</a>.  These days I\\'ve got a large collection of procmail gibberish that allow me to at least pretend that I\\'m managing to deal with my email overwhelm.  And while I\\'m willing to consider that maybe the folks at Google are onto something better, I\\'m not willing to give up the slightest edge.\n\nSo here is what I\\'m doing.  I\\'m dropping the following procmail snippet (<a href=\\\" http://rhols66.adsl.netsonic.fi/era/procmail/mini-faq.html#forward-copy\\\">direct from the FAQ</a>) after my rc.spam rules (no reason to forward spam) but before my rc.lists rules (send list traffic to Gmail, then sort for local delivery)\n<blockquote>INCLUDERC=$PMDIR/rc.spam\n\n:0c\n! example@gmail.com\n\nINCLUDERC=$PMDIR/rc.lists</blockquote>\n\n<b>update:</b> Ohh, <a href=\\\"http://dealmeida.net\\\">Roberto</a> is getting much fancier using an <a href=\\\"http://dealmeida.net/en/Programming/Internet/gmail_heaven\\\">SMTP proxy to forward both his sent and recieved messages to Gmail</a>."
---

I decided I wanted to push Gmail a little more, and start redirecting my main mailbox there. Of course I’d also like to keep local delivery, just in case, you know?  
In simpler, more innocent days I could do this with a [.forward trick](http://laughingmeme.org/archives/000114.html). These days I’ve got a large collection of procmail gibberish that allow me to at least pretend that I’m managing to deal with my email overwhelm. And while I’m willing to consider that maybe the folks at Google are onto something better, I’m not willing to give up the slightest edge.

So here is what I’m doing. I’m dropping the following procmail snippet ([direct from the FAQ](< http://rhols66.adsl.netsonic.fi/era/procmail/mini-faq.html#forward-copy>)) after my rc.spam rules (no reason to forward spam) but before my rc.lists rules (send list traffic to Gmail, then sort for local delivery)

> INCLUDERC=$PMDIR/rc.spam :0c ! example@gmail.com
> 
> INCLUDERC=$PMDIR/rc.lists

**update:** Ohh, [Roberto](http://dealmeida.net) is getting much fancier using an [SMTP proxy to forward both his sent and recieved messages to Gmail](http://dealmeida.net/en/Programming/Internet/gmail_heaven).