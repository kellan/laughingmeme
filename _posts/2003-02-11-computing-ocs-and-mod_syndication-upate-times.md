---
id: 315
title: 'Computing OCS and mod_syndication upate times'
date: '2003-02-11T21:34:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=315'
permalink: /2003/02/11/computing-ocs-and-mod_syndication-upate-times/
typo_id:
    - '313'
mt_id:
    - '392'
link_related:
    - ''
raw_content:
    - "<p>\r\n(originally sent as a personal email, but I\\'m going to post it here as well)\r\n</p>\r\n<b>update: got a respone.   basically i was attempting to make things too complicated :(</b>\r\n</p>\r\n<p>\r\nI was playing with the idea of writing an article about RSS modules, which got\r\nme thinking about the \r\n<a href=\\\"http://purl.org/rss/1.0/modules/syndication/\\\">syndication module</a>, and its relative obscurity.\r\n</p>\r\n<p>\r\nIts not entirely surprising thats its obscure, weblogs are the RSS playground\r\nright now, and in the realm of personal, whimiscal publishing \r\n<a href=\\\"http://fishbowl.pastiche.org/archives/001132.html\\\">Conditional GETs</a>\r\nare probably a much better solution for discovering new content.\r\n</p>\r\n<p>\r\nHowever, I also think mod_syndication labours under relative obscurity because it confuses\r\npeople.  And I thought I might do something about that, but now I\\'ve got a\r\ncouple of questions about the spec as well.\r\n</p>\r\n<p>\r\n<b>update: now with <cite>answers</cite></b>!\r\n</p>\n<p>\r\n<h3>Optionality?</h3>\r\n\r\nIn the \r\n<a href=\\\"http://internetalchemy.org/ocs/\\\">OCS format</a> all the fields are optional.  In mod_syndication it iss ambigous\r\nwhether updateBase is optional.  As updateBase seems to be the most abused\r\nfield, and adds considerable complexity to calculating update times, it would\r\nseem like a good idea to explicit state that is optional, as well as give\r\nexamples of mod_syndication being used without it. (or perhaps it isn\\'t\r\noptional?)\r\n</p>\r\n<p><b>answer: <cite>updateBase is optional, but highly reccomended for accuracy</b></p>\r\n<p>\r\n\r\n<h3>updateBase?</h3>\r\nWhat is the reccomended best practice with updateBase?  Do I stick it at some\r\narbitrary point in the past to calculate against?  Or should it be set to the\r\nmost recent publish?\r\n</p>\r\n<p><b>answer: <cite>this should stay fixed unless you have an erratic publishing schedule</cite></b></p>\r\n\r\n<p>\r\n<h3>updateFrequency?</h3>\r\n</P>\r\n<p><b>answer (translated): there are no discrete units, everything can be decomposed to seconds</b></p>\r\n<P>\r\nIf my updatePeriod is weekly, and my updateFrequency is 2, then does that mean\r\nI\\'m publishing every 3.5 days?  (84 hours?) \r\n<br /><b><cite>yes</cite></b>\r\n</p> \r\n\r\n<p> If for example, I had an\r\nupdateBase of 2003-02-01T08:00Z, an updatePeriod of Weekly, and an\r\nupdateFrequency of 2, would this mean, that I\\'m claiming to publish every\r\nSaturday at 8am, and every Wednesday at 8pm?\r\n<br /><b><cite>yes</cite></b>\r\n\r\n</p>\r\n\r\n<p> It probably makes sense to calculate the day change, and then ignore the\r\ntime change.  But it should be defined.\r\n<br /><b><cite>no, days aren\\'t discrete</cite></b>\r\n</p>\r\n\r\n<p> For that matter, is twice a month defined at 15 days?  or DAY_IN_MONTH/2? \r\nOn Feb 28th, should I be checking back in 14 days? on 15.5?\r\n<br /><b><cite>DAY_IN_MONTH/2, months are merely composed of days (which are composed of seconds)</cite></b>\r\n</p>\r\n\r\n<p> It would seem that best practice would dictate using an updateBase for long\r\nupdate frequencies like monthly, or yearly.\r\n</p>\r\n\r\n<p>\r\n<h3>Whats a week?</h3>\r\nIgnoring all the previous weirdness, if someone has the very simple and\r\nreasonable updatePeriod:weekly, with no updateBase, and the assumed\r\nupdateFrequency of 1.  Now is that a week?  Or 7 days? \r\n</p>\r\n<p><b>answer: <cite>A week is 7 days which is 604800 seconds\r\n</cite></b></p>\r\n\r\n<p> For example, its Saturday.  Do I come back next Saturday?  or do I come\r\nback on Monday?  or on Sunday?  \r\n<br /><b><cite>Saturday</cite></b>\r\n</p>\r\n\r\n<p> In iCalendar if I ask for a weekly repeat, without specifiying a BYDAY, its\r\ngoing to repeat on Monday, and therefore I should come back 2 days from now.\r\n<br />(<em>note to self, you are a calendar geek</em>)</b>\r\n</p>\r\n\r\n<p> Either way works, it just needs to be defined. </p>\r\n\r\n<p>\r\n<h3>Code</h3>\r\nDo you know of any existing implementations that caculate OCS, or\r\nmod_syndication offsets?  Code is an excellent way to codify assumptions both\r\nexplicit and implicity.\r\n</p>\r\n<p>\r\n<b>update: code is supereasy given the above answers</b>\r\n</p>"
tags:
    - calendaring
    - design
    - rss
---

(originally sent as a personal email, but I’m going to post it here as well)

**update: got a respone. basically i was attempting to make things too complicated ![:(](http://lm.local/wp-includes/images/smilies/frownie.png)**

I was playing with the idea of writing an article about RSS modules, which got me thinking about the [syndication module](http://purl.org/rss/1.0/modules/syndication/), and its relative obscurity.

Its not entirely surprising thats its obscure, weblogs are the RSS playground right now, and in the realm of personal, whimiscal publishing [Conditional GETs](http://fishbowl.pastiche.org/archives/001132.html)are probably a much better solution for discovering new content.

However, I also think mod\_syndication labours under relative obscurity because it confuses people. And I thought I might do something about that, but now I’ve got a couple of questions about the spec as well.

**update: now with <cite>answers</cite>**!

### Optionality?

In the [OCS format](http://internetalchemy.org/ocs/) all the fields are optional. In mod*syndication it iss ambigous whether updateBase is optional. As updateBase seems to be the most abused field, and adds considerable complexity to calculating update times, it would seem like a good idea to explicit state that is optional, as well as give examples of mod*syndication being used without it. (or perhaps it isn’t optional?)

**answer: <cite>updateBase is optional, but highly reccomended for accuracy</cite>**

### updateBase?

What is the reccomended best practice with updateBase? Do I stick it at some arbitrary point in the past to calculate against? Or should it be set to the most recent publish?

**answer: <cite>this should stay fixed unless you have an erratic publishing schedule</cite>**

### updateFrequency?

**answer (translated): there are no discrete units, everything can be decomposed to seconds**

If my updatePeriod is weekly, and my updateFrequency is 2, then does that mean I’m publishing every 3.5 days? (84 hours?)   
**<cite>yes</cite>**

 If for example, I had an updateBase of 2003-02-01T08:00Z, an updatePeriod of Weekly, and an updateFrequency of 2, would this mean, that I’m claiming to publish every Saturday at 8am, and every Wednesday at 8pm?   
**<cite>yes</cite>**

 It probably makes sense to calculate the day change, and then ignore the time change. But it should be defined.   
**<cite>no, days aren’t discrete</cite>**

 For that matter, is twice a month defined at 15 days? or DAY\_IN\_MONTH/2? On Feb 28th, should I be checking back in 14 days? on 15.5?   
**<cite>DAY\_IN\_MONTH/2, months are merely composed of days (which are composed of seconds)</cite>**

 It would seem that best practice would dictate using an updateBase for long update frequencies like monthly, or yearly.

### Whats a week?

Ignoring all the previous weirdness, if someone has the very simple and reasonable updatePeriod:weekly, with no updateBase, and the assumed updateFrequency of 1. Now is that a week? Or 7 days? **answer: <cite>A week is 7 days which is 604800 seconds </cite>**

 For example, its Saturday. Do I come back next Saturday? or do I come back on Monday? or on Sunday?   
**<cite>Saturday</cite>**

 In iCalendar if I ask for a weekly repeat, without specifiying a BYDAY, its going to repeat on Monday, and therefore I should come back 2 days from now.   
(*note to self, you are a calendar geek*)

 Either way works, it just needs to be defined.

### Code

Do you know of any existing implementations that caculate OCS, or mod\_syndication offsets? Code is an excellent way to codify assumptions both explicit and implicity. **update: code is supereasy given the above answers**