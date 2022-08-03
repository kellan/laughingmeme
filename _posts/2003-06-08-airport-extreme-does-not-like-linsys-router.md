---
id: 462
title: 'Airport Extreme Does Not Like Linsys Router?!!?'
date: '2003-06-08T17:32:54+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=462'
permalink: /2003/06/08/airport-extreme-does-not-like-linsys-router/
typo_id:
    - '460'
mt_id:
    - '834'
link_related:
    - ''
raw_content:
    - "<p>\r\nFinally made it home with my new laptop, and after being offline for 48 hours \r\nimmediately tried to get online with our Linksys 802.11b base station/router.  Nothing.  All connections are timing out.\r\n</p>\r\n<p>\r\nSo I dropped down the shell, and I noticed that I\\'m getting 80-90% packet loss from my laptop to the base station about 5 feet away.  A full 5 bars of singal, but near total packet loss.  Connection to my ISPs nameserver is timing out, pinging is showing hop time like 50 ms per hop, connections out past my ISP are basically impossible.  What is going on!\r\n</p>\r\n<p>\r\n<h3>I Blame Apple</h3>\r\nI have to assume that its some crappy propietary stuff that Apple is doing with their not quite standard 802.11g aka Airport Extreme nonsense.  After all the router has never given me any trouble, nor is it causing anyone else in this mixed platform house trouble.  Just me, I\\'m special.  I saw comments to the effect that having a hybrid 802.11g and 802.11b network made the whole network slow down to 802.11b speeds, a fact which I asked the \\\"genius\\\" at the Apple store to confirm (wish I had gotten a written affadavit).  Write now I would settle for 2400 baud modem speeds.\r\n</p>\r\n<p>\r\n<h3>Help!</h3>\r\nAnyone has any suggestions?  I\\'m willing to give up my wireless and I\\'m not willing to ditch my perfectly good router to satisfy Apple\\'s fantasy of total integration ala Microsoft.  Is there a pure 802.11b card I could put in my aluminium Powerbook?  Something I could flash it with to make it behave?  Am  I miss diagnosing the problem?\r\n</p>\r\n<p>\r\n<h3>Update: A Partial Solution</h3>\r\nSo apparently this is a known problem. Grrrrrrrr.  Between the hard sell the Apple store folks gave me on Apple Care (they lied and said parts are only covered for 90 days) and their cavalier assurance that their card was completely backwards compatible, I do not have warm and fuzzy feeling for Apple write now.\r\n</p>\r\n<p>\r\nA helpful post in the Apple support forums, <a href=\\\"http://discussions.info.apple.com/WebX?50@97.gtUFaY8wncE.42407@.3bc0b600/0\\\">Extreme + Linksys BEFW11S4 Problems</a> suggests throttleing the device down to 1-2Mbps, which, while not ideal, gives at least passable performance.\r\n</p>\r\n<p>\r\nTo do this, contect to your router, go to Advanced, choose wireless and set \\\"TX rates\\\" to \\\"1-2 MBps\\\" down from the default \\\"1-2-5.5-11 MBps\\\".  Yay for the internet, and bah humbug for propietary hardware.\r\n</p>"
---

Finally made it home with my new laptop, and after being offline for 48 hours immediately tried to get online with our Linksys 802.11b base station/router. Nothing. All connections are timing out.

So I dropped down the shell, and I noticed that I’m getting 80-90% packet loss from my laptop to the base station about 5 feet away. A full 5 bars of singal, but near total packet loss. Connection to my ISPs nameserver is timing out, pinging is showing hop time like 50 ms per hop, connections out past my ISP are basically impossible. What is going on!

### I Blame Apple

I have to assume that its some crappy propietary stuff that Apple is doing with their not quite standard 802.11g aka Airport Extreme nonsense. After all the router has never given me any trouble, nor is it causing anyone else in this mixed platform house trouble. Just me, I’m special. I saw comments to the effect that having a hybrid 802.11g and 802.11b network made the whole network slow down to 802.11b speeds, a fact which I asked the “genius” at the Apple store to confirm (wish I had gotten a written affadavit). Write now I would settle for 2400 baud modem speeds. ### Help!

Anyone has any suggestions? I’m willing to give up my wireless and I’m not willing to ditch my perfectly good router to satisfy Apple’s fantasy of total integration ala Microsoft. Is there a pure 802.11b card I could put in my aluminium Powerbook? Something I could flash it with to make it behave? Am I miss diagnosing the problem? ### Update: A Partial Solution

So apparently this is a known problem. Grrrrrrrr. Between the hard sell the Apple store folks gave me on Apple Care (they lied and said parts are only covered for 90 days) and their cavalier assurance that their card was completely backwards compatible, I do not have warm and fuzzy feeling for Apple write now. A helpful post in the Apple support forums, [Extreme + Linksys BEFW11S4 Problems](http://discussions.info.apple.com/WebX?50@97.gtUFaY8wncE.42407@.3bc0b600/0) suggests throttleing the device down to 1-2Mbps, which, while not ideal, gives at least passable performance.

To do this, contect to your router, go to Advanced, choose wireless and set “TX rates” to “1-2 MBps” down from the default “1-2-5.5-11 MBps”. Yay for the internet, and bah humbug for propietary hardware.