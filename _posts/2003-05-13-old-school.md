---
id: 437
title: 'Old School'
date: '2003-05-13T17:42:10+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=437'
permalink: /2003/05/13/old-school/
typo_id:
    - '435'
mt_id:
    - '749'
link_related:
    - ''
raw_content:
    - "<p>\r\nSo say you want to add a random selection for a database to a page, but you\r\ndon\\'t really to add the overhead of making the page dynamic?  Say perhaps you\r\nwant to add this feature in about 10 minutes, and your ideas about building a\r\nsystem to cache, and rotate the item seems like overkill?\r\n</p>\r\n<p>\r\nI\\'m thinking, \\\"Hmmm, thats sounds find of like what <code>fortune</code>\r\ndoes...\\\".  So quick Perl script pull items out of database, and spit out the\r\nraw fortune file, <code>print \\\"$item\\\\n%\\\\n\\\";</code>.  Dig through the man pages,\r\nand find that you need to run your new quotes file through\r\n<code>strfile</code> to fortune enable it.  And how you integrate it with a bit\r\nof SSI.\r\n</p>\r\n<p>\r\n<code>\r\n&lt;!--#exec cmd=\\\"/usr/games/fortunes  /var/www/myfortunes\\\" --&gt;\r\n</code>\r\n</p>"
---

So say you want to add a random selection for a database to a page, but you don’t really to add the overhead of making the page dynamic? Say perhaps you want to add this feature in about 10 minutes, and your ideas about building a system to cache, and rotate the item seems like overkill?

I’m thinking, “Hmmm, thats sounds find of like what `fortune`does…”. So quick Perl script pull items out of database, and spit out the raw fortune file, `print "$item\n%\n";`. Dig through the man pages, and find that you need to run your new quotes file through `strfile` to fortune enable it. And how you integrate it with a bit of SSI.

`\<!--#exec cmd="/usr/games/fortunes  /var/www/myfortunes" -->`