---
id: 455
title: 'Tracking RSS Users'
date: '2003-05-30T06:47:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=455'
permalink: /2003/05/30/tracking-rss-users/
typo_id:
    - '453'
mt_id:
    - '808'
link_related:
    - ''
raw_content:
    - "<p>\r\nTbray has an article on <a \r\nhref=\\\"http://www.tbray.org/ongoing/When/200x/2003/05/25/Subscribers\\\">counting RSS subscribers</a> as part of making RSS commerce ready. (though I\\'m sure we can find some better use then that)\r\n</p>\r\n<p>\r\nPredictably he stumbled onto the coals of the old referer flamewars, which while gone dark and black, apparently had enough heat to set him straight quickly.\r\n</p>\r\n<p>\r\nPersonally I never understood the problem.  I think the practice of passing extra info in the referer logs got tarred by bad implementation; yes its annoying when Syndirella or Amphetadesk put a raw url into the referer field (the 2 client who seem to still do this in my logs), this confuses <a href=\\\"http://analog.cx\\\">analog</a>, but I liked <a href=\\\"http://www.nongnu.org/straw/\\\">Straw\\'s</a> implementation which sent you a referer url  in the (approximate) form of nongnu.org/straw/laughingmeme.org-likes-your-rss.  I miss this feature, which was dropped from Straw about the time aggregator writers were being drawn and quartered for \\\"referer spam\\\".  And Tim\\'s suggestion of using email hashes, while adding back the countability, doesn\\'t reopen the channels of communication. (well you can take every email address you know, and run it against the hashes, and see if anything turns up, but that has some obvious limits)\r\n</p>"
tags:
    - aggregation
    - rss
    - stats
---

Tbray has an article on [counting RSS subscribers](http://www.tbray.org/ongoing/When/200x/2003/05/25/Subscribers) as part of making RSS commerce ready. (though I’m sure we can find some better use then that)

Predictably he stumbled onto the coals of the old referer flamewars, which while gone dark and black, apparently had enough heat to set him straight quickly.

Personally I never understood the problem. I think the practice of passing extra info in the referer logs got tarred by bad implementation; yes its annoying when Syndirella or Amphetadesk put a raw url into the referer field (the 2 client who seem to still do this in my logs), this confuses [analog](http://analog.cx), but I liked [Straw’s](http://www.nongnu.org/straw/) implementation which sent you a referer url in the (approximate) form of nongnu.org/straw/laughingmeme.org-likes-your-rss. I miss this feature, which was dropped from Straw about the time aggregator writers were being drawn and quartered for “referer spam”. And Tim’s suggestion of using email hashes, while adding back the countability, doesn’t reopen the channels of communication. (well you can take every email address you know, and run it against the hashes, and see if anything turns up, but that has some obvious limits)