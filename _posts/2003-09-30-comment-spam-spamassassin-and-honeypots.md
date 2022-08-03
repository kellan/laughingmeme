---
id: 609
title: 'Comment Spam:  SpamAssassin and Honeypots'
date: '2003-09-30T12:12:29+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=609'
permalink: /2003/09/30/comment-spam-spamassassin-and-honeypots/
typo_id:
    - '607'
mt_id:
    - '1263'
link_related:
    - ''
raw_content:
    - "<p>\nThe flood of comment spam is really on the rise, Simon <a href=\\\"http://simon.incutio.com/archive/2003/09/30/moreCommentSpam\\\">noted</a> he is now getting more spam then legitimate comments, I think my ratio this last weekend was 32 spam, to 4 legitimate.\n</p>\n\n<p>\n<h3>SpamAssassin</h3>\nAt first I didn\\'t notice the rise in comment spam, because I track people commenting by using MT\\'s mail comment feature.  However SpamAssassin was taking one look at the contents of the spam and sending it straight to the junk folder.  This suggests a solution.\n</p>\n<p>\n<h3>Honey Pots</h3>\nComment spam attracts comment spam.  I still think one of the best solutions would be a script that takes comments to a given story and auto-adds those IP addresses to Simon\\'s <a href=\\\"http://simon.incutio.com/archive/2003/09/02/blacklisting\\\">blacklist</a>.  Note both this, and the SA solution are for targetted comment spam, but that is still most of what I\\'m seeing.  If at some point people start posting large blocks of links randomly all over the web in an attempt to raise PageRank neither of these solutions would work well.\n</p>\n<p>\n<h3>Lazy Web</h3>\nHalf the requests on <a href=\\\"http://lazyweb.org\\\">lazy web</a> right now are to deal with comment spam (your chance to be famous),  including <a href=\\\"http://www.sunpig.com/martin/archives/2003/09/29/bayesian_filter_for_blog_comments/index.html\\\">Bayesian filter for blog comments</a> and <a href=\\\"http://www.hutteman.com/weblog/2003/09/22-123.html\\\">url blocking</a>.  You might also want to take a stab at implementing some of <a href=\\\"http://kalsey.com/2003/09/comment_spam\\\">Kalsey\\'s ideas: flexible field names, auth tokens, easier to delete comments</a>, and <a href=\\\"http://kalsey.com/2003/09/distributed_comment_spam_prevention/\\\">the razor-like distribute spam prevention</a>. \n</p>"
---

The flood of comment spam is really on the rise, Simon [noted](http://simon.incutio.com/archive/2003/09/30/moreCommentSpam) he is now getting more spam then legitimate comments, I think my ratio this last weekend was 32 spam, to 4 legitimate.

### SpamAssassin

At first I didn’t notice the rise in comment spam, because I track people commenting by using MT’s mail comment feature. However SpamAssassin was taking one look at the contents of the spam and sending it straight to the junk folder. This suggests a solution. ### Honey Pots

Comment spam attracts comment spam. I still think one of the best solutions would be a script that takes comments to a given story and auto-adds those IP addresses to Simon’s [blacklist](http://simon.incutio.com/archive/2003/09/02/blacklisting). Note both this, and the SA solution are for targetted comment spam, but that is still most of what I’m seeing. If at some point people start posting large blocks of links randomly all over the web in an attempt to raise PageRank neither of these solutions would work well. ### Lazy Web

Half the requests on [lazy web](http://lazyweb.org) right now are to deal with comment spam (your chance to be famous), including [Bayesian filter for blog comments](http://www.sunpig.com/martin/archives/2003/09/29/bayesian_filter_for_blog_comments/index.html) and [url blocking](http://www.hutteman.com/weblog/2003/09/22-123.html). You might also want to take a stab at implementing some of [Kalsey’s ideas: flexible field names, auth tokens, easier to delete comments](http://kalsey.com/2003/09/comment_spam), and [the razor-like distribute spam prevention](http://kalsey.com/2003/09/distributed_comment_spam_prevention/). 