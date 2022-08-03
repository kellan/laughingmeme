---
id: 191
title: 'There Has Got To Be A Better Way'
date: '2002-10-23T18:54:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=191'
permalink: /2002/10/23/there-has-got-to-be-a-better-way/
typo_id:
    - '189'
mt_id:
    - '199'
link_related:
    - ''
raw_content:
    - "<p>\r\nSo I\\'ve got this nifty little RSS parser doohickey, <a href=\\\"http://magpierss.sf.net\\\">Magpie</a>.  In the name of lowering the curve, and weaning PHP programmers away from their previously available hackish solutions I tried to make it as simple to use, and \\\"PHP-like\\\" as possible.  Meaning that fetching the remote feed, and parsing it, and caching it have been rolled into one convenient step.  Now that \r\n<a href=\\\"http://fishbowl.pastiche.org/archives/001132.html\\\">HTTP conditional GETs</a> are all the rage, I\\'m adding them to Magpie. (I\\'ve had an ugly implementation lying around for a while, but its not even worth check into CVS)\r\n</p>\r\n<p>\r\n<h3>PHP as Web Client</h3>\r\nBut how the hell does one do web automation with PHP?  I feel like no one has ever taken this problem on before in PHP.  Or at least no one on the web is talking \r\nabout it somewhere I can find it.  How does one get at <code>If-Modified-Since</code>, <code>Last-Modified</code>, and <code>Etag</code>?   Where is <a href=\\\"http://www.linpro.no/lwp/\\\">LWP</a> or <a href=\\\"http://www.python.org/doc/2.2.1/lib/module-urllib2.html\\\">urllib2</a> for PHP?   \r\n</p>\r\n<p>\r\nYou can get at the <b>response</b> headers from <code>fopen()</code> from the array <code>$http_response_header</code> which is magically instaniated behind the scenes. (because PHP does that kind of thing)  I wonder if I stuffed some vaules into an array named <code>$http_request_header</code>, would it work? (<b>No</b>, it doesn\\'t)\r\n\r\n<h4>PHP Cookbook</h4>\r\nThe <a href=\\\"http://www.oreilly.com/catalog/phpckbk/\\\">PHP Cookbook</a> has a tantalizing Chapter 11 entitled \\\"Web Automation\\\", with rule 11.1 being \\\"Fetching URLs with GET\\\", and rule 11.4 \\\"Fetching URLs with Headers\\\", sounding just about perfect.   And its supposed to come out this November, could only by 9 days, but I\\'m impatient.   I\\'m going to stop by <a href=\\\"http://www.quantumbooks.com/\\\">Quantum</a> today, to see if they have one of their looks-like-someone-snuck-it-out-the-back-door-and-photo-copied-it O\\'Reilly specials.\r\n\r\n<h4>Rolling Your Own</h4>\r\nSo barring the deliverance from on high by O\\'Reilly it appears that the only way I\\'m going to get these features right now is to roll my own using <code>fsockopen()</code> and hand-packed headers.  Have I mentioned that PHP is sadly deficient in tools?\r\n</p>\r\n<p>\r\n<b>update, 10/25</b>:  So the word on the street is \\\"just use sockets\\\", the answer rolls off the mailing lists and newsgroups, with the polish and weariness of a frequently asked question.  No one suggested it, but I\\'m also intrigued by <a href=\\\"http://snoopy.sf.net\\\">Snoopy, the web client class for PHP</a>.  I think I\\'ll start by rolling my own, and loop back to Snoopy when I have time to do benchmarks.  \r\n</p>\r\n<p>\r\n<b>fyi:</b> ended up using Snoopy, very happy with it.\r\n</p>\r\n<p>\r\n<h3>The Impenetrable Importance of Culture</h3>\r\nFor me the hardest part in working with languages I\\'m less familiar with (Python, and PHP for example) rather then those I\\'m more comfortable with (Perl or Java) is not syntax questions, it\\'s culture.  For all of Perl\\'s much vaunted \\\"There is More Then One Way To Do It\\\", I know the proper way to do things, the proper tool to reach for, and if I don\\'t I have ways of finding out, largely through internal calculation based on my understanding of the Perl reputation landscape.  It is that information which is opaque to me, especially in PHP where the vast number of practioners are novices.\r\n</p>"
tags:
    - http
    - magpie
    - php
---

So I’ve got this nifty little RSS parser doohickey, [Magpie](http://magpierss.sf.net). In the name of lowering the curve, and weaning PHP programmers away from their previously available hackish solutions I tried to make it as simple to use, and “PHP-like” as possible. Meaning that fetching the remote feed, and parsing it, and caching it have been rolled into one convenient step. Now that [HTTP conditional GETs](http://fishbowl.pastiche.org/archives/001132.html) are all the rage, I’m adding them to Magpie. (I’ve had an ugly implementation lying around for a while, but its not even worth check into CVS)

### PHP as Web Client

But how the hell does one do web automation with PHP? I feel like no one has ever taken this problem on before in PHP. Or at least no one on the web is talking about it somewhere I can find it. How does one get at `If-Modified-Since`, `Last-Modified`, and `Etag`? Where is [LWP](http://www.linpro.no/lwp/) or [urllib2](http://www.python.org/doc/2.2.1/lib/module-urllib2.html) for PHP?  
You can get at the **response** headers from `fopen()` from the array `$http<em>response</em>header` which is magically instaniated behind the scenes. (because PHP does that kind of thing) I wonder if I stuffed some vaules into an array named `$http<em>request</em>header`, would it work? (**No**, it doesn’t)

#### PHP Cookbook

The [PHP Cookbook](http://www.oreilly.com/catalog/phpckbk/) has a tantalizing Chapter 11 entitled “Web Automation”, with rule 11.1 being “Fetching URLs with GET”, and rule 11.4 “Fetching URLs with Headers”, sounding just about perfect. And its supposed to come out this November, could only by 9 days, but I’m impatient. I’m going to stop by [Quantum](http://www.quantumbooks.com/) today, to see if they have one of their looks-like-someone-snuck-it-out-the-back-door-and-photo-copied-it O’Reilly specials.

#### Rolling Your Own

So barring the deliverance from on high by O’Reilly it appears that the only way I’m going to get these features right now is to roll my own using `fsockopen()` and hand-packed headers. Have I mentioned that PHP is sadly deficient in tools?

**update, 10/25**: So the word on the street is “just use sockets”, the answer rolls off the mailing lists and newsgroups, with the polish and weariness of a frequently asked question. No one suggested it, but I’m also intrigued by [Snoopy, the web client class for PHP](http://snoopy.sf.net). I think I’ll start by rolling my own, and loop back to Snoopy when I have time to do benchmarks.

**fyi:** ended up using Snoopy, very happy with it.

### The Impenetrable Importance of Culture

For me the hardest part in working with languages I’m less familiar with (Python, and PHP for example) rather then those I’m more comfortable with (Perl or Java) is not syntax questions, it’s culture. For all of Perl’s much vaunted “There is More Then One Way To Do It”, I know the proper way to do things, the proper tool to reach for, and if I don’t I have ways of finding out, largely through internal calculation based on my understanding of the Perl reputation landscape. It is that information which is opaque to me, especially in PHP where the vast number of practioners are novices. 