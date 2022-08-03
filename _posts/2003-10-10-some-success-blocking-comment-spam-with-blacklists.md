---
id: 625
title: 'Some Success Blocking Comment Spam with Blacklists'
date: '2003-10-10T13:57:20+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=625'
permalink: /2003/10/10/some-success-blocking-comment-spam-with-blacklists/
typo_id:
    - '623'
mt_id:
    - '1305'
link_related:
    - ''
raw_content:
    - "<p>\nComment spam is definitely on the rise, a new apocalpyse size plague, unprecedented evil that threatens to engulf the Earth it in dark cluthes.  Perhaps not, but I am seeing a lot of people struggling with it, and talking about it.\n</p>\n<p>\nI think the most important thing to realize about comment spam is it isn\\'t email spam.  The style is different, the tools are different, and most importantly the goals are different.  I\\'ve tripped over a number of people saying, \\\"Why spam my little site? I don\\'t get any traffic, no one is going to follow those links.\\\"  <b>It isn\\'t about click throughs.</b>  Unlike email spam where the spammer hopes to convince you of something, comment spam is trying to convince <a href=\\\"http://www.google.com\\\">Google</a> of something.  Your comments are just a convient place to seed yet more links in the battle for page rank.\n</p>\n<p>\n<h3>An Old Technique, Fresh Again</h3>\n\nThis is great news actually.  In email spam, in response to the rise of spam filters spammers have starting mutating their emails, replacing letters with numbers, or mispelled equivalents, adding chunks of random characters, anything to make themselves seem different then the previous incarnation.  People trying to spam Google\\'s pagerank can\\'t do this.  They have to use the real URL, or it doesn\\'t work.  Spammers in all their multiplicity have a huge number of domains available to them, but it is finite.  Also a few well choosen wild cards can do wonders.\n</p>\n<p>\n<h3>MT Blacklists</h3>\n\nUsing <a href=\\\"http://laughingmeme.org/archives/001283.html\\\">my blacklist implementation</a>, plus a seed of <a href=\\\"http://simon.incutio.com/blacklist.txt\\\">Simon\\'s blacklist</a>, plus a few wild cards (viagra, phentermine, casion, all words which have never appeared legitimately in my comments) I\\'ve had 3 spam comments in my first week of use.  Down from about 30 last week.  It would be interesting to log failed attempts to know how well the filters are actually working, but that is a project for another day. (or another person)\n</p>\n<p>\n<h3>It Isn\\'t a Bayesian Shaped Nail</h3>\n\nThere have been a number of calls (I probably made a few myself) to appy successful tools like SpamAssassin, SpamSeive, and the more general idea of Bayesian filtering to solving the spam comment problem.  I have serious doubts about whether this would work.  Email is rich with clues:  headers, mime types, lots of content.  Blog comments have none of these.  In fact blog comments and spam comments look remarkably similar.  I occasionally with my fast (if currently groggy) neural net have trouble distinguishing between spammed, and legitimate comments, I have little faith that Thomas B. will come riding to our rescue on this one.\n</p>\n<p>\n<h3>Distributed Checks</h3>\nWhatever happened to <a href=\\\"http://razor.sourceforge.net/\\\">Razor</a>?  (and <a href=\\\"http://www.rhyolite.com/anti-spam/dcc/\\\">DCC</a>) You never hear anything about it anymore.  Did the problem of finding the similarity of different emails prove to be too difficult?  Simply not as successful as Bayesian filtering?  Or did the insistence on keeping the servers proprietary kill the enthusiasm?  Kalsey proposed <a href=\\\"http://kalsey.com/2003/09/distributed_comment_spam_prevention/\\\">similar distributed spam prevention</a> solution.  Be intersting to learn from Razor.\n</p>"
---

Comment spam is definitely on the rise, a new apocalpyse size plague, unprecedented evil that threatens to engulf the Earth it in dark cluthes. Perhaps not, but I am seeing a lot of people struggling with it, and talking about it.

I think the most important thing to realize about comment spam is it isn’t email spam. The style is different, the tools are different, and most importantly the goals are different. I’ve tripped over a number of people saying, “Why spam my little site? I don’t get any traffic, no one is going to follow those links.” **It isn’t about click throughs.** Unlike email spam where the spammer hopes to convince you of something, comment spam is trying to convince [Google](http://www.google.com) of something. Your comments are just a convient place to seed yet more links in the battle for page rank.

### An Old Technique, Fresh Again

This is great news actually. In email spam, in response to the rise of spam filters spammers have starting mutating their emails, replacing letters with numbers, or mispelled equivalents, adding chunks of random characters, anything to make themselves seem different then the previous incarnation. People trying to spam Google’s pagerank can’t do this. They have to use the real URL, or it doesn’t work. Spammers in all their multiplicity have a huge number of domains available to them, but it is finite. Also a few well choosen wild cards can do wonders.

### MT Blacklists

Using [my blacklist implementation](http://laughingmeme.org/archives/001283.html), plus a seed of [Simon’s blacklist](http://simon.incutio.com/blacklist.txt), plus a few wild cards (viagra, phentermine, casion, all words which have never appeared legitimately in my comments) I’ve had 3 spam comments in my first week of use. Down from about 30 last week. It would be interesting to log failed attempts to know how well the filters are actually working, but that is a project for another day. (or another person)

### It Isn’t a Bayesian Shaped Nail

There have been a number of calls (I probably made a few myself) to appy successful tools like SpamAssassin, SpamSeive, and the more general idea of Bayesian filtering to solving the spam comment problem. I have serious doubts about whether this would work. Email is rich with clues: headers, mime types, lots of content. Blog comments have none of these. In fact blog comments and spam comments look remarkably similar. I occasionally with my fast (if currently groggy) neural net have trouble distinguishing between spammed, and legitimate comments, I have little faith that Thomas B. will come riding to our rescue on this one.

### Distributed Checks

Whatever happened to [Razor](http://razor.sourceforge.net/)? (and [DCC](http://www.rhyolite.com/anti-spam/dcc/)) You never hear anything about it anymore. Did the problem of finding the similarity of different emails prove to be too difficult? Simply not as successful as Bayesian filtering? Or did the insistence on keeping the servers proprietary kill the enthusiasm? Kalsey proposed [similar distributed spam prevention](http://kalsey.com/2003/09/distributed_comment_spam_prevention/) solution. Be intersting to learn from Razor. 