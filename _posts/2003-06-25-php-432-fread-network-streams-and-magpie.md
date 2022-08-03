---
id: 491
title: 'PHP 4.3.2, fread(), network streams, and Magpie'
date: '2003-06-25T21:05:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=491'
permalink: /2003/06/25/php-432-fread-network-streams-and-magpie/
typo_id:
    - '489'
mt_id:
    - '917'
link_related:
    - ''
raw_content:
    - "<p>\r\nAt long last we come to the end (hopefully) of the MagpieRSS and PHP 4.3.2 saga, the good guys win, the bad guys unforunatley got away and will live to program again, but for now all is peaceful.  Look for MagpieRSS 0.5.2 later this evening.\r\n</p>\r\n<p>\r\n<h3>When using fread() on a network stream, it must be called in a loop</h3>\r\n\r\n<blockquote>\r\nWhen reading from network streams or pipes reading will stop after a packet is available.  - <a href=\\\"http://www.php.net/fread/\\\">PHP Manual: fread</a></blockquote>\r\n</p>\r\n<p>\r\nThe documentation goes on to say, \\\"when reading from network streams or pipes, you should collect the data together in chunks\\\".  There, could it be any clearer!\r\n</p>\n<p>\r\n<h3>Migration Headache</h3>\r\n\r\nWhy yes, yes it could.  You see, it didn\\'t used to be like that.  I\\'m not sure how long the documentation has been changed, but until recently fread() was quite content to read past the end of a packet until you had <b>all</b> the information you <b>asked</b> for.  Migration is complicated by the fact that this new behaviour happens very very quietly, and seemingly sporadically.  You would never know anything had changed until your XML started showing up mangled causing \r\n<a href=\\\"http://laughingmeme.org/archives/000893.html#bug1\\\">only the first item in an RSS feed to show up</a>, or your gzip encoded data was delivered improperly formatted causing \r\n<a href=\\\"http://laughingmeme.org/archives/000916.html#000916\\\">gzinflate(): buffer errors</a> (to choose 2 hypothetical example).\r\n</p>\r\n<p>\r\nAnd then of course there is the, ahem, questionable \\\"example\\\" of using fread() with a network socket one finds in the fread documentation.. (more on that later)\r\n</p>\r\n<p>\r\n<h3>Steve Minutillo</h3>\r\n\r\nBut first, I\\'d like to go on record and say \r\n<a href=\\\"http://minutillo.com/steve/weblog/\\\">Steve</a> is the genius, and a very nice person who figured this all out.  I was still stuck swearing at expat, and then on a clue from Steve I was swearing at PHP\\'s bundled zlib.  Neither of whom were to blame.  It was <a href=\\\"http://snoopy.sf.net\\\">Snoopy\\'s</a> old style fread() usage, compounded by my gzip encoding hack.  (Here is a \r\n<a href=\\\"http://laughingmeme.org/snoopy_php4_3_2.patch\\\">patch</a> to make the upstream Snoopy work with 4.3.2)\r\n</p>\r\n<p>\r\n\r\n<h3>Now Back to Trashing PHP</h3>\r\n\r\nOkay, what the hell is up with that example in the \r\n<a href=\\\"http://www.php.net/fread\\\">manual</a>?  We\\'re going to play a game, called \\\"how many really really egregious bugs can you spot in this code\\\".  No, poor style doesn\\'t count as a bug (but icky C inspired examples are a perfectly valid reason to stake someone over an anthill)\r\n\r\n<pre><code>\r\n&lt;?php\r\n$handle = fopen (\\\"http://www.php.net/\\\", \\\"rb\\\");\r\n$contents = \\\"\\\";\r\ndo {\r\n    $data = fread ($handle, filesize ($filename));\r\n    if (strlen($data) == 0) {\r\n        break;\r\n    }\r\n    $contents .= $data;\r\n}\r\nfclose ($handle);\r\n?&gt;\r\n</code></pre>\r\n\r\nI count 2, plus a minor one.  And while I\\'ll be the first to admit PHP is not my best language, can someone tell me what is wrong with the much simpler, or are they just trying to trip people?\r\n\r\n<pre><code>\r\nwhile ( $data = fread($handle, 10240) ) {\r\n    $results .= $data;\r\n\r\n}\r\n</code></pre>\r\n\r\nSo yeah if you\\'ve upgraded to 4.3.2 and you\\'re seeing cropped data, make sure you (or the library you depend upon) has been updated for the new, stricter fread regime.\r\n\r\n</p>"
tags:
    - bug
    - magpie
---

At long last we come to the end (hopefully) of the MagpieRSS and PHP 4.3.2 saga, the good guys win, the bad guys unforunatley got away and will live to program again, but for now all is peaceful. Look for MagpieRSS 0.5.2 later this evening.

### When using fread() on a network stream, it must be called in a loop

> When reading from network streams or pipes reading will stop after a packet is available. – [PHP Manual: fread](http://www.php.net/fread/)

The documentation goes on to say, “when reading from network streams or pipes, you should collect the data together in chunks”. There, could it be any clearer!

### Migration Headache

Why yes, yes it could. You see, it didn’t used to be like that. I’m not sure how long the documentation has been changed, but until recently fread() was quite content to read past the end of a packet until you had **all** the information you **asked** for. Migration is complicated by the fact that this new behaviour happens very very quietly, and seemingly sporadically. You would never know anything had changed until your XML started showing up mangled causing [only the first item in an RSS feed to show up](http://laughingmeme.org/archives/000893.html#bug1), or your gzip encoded data was delivered improperly formatted causing [gzinflate(): buffer errors](http://laughingmeme.org/archives/000916.html#000916) (to choose 2 hypothetical example).

And then of course there is the, ahem, questionable “example” of using fread() with a network socket one finds in the fread documentation.. (more on that later)

### Steve Minutillo

But first, I’d like to go on record and say [Steve](http://minutillo.com/steve/weblog/) is the genius, and a very nice person who figured this all out. I was still stuck swearing at expat, and then on a clue from Steve I was swearing at PHP’s bundled zlib. Neither of whom were to blame. It was [Snoopy’s](http://snoopy.sf.net) old style fread() usage, compounded by my gzip encoding hack. (Here is a [patch](http://laughingmeme.org/snoopy_php4_3_2.patch) to make the upstream Snoopy work with 4.3.2)

### Now Back to Trashing PHP

Okay, what the hell is up with that example in the [manual](http://www.php.net/fread)? We’re going to play a game, called “how many really really egregious bugs can you spot in this code”. No, poor style doesn’t count as a bug (but icky C inspired examples are a perfectly valid reason to stake someone over an anthill)

```

<?php
$handle = fopen ("http://www.php.net/", "rb");
$contents = "";
do {
    $data = fread ($handle, filesize ($filename));
    if (strlen($data) == 0) {
        break;
    }
    $contents .= $data;
}
fclose ($handle);
?>

```

I count 2, plus a minor one. And while I’ll be the first to admit PHP is not my best language, can someone tell me what is wrong with the much simpler, or are they just trying to trip people?

```

while ( $data = fread($handle, 10240) ) {
    $results .= $data;

}

```

So yeah if you’ve upgraded to 4.3.2 and you’re seeing cropped data, make sure you (or the library you depend upon) has been updated for the new, stricter fread regime.