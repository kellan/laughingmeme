---
id: 3790
title: 'bceval: arbitrary precision math for PHP without extensions'
date: '2008-03-25T13:50:38+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2008/03/25/bceval-arbitrary-precision-math-for-php-without-extensions/'
permalink: /2008/03/25/bceval-arbitrary-precision-math-for-php-without-extensions/
categories:
    - Uncategorized
tags:
    - 'big numbers'
    - Code
    - math
    - php
    - shell
    - unix
---

I needed arbitrary precision math in PHP, and wasn’t willing to rebuild PHP to add the \[bcmath\](http://www.php.net/bc) extensions. All hail backticks.

```
function bceval($expr) {
  return trim(`echo "$expr" | bc`);
}

```

Used like so

```
$end = bceval("$start + $batchsize - 1");

```

\[Wet cat\](http://simonwillison.net/2003/Jun/24/philosophy/) territory.