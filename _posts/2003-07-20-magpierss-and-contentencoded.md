---
id: 523
title: 'MagpieRSS and content:encoded'
date: '2003-07-20T15:35:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=523'
permalink: /2003/07/20/magpierss-and-contentencoded/
typo_id:
    - '521'
mt_id:
    - '1002'
link_related:
    - ''
raw_content:
    - "<p>\r\nFor the person who seems to be frantically searching (lots of search referers) for how to use MagpieRSS with mod_content and content:encoded, here is how:\r\n</p>\n<p>\r\n<pre class=\\\"code\\\">\r\n$rss = fetch_rss( $url );\r\nforeach ( $rss-&gt;items as $item ) {\r\n   echo \\\"&lt;p&gt;title: $item[\\'title\\']&lt;br /&gt;\\\";\r\n   if ( isset($item[\\'content\\'][\\'encoded\\']) ) {\r\n      echo $item[\\'content\\'][\\'encoded\\'];\r\n   }\r\n   echo \\\"&lt;/p&gt;\\\";\r\n}\r\n</pre>\r\n</p>"
tags:
    - howto
    - magpie
    - php
---

For the person who seems to be frantically searching (lots of search referers) for how to use MagpieRSS with mod\_content and content:encoded, here is how:

```
<pre class="code">
$rss = fetch_rss( $url );
foreach ( $rss->items as $item ) {
   echo "<p>title: $item['title']<br />";
   if ( isset($item['content']['encoded']) ) {
      echo $item['content']['encoded'];
   }
   echo "</p>";
}
```