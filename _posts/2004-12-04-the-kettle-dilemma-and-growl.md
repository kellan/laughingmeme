---
id: 968
title: 'The Kettle Dilemma and Growl'
date: '2004-12-04T18:24:08+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=968'
permalink: /2004/12/04/the-kettle-dilemma-and-growl/
typo_id:
    - '966'
mt_id:
    - '2601'
link_related:
    - ''
raw_content:
    - "<p>\r\nI can be a little distracted at times, but the sight of a heavy, solid black kettle glowing an eery incandescent orange tends to rivet my attention.\r\n</p>\r\n<p>\r\nI don\\'t know about you but I have a habit on these cold wet nights to put a kettle on, and then start a project while waiting for the water to boil.  And I get distracted, and come back a view hours later.  So inspired by a comment on <a href=\\\"http://www.macosxhints.com/article.php?story=20040922131625587\\\">Remind as command-line iCal replacement</a>, I wrote a simple bash script to growl at me 5 minutes after I run it.\r\n</p>\r\n\r\n<p>\r\n<h3>Growl</h3>\r\n\r\nDownload <a href=\\\"http://growl.info/downloads.php\\\">Growl</a>, and <a href=\\\"http://growl.info/files/growlnotify.tgz\\\">GrowlNotify</a>.  Install the Growl.dmg, and extract the growlnotify binary and copy it /usr/local/bin (or somewhere else in your path).  Now go to System preferences and turn on the Growl framework.\r\n</p>\r\n<p>\r\n<h3>No at</h3>\r\n\r\nMy first attempt was going to use <code>at</code>, but after fiddling for a  bit (and reaching out for expert assistance from Josh) I found the following line at the top of <code>at</code> man pages:\r\n\r\n<blockquote>\r\nat, batch, atq, atrm are all disabled by default on Mac OS X.\r\n</blockquote>\r\n\r\n\r\n<h3>pure bash</h3>\r\nRather then fiddle with overriding Apple\\'s descision in this matter, I did a little googling and figured out how to simulate what I wanted in bash.\r\n\r\nWithout further ado, my <code>kettle_is_on</code> script.\r\n\r\n<pre>\r\n#!/bin/sh\r\n\r\nDELAY=300\r\nTITLE=\\'Time to take the kettle off\\'\r\nMSG=\\'Seriously, new kettles are expensive\\'\r\n\r\n{\r\nsleep $DELAY\r\necho $MSG | growlnotify $TITLE 2&gt;/dev/null\r\n} &\r\n\r\n</pre>\r\n\r\nCopy this into your path, and you should be all set.\r\n</p>\r\n<p>\r\n<h3>Obvious Improvements</h3>\r\n\r\nObviously it would be nice if the script took arguments on the command line.  Even better would be if the notifications stuck around a little longer then the default 5 seconds.  But those are both for another night (wasted too much time on <code>at</code>)\r\n</p>\r\n<p>\r\nAdditionally this script is entirely incompatible with a good book, as with most other non-OS X running devices.\r\n</p>"
categories:
    - Uncategorized
tags:
    - kettle
    - osx
    - programming
    - shell
---

I can be a little distracted at times, but the sight of a heavy, solid black kettle glowing an eery incandescent orange tends to rivet my attention.

I don’t know about you but I have a habit on these cold wet nights to put a kettle on, and then start a project while waiting for the water to boil. And I get distracted, and come back a view hours later. So inspired by a comment on [Remind as command-line iCal replacement](http://www.macosxhints.com/article.php?story=20040922131625587), I wrote a simple bash script to growl at me 5 minutes after I run it.

### Growl

Download [Growl](http://growl.info/downloads.php), and [GrowlNotify](http://growl.info/files/growlnotify.tgz). Install the Growl.dmg, and extract the growlnotify binary and copy it /usr/local/bin (or somewhere else in your path). Now go to System preferences and turn on the Growl framework.

### No `at`

My first attempt was going to use `at`, but after fiddling for a bit (and reaching out for expert assistance from Josh) I found the following line at the top of `at` man pages:

> at, batch, atq, atrm are all disabled by default on Mac OS X.

### pure bash

Rather then fiddle with overriding Apple’s descision in this matter, I did a little googling and figured out how to simulate what I wanted in bash.

Without further ado, my `kettle<em>is</em>on` script.

```

#!/bin/sh

DELAY=300
TITLE='Time to take the kettle off'
MSG='Seriously, new kettles are expensive'

{
sleep $DELAY
echo $MSG | growlnotify $TITLE 2>/dev/null
} &

```

Copy this into your path, and you should be all set.

### Obvious Improvements

Obviously it would be nice if the script took arguments on the command line. Even better would be if the notifications stuck around a little longer then the default 5 seconds. But those are both for another night (wasted too much time on `at`)

Additionally this script is entirely incompatible with a good book, as with most other non-OS X running devices.