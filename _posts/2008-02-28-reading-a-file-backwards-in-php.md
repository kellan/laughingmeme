---
id: 3780
title: 'Reading a file backwards in PHP'
date: '2008-02-28T09:58:51+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2008/02/28/reading-a-file-backwards-in-php/'
permalink: /2008/02/28/reading-a-file-backwards-in-php/
categories:
    - Uncategorized
tags:
    - Code
    - php
    - unix
---

This morning I needed to read from a file line by line from the bottom. In PHP. Perl, of course, \[has a module to do this\](http://search.cpan.org/dist/File-ReadBackwards/ReadBackwards.pm). A quick view source decided that I didn’t want to get into file seeks before breakfast. Very happy with my solution:

```
$file = popen("tac $filename",'r');

while ($line = fgets($file)) {
  echo $line;
}

```