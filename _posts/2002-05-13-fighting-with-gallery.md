---
id: 29
title: 'Fighting with Gallery'
date: '2002-05-13T19:34:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=29'
permalink: /2002/05/13/fighting-with-gallery/
typo_id:
    - '27'
mt_id:
    - '25'
link_related:
    - ''
raw_content:
    - "<p>\r\n<h3>Install PHP CGI, or Turning Mole Hills into Mountains</h3>\r\n\r\nI\\'ve always used PHP compiled into Apache, so PHP CGI was new to me.  And for \r\nthe life of me, I couldn\\'t figure out how the hell to begin.  I searched the\r\ndocumentation, typed <code>./configure --help</code> dozens of time, finally\r\nopening up the configure script and going through it line by line.  I simply\r\ncould not find a parameter, argument, option, environement variable, or config\r\nfile, that said, \\\"Build PHP as a CGI\\\".  Which brings us to the problem of, \\\"How\r\ndoes one document a negative?\\\"\r\n</p>\r\n<p>\r\nPHP apparently expects to be compiled as a CGI.  The fact that no one does this,\r\nhasn\\'t changed that basic assumption.  So just compile the damn thing sans\r\n<code>--with-apache</code>, and you\\'ve got a PHP CGI executable ready to go.   Hmmm, we\\'re already 30 minutes over budget for installing Gallery, and we haven\\'t touched it.\r\n</p>\r\n<p>\r\n<h3>Compiling, or Mop the Augean Stables</h3>\r\nWell we\\'ve got <code>configure</code> in the bag, and the freshly downloaded 4.2.0 is happily\r\ncompiling, but wait!  Now <code>make</code> is having problems.  Something\r\nabout <code>EX_OK</code> being used before its defined.  Screw it!  We\\'ll switch back to 4.1.1\r\nwhich is kicking around the <code>src</code> directory, and try to build that instead.  Ok that worked.\r\n</p>\r\n<p>\r\nPutter around trying to figure out how to enable PHP-CGI.\r\n<ul>\r\n<li>#!/usr/local/bin/php?  No that doesn\\'t work.\r\n<li>AddHandler cgi-script .php?   Hmmm, nothing.\r\n<li>AddHandler application/cgi-php, Action applicaton/cgi-php /usr/local/bin/php? 404, /usr/local/bin/php/~kellan/test.php not found.\r\n</ul>\r\nEventually settled on\r\n<blockquote>\r\nAddHandler application/cgi-php\r\nAction applicaton/cgi-php /cgi-bin/php.cgi\r\n</blockquote>\r\n\r\nIf that was somewhere in the PHP docs (or in the Programming PHP book which I\r\ngrabbed from <a href=\\\"http://safari.oreilly.com\\\">Safari</a>, I couldn\\'t find\r\nit. \r\n</p>\r\n<p> \r\nFinally, we\\'re getting somewhere!  Way, way, way past our 20 minutes of\r\nalloted time, but at this point, its Gallery or me. \r\n</p>\r\n<p>\r\n And Gallery is still winning.  A 505, and a quick check to error_log, and for some reason PHP is\r\nsegfaulting.  I don\\'t why, something about the alignment of the moons.  I futz\r\nwith it, and decided that maybe I need to go back and check out 4.2.0. \r\n</p>\r\n<p>\r\nMorefutzing, some cursing, a thrown pillow or two, and we\\'ve got the lastest\r\nversion of libc6-dev, and the sysexits.h contained therein, and one brand\r\nspanking new php.cgi, version 4.2.0. \r\n</p>\r\n<p> \r\n<h3>Debugging Gallery\\'s config wizard, or\r\nThe Evil that is PHP.</h3> \r\nAll of Gallery\\'s wonderful configuration wizards are\r\ngreat...until they break.  Kind of like Windows, but at least I had the source.  So lets look behind the curtain....\r\n</p> \r\n<p>\r\nThe <a href=\\\"http://www.laughingmeme.org/archives/000023.html#000023\\\">first\r\ntime I saw it</a>, I was blown away by Gallery\\'s wizard.  This time I realized that PHP never stops being PHP, maybe it seems elegant, simple and intuitive, but under the covers its still an ugly hack.\r\n</p>\r\n<p>\r\n<ul>\r\n<li>\r\n<p>\r\nGallery was checking my .htaccess file by trying to fiddle a php.ini value, to\r\nprepend a file containing a global variable.  Ingenous!  I didn\\'t think you could test the .htaccess stuff without deep hooks into Apache\\'s core.  I went looking for some\r\nmechanism for querying Apache, or parsing config files, or something.  It took\r\nme forever until I realized that that peculiar little <code> auto_prepend_file    php_value_ok.php</code> was performing the magic.\r\n</p>\r\n<p>\r\nBut what if you\\'re running in CGI mode, and php_value isn\\'t supported?  (if you\\'re me, you comment out that check, and move on)\r\n</p>\r\n</li>\r\n\r\n<li>\r\n<p>\r\nGallery was checking to see if mod_rewrite was working, very logically, by\r\nrewriting a url, and seeing if it worked.  In and of itself, not a bad idea. (now that we had determined it didn\\'t have a magic way to ask Apache about this stuff)\r\n</p>\r\n<p>\r\nBut when Gallery started turning up false negatives, claiming my mod_rewrite\r\ndidn\\'t work I was stumped.  Much, much, too much later, and after much pain, and\r\ngnashing of teeth, I realised that Gallery was testing for the existence of a\r\nvariable \\\"<code>init_mod_rewrite</code>\\\"  that was never set, and therefore must be\r\nexpecting PHP to magic it into existence.  (and here we note the difference\r\nbetween C which refused to compile without knowing what EX_OK was, and PHP who\r\nsailed along blindly without a care in the world)\r\n</p>\r\n<p>\r\nWell it is a reasonable assumption in PHP for variables to magically appear, and a trip to php.ini, to\r\nturn on register_globals; an option that magicks into existence variables containing anything passed in the query string.(say if you\\'re script uses mod_rewrite to tack init_mod_rewrite=1 on to the end of your url)\r\n</p>\r\n</li>\r\n<ul>\r\n<li>Gallery\\'s FAQ does actually have the question, <em>\\\"The setup page tells me that\r\nmod_rewrite is not installed. Since mod_rewrite is optional, how do I configure\r\nthis option?\\\"</em>  But the answer is less then helpful.\r\n</li>\r\n<li>A Google search show that the term <code>register_globals</code> is only\r\nused once on the Gallery website, in the notes for the pre-release version of\r\nGallery 1.3\r\n</il>\r\n</ul>"
tags:
    - design
    - php
    - software
---

### Install PHP CGI, or Turning Mole Hills into Mountains

I’ve always used PHP compiled into Apache, so PHP CGI was new to me. And for the life of me, I couldn’t figure out how the hell to begin. I searched the documentation, typed `./configure --help` dozens of time, finally opening up the configure script and going through it line by line. I simply could not find a parameter, argument, option, environement variable, or config file, that said, “Build PHP as a CGI”. Which brings us to the problem of, “How does one document a negative?” PHP apparently expects to be compiled as a CGI. The fact that no one does this, hasn’t changed that basic assumption. So just compile the damn thing sans `--with-apache`, and you’ve got a PHP CGI executable ready to go. Hmmm, we’re already 30 minutes over budget for installing Gallery, and we haven’t touched it.

### Compiling, or Mop the Augean Stables

Well we’ve got `configure` in the bag, and the freshly downloaded 4.2.0 is happily compiling, but wait! Now `make` is having problems. Something about `EX_OK` being used before its defined. Screw it! We’ll switch back to 4.1.1 which is kicking around the `src` directory, and try to build that instead. Ok that worked. Putter around trying to figure out how to enable PHP-CGI.

- \#!/usr/local/bin/php? No that doesn’t work.
- AddHandler cgi-script .php? Hmmm, nothing.
- AddHandler application/cgi-php, Action applicaton/cgi-php /usr/local/bin/php? 404, /usr/local/bin/php/~kellan/test.php not found.

Eventually settled on > AddHandler application/cgi-php Action applicaton/cgi-php /cgi-bin/php.cgi

If that was somewhere in the PHP docs (or in the Programming PHP book which I grabbed from [Safari](http://safari.oreilly.com), I couldn’t find it.

 Finally, we’re getting somewhere! Way, way, way past our 20 minutes of alloted time, but at this point, its Gallery or me.

 And Gallery is still winning. A 505, and a quick check to error*log, and for some reason PHP is segfaulting. I don’t why, something about the alignment of the moons. I futz with it, and decided that maybe I need to go back and check out 4.2.0.*

Morefutzing, some cursing, a thrown pillow or two, and we’ve got the lastest version of libc6-dev, and the sysexits.h contained therein, and one brand spanking new php.cgi, version 4.2.0.

### Debugging Gallery’s config wizard, or The Evil that is PHP.

 All of Gallery’s wonderful configuration wizards are great…until they break. Kind of like Windows, but at least I had the source. So lets look behind the curtain…. The [first time I saw it](http://www.laughingmeme.org/archives/000023.html#000023), I was blown away by Gallery’s wizard. This time I realized that PHP never stops being PHP, maybe it seems elegant, simple and intuitive, but under the covers its still an ugly hack.

- Gallery was checking my .htaccess file by trying to fiddle a php.ini value, to prepend a file containing a global variable. Ingenous! I didn’t think you could test the .htaccess stuff without deep hooks into Apache’s core. I went looking for some mechanism for querying Apache, or parsing config files, or something. It took me forever until I realized that that peculiar little ` autoprepend<em>file    php</em>value<em>ok.php</em>` was performing the magic.
    
    But what if you’re running in CGI mode, and phpvalue isn’t supported? (if you’re me, you comment out that check, and move on)
- Gallery was checking to see if mod*rewrite was working, very logically, by rewriting a url, and seeing if it worked. In and of itself, not a bad idea. (now that we had determined it didn’t have a magic way to ask Apache about this stuff)*
    
    But when Gallery started turning up false negatives, claiming my modrewrite didn’t work I was stumped. Much, much, too much later, and after much pain, and gnashing of teeth, I realised that Gallery was testing for the existence of a variable “`init<em>mod</em>rewrite`” that was never set, and therefore must be expecting PHP to magic it into existence. (and here we note the difference between C which refused to compile without knowing what EX*OK was, and PHP who sailed along blindly without a care in the world)*
    
    Well it is a reasonable assumption in PHP for variables to magically appear, and a trip to php.ini, to turn on registerglobals; an option that magicks into existence variables containing anything passed in the query string.(say if you’re script uses mod*rewrite to tack init*mod*rewrite=1 on to the end of your url)*
- Gallery’s FAQ does actually have the question, *“The setup page tells me that mod*rewrite is not installed. Since mod*rewrite is optional, how do I configure this option?”* But the answer is less then helpful.
- A Google search show that the term `registerglobals` is only used once on the Gallery website, in the notes for the pre-release version of Gallery 1.3