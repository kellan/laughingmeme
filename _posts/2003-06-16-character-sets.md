---
id: 480
title: 'Character Sets'
date: '2003-06-16T22:34:34+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=480'
permalink: /2003/06/16/character-sets/
typo_id:
    - '478'
mt_id:
    - '875'
link_related:
    - ''
raw_content:
    - "<p>\r\nOkay, its my secret shame as a web and sometimes XML guy, but I don\\'t really get character sets/character encoding.  Something about being a mono-lingual American no doubt.  If someone wants to sit down someday and explain it all to me that would be great, in the mean time I\\'m stumped by something small.\r\n</p>\r\n<p>\r\nI\\'m playing with <a href=\\\"http://www.kwiki.org\\\">Kwiki</a> (more on that soon), and I\\'m seeing some very interesting behaviour I don\\'t remember ever seeing before.  It goes like this.\r\n\r\n<ol>\r\n<li>Enter &amp;alpha; into the editing textarea</li>\r\n<li>View wiki page see &amp;alpha;</li>\r\n<li>Return to editing, now I see &alpha;</li>\r\n<li>Return to wiki, now I see &amp;#945;</li>\r\n<li>Return to editing page, still seeing &alpha;</li>\r\n<li>Return to wiki, now I see &alpha; on the live page as well as in the textarea</li>\r\n</ol>\r\n\r\nCan anyone explain to me what is going on?  Since when did textareas start interpolating their contents?  Or is it something going on at the Perl level (I don\\'t see any code that does this, perhaps somewhere deep within Perl\\'s unicode support, or CGI.pm?)  Do I just need to stop worrying and do with it?\r\n</p>"
---

Okay, its my secret shame as a web and sometimes XML guy, but I don’t really get character sets/character encoding. Something about being a mono-lingual American no doubt. If someone wants to sit down someday and explain it all to me that would be great, in the mean time I’m stumped by something small.

I’m playing with [Kwiki](http://www.kwiki.org) (more on that soon), and I’m seeing some very interesting behaviour I don’t remember ever seeing before. It goes like this.

1. Enter &amp;alpha; into the editing textarea
2. View wiki page see &amp;alpha;
3. Return to editing, now I see α
4. Return to wiki, now I see &amp;#945;
5. Return to editing page, still seeing α
6. Return to wiki, now I see α on the live page as well as in the textarea

Can anyone explain to me what is going on? Since when did textareas start interpolating their contents? Or is it something going on at the Perl level (I don’t see any code that does this, perhaps somewhere deep within Perl’s unicode support, or CGI.pm?) Do I just need to stop worrying and do with it?