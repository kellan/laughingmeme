---
id: 490
title: 'Magpie, PHP 4.3.2 Memory Error, an Update'
date: '2003-06-25T12:49:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=490'
permalink: /2003/06/25/magpie-php-432-memory-error-an-update/
typo_id:
    - '488'
mt_id:
    - '916'
link_related:
    - ''
raw_content:
    - "<p>\r\n<a href=\\\"http://minutillo.com/steve/weblog/\\\">Steve</a> tracked down the root of the problem that is causing MagpieRSS to run out of memory after upgrading to 4.3.2.  It lies in my (apparently dodgy) patch to Snoopy to add gzip support.\r\n</p>\r\n<p>\r\n<h3>Temporary Solution</h3>\r\nTo turn off gzip encoding (and thereby avoid this bug) add:\r\n<p> \r\n<code>\r\ndefine(\\'MAGPIE_USE_GZIP\\', false);\r\n</code>\r\n</p>\r\nto the top of your script.\r\n</p>\r\n\n<p>\r\n<h3>Explanation</h3>\r\nAfter much hair pulling trying to get gzip encoding working in PHP, I found this magic recipe in <a href=\\\" http://www.php.net/manual/en/function.gzencode.php\\\">comments attached to gzencode</a>:\r\n<p>\r\n<code>\r\n $results = substr($results, 10);\r\n $results = gzinflate($results);\r\n</code>\r\n</p>\r\nSeems you had to strip off the gzip header to make it work.  This was confirmed when I found <a href=\\\"http://simon.incutio.com/\\\">Simon\\'s</a> <a href=\\\"http://scripts.incutio.com/httpclient/\\\">httpClient</a>.\r\n</p>\r\n<p>\r\nApparently this is changed in 4.3.2, and stripping the first 10 characters leads eventually (through a yet untraced path) to an out of memory error.\r\n</p>\r\n<p>\r\n<h3>Next Steps</h3>\r\nDoes anyone have any info about this?  Any suggestions on a good way to support 4.3.2 and pre-4.3.2 PHPs?  Gzip encoding really isn\\'t an optional feature in a modern aggregator, so turning it off is a short term solution.\r\n</p>\r\n<p>\r\n<h3>Update 6/25 2:16</h3>\r\nOkay, so I\\'ve got PHP 4.2.3 locally now (via <a href=\\\"http://www.entropy.ch/software/macosx/php/\\\">Marc Liyanage\\'s excellent package</a>), and I\\'m seeing similar behaviour.  I don\\'t actually get an out of memory error, but I can see memory usage spike (with iPulse) and I get a warning about a gzinflate buffer error.  Unforunately  removing \\\"$results = substr($results, 10);\\\" <b>does not</b> fix the problem for me.  So currently the only solution is to turn gzip encoding off :(\r\n </p>\r\n<p>\r\n<h3>Curiouser and Curiouser</h3>\r\nSo removing the substr() call changed the error message form \\\"gzinflate(): buffer error\\\", to \\\"gzinflate(): data error\\\".  However only for certain websites!  Files served with gzip encoding from some sites (<a href=\\\"http://dev.protest.net/~kellan/cvs-rss/\\\">like mine</a>) work, but from others, it doesn\\'t.  Ack. \r\n</p>"
tags:
    - bug
    - fof
    - gzip
    - magpie
---

[Steve](http://minutillo.com/steve/weblog/) tracked down the root of the problem that is causing MagpieRSS to run out of memory after upgrading to 4.3.2. It lies in my (apparently dodgy) patch to Snoopy to add gzip support.

### Temporary Solution

To turn off gzip encoding (and thereby avoid this bug) add:  `define('MAGPIE<em>USE</em>GZIP', false);`

to the top of your script. ### Explanation

After much hair pulling trying to get gzip encoding working in PHP, I found this magic recipe in [comments attached to gzencode](< http://www.php.net/manual/en/function.gzencode.php>): ` $results = substr($results, 10); $results = gzinflate($results);`

Seems you had to strip off the gzip header to make it work. This was confirmed when I found [Simon’s](http://simon.incutio.com/) [httpClient](http://scripts.incutio.com/httpclient/). Apparently this is changed in 4.3.2, and stripping the first 10 characters leads eventually (through a yet untraced path) to an out of memory error.

### Next Steps

Does anyone have any info about this? Any suggestions on a good way to support 4.3.2 and pre-4.3.2 PHPs? Gzip encoding really isn’t an optional feature in a modern aggregator, so turning it off is a short term solution. ### Update 6/25 2:16

Okay, so I’ve got PHP 4.2.3 locally now (via [Marc Liyanage’s excellent package](http://www.entropy.ch/software/macosx/php/)), and I’m seeing similar behaviour. I don’t actually get an out of memory error, but I can see memory usage spike (with iPulse) and I get a warning about a gzinflate buffer error. Unforunately removing “$results = substr($results, 10);” **does not** fix the problem for me. So currently the only solution is to turn gzip encoding off ![:(](http://lm.local/wp-includes/images/smilies/frownie.png)### Curiouser and Curiouser

So removing the substr() call changed the error message form “gzinflate(): buffer error”, to “gzinflate(): data error”. However only for certain websites! Files served with gzip encoding from some sites ([like mine](http://dev.protest.net/~kellan/cvs-rss/)) work, but from others, it doesn’t. Ack. 