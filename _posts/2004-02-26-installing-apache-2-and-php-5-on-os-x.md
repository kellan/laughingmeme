---
id: 748
title: 'Installing Apache 2 and PHP 5 on OS X'
date: '2004-02-26T00:39:47+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=748'
permalink: /2004/02/26/installing-apache-2-and-php-5-on-os-x/
typo_id:
    - '746'
mt_id:
    - '1787'
link_related:
    - ''
raw_content:
    - "<p>\r\nI started out tonight to install a parallel <a href=\\\"http://httpd.apache.org/docs-2.0/\\\">Apache2</a> (2.0.48) and <a href=\\\"http://www.php.net/downloads.php#v5\\\">PHP5</a> (5.0.0b4) on the laptop, to complement the existing Apache/PHP4 install.  And I thought I would keep notes as I did it, maybe turn it into an extended blog entry, \\\"Man Conquerors Technology\\\" and all that, you know the type.  Who knows, if it really got hairy, maybe I could make into an article for O\\'reilly.  My scholarly ambitions were foiled once again; the software was just too damn easy to install\r\n</p>\r\n<p>\r\n<h3>Build Apache2</h3>\r\n\r\n<pre>\r\n> ./configure --enable-mods-shared=ALL\r\n> make\r\n> make install\r\n</pre>\r\n\r\nThen tweak the conf file a bit.  UserDirs should be set to Sites for example.  Probably want to set User/Group to www/www.  Also note that Port has been totally superceeded by Listen.  \r\n</p>\r\n<p>\r\n<h3>Build PHP5</h3>\r\n\r\n<pre>\r\n> apt-get install libxml2\r\n> ./configure --with-apxs2=/usr/local/apache2/bin/apxs --with-mysql=/usr/local/mysql --with-libxml-dir=/sw --prefix=/usr/local/php5\r\n> make\r\n> make install\r\n</pre>\r\n\r\nI first had to upgrade my libxml2, which <a href=\\\"http://fink.sf.net\\\">Fink</a> did smoothly.  Then configure wasn\\'t looking in /sw for my libraries, and rather then figure out why I told it explicitly where to find libxml.  I installed into the prefix /usr/local/php5 in order not to step on the toes of my PHP4 install.  This is especially useful as I\\'m finding a number of PEAR module need to be patched to run under PHP5, so I need separate PEAR directories for v4 and v5\r\n</p>\r\n<p>\r\nSo now I\\'ve got Apache/1.3.29 PHP/4.3.4 (entropy) responding on port 80, and Apache/2.0.48 PHP/5.0.0b4 responding on port 81.\r\n</p>\r\n<p>\r\nOh, and Magpie works just fine under PHP5.\r\n</p>"
categories:
    - Uncategorized
tags:
    - apache
    - apache2
    - install
    - osx
    - php
    - php5
---

I started out tonight to install a parallel [Apache2](http://httpd.apache.org/docs-2.0/) (2.0.48) and [PHP5](http://www.php.net/downloads.php#v5) (5.0.0b4) on the laptop, to complement the existing Apache/PHP4 install. And I thought I would keep notes as I did it, maybe turn it into an extended blog entry, “Man Conquerors Technology” and all that, you know the type. Who knows, if it really got hairy, maybe I could make into an article for O’reilly. My scholarly ambitions were foiled once again; the software was just too damn easy to install

### Build Apache2

```

> ./configure --enable-mods-shared=ALL
> make
> make install
```

Then tweak the conf file a bit. UserDirs should be set to Sites for example. Probably want to set User/Group to www/www. Also note that Port has been totally superceeded by Listen.

### Build PHP5

```

> apt-get install libxml2
> ./configure --with-apxs2=/usr/local/apache2/bin/apxs --with-mysql=/usr/local/mysql --with-libxml-dir=/sw --prefix=/usr/local/php5
> make
> make install
```

I first had to upgrade my libxml2, which [Fink](http://fink.sf.net) did smoothly. Then configure wasn’t looking in /sw for my libraries, and rather then figure out why I told it explicitly where to find libxml. I installed into the prefix /usr/local/php5 in order not to step on the toes of my PHP4 install. This is especially useful as I’m finding a number of PEAR module need to be patched to run under PHP5, so I need separate PEAR directories for v4 and v5

So now I’ve got Apache/1.3.29 PHP/4.3.4 (entropy) responding on port 80, and Apache/2.0.48 PHP/5.0.0b4 responding on port 81.

Oh, and Magpie works just fine under PHP5.