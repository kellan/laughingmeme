---
id: 23
title: Galleries
date: '2002-05-11T21:34:14+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=23'
permalink: /2002/05/11/galleries/
typo_id:
    - '21'
mt_id:
    - '19'
link_related:
    - ''
raw_content:
    - "I\\'ve been meaning to play with <a href=\\\"http://gallery.sf.net\\\">Gallery</a> ever since \r\n<a href=\\\"http://use.perl.org/~gnat/journal\\\">gnat</a> named checked it in his journal as \r\nridiculously easy to use. (also mentioned was MoveableType, and he was searching for a third for a talk)\r\nMore on that later.  What finally pushed me into it was \r\n<a href=\\\"http://www.petridish.net/picview.asp?picid=1506&searchuserid=8\\\">Stephan</a>\r\n sending out the link to <a href=\\\"http://www.petridish.net/userview.asp?searchuserid=8\\\">his gallery</a>. (he claims there are pictures \r\nfrom his travel in Oz, but if the gallery has any internal organization, I can\\'t tell)\r\n<p>\r\nAnd what a cool little community system they\\'ve got setup at <a href=\\\"http://petridish.net\\\">PetriDish</a>.   \r\nIt doesn\\'t just support galleries, but encourages people to tag their images with the names of the people in the image.  That metadata then\r\nlinks to the galleries of said people through out the site, plus generates a list of \\\"Has been seen X times with Foo\\\".  For example,\r\nPetridish informs us that Stephan has been seen 37 times with Tim, long time friend, fellow Hampshirite, fellow New Yorker, and all time camera hound, but only 32 times with Henry, an \r\neven older friend, also found of the camera, but who currently resides in London. (thereby cutting down on the Stephan/Heny photo-ops)\r\n<p>\r\nThats neat!  I\\'m trying to think if there is some way I can apply that idea to the <a href=\\\"http://dru.ca/imc/open_pub.html\\\">IMC filters</a> code I started specing out today.\r\n<p>\r\nAnd Gallery is amazingly simple and straightforward to setup, I think I might have prefered a more familiar autoconf style interface, and config file,\r\nbut I couldn\\'t certainly appreciate the beauty of a system so completely full-proof and complete.  The install script successfully noticed that:\r\n<ul>\r\n<li>Apache wasn\\'t setup to read .htaccess files in its directory, and gave me the correct &lt;Directory&gt;&lt;/Directory&gt; config for correcting that.\r\n<li>Noticed that while I did have NetPBM installed, I had Debian\\'s doctrinaire version installed sans gifs, and noted this fact.\r\n<li>Checked and verified that it had the a working php, proper file permissions, etc, etc, etc.\r\n</ul>\r\nVery impressive.  Now that its installed, I find the interface a little unclear, the distinction between albums, and photos can be confusing from the interface, and\r\nI haven\\'t looked into templates yet (so often a weakness with PHP applications, even though <a href=\\\"http://www.phpinsider.com/php/code/Smarty/\\\">Smarty</a> exists)\r\nbut very nice."
---

I’ve been meaning to play with [Gallery](http://gallery.sf.net) ever since [gnat](http://use.perl.org/~gnat/journal) named checked it in his journal as ridiculously easy to use. (also mentioned was MoveableType, and he was searching for a third for a talk) More on that later. What finally pushed me into it was [Stephan](http://www.petridish.net/picview.asp?picid=1506&searchuserid=8) sending out the link to [his gallery](http://www.petridish.net/userview.asp?searchuserid=8). (he claims there are pictures from his travel in Oz, but if the gallery has any internal organization, I can’t tell)

And what a cool little community system they’ve got setup at [PetriDish](http://petridish.net).  
It doesn’t just support galleries, but encourages people to tag their images with the names of the people in the image. That metadata then links to the galleries of said people through out the site, plus generates a list of “Has been seen X times with Foo”. For example, Petridish informs us that Stephan has been seen 37 times with Tim, long time friend, fellow Hampshirite, fellow New Yorker, and all time camera hound, but only 32 times with Henry, an even older friend, also found of the camera, but who currently resides in London. (thereby cutting down on the Stephan/Heny photo-ops)

Thats neat! I’m trying to think if there is some way I can apply that idea to the [IMC filters](http://dru.ca/imc/open_pub.html) code I started specing out today.

And Gallery is amazingly simple and straightforward to setup, I think I might have prefered a more familiar autoconf style interface, and config file, but I couldn’t certainly appreciate the beauty of a system so completely full-proof and complete. The install script successfully noticed that:

- Apache wasn’t setup to read .htaccess files in its directory, and gave me the correct &lt;Directory&gt;&lt;/Directory&gt; config for correcting that.
- Noticed that while I did have NetPBM installed, I had Debian’s doctrinaire version installed sans gifs, and noted this fact.
- Checked and verified that it had the a working php, proper file permissions, etc, etc, etc.

Very impressive. Now that its installed, I find the interface a little unclear, the distinction between albums, and photos can be confusing from the interface, and I haven’t looked into templates yet (so often a weakness with PHP applications, even though [Smarty](http://www.phpinsider.com/php/code/Smarty/) exists) but very nice. 