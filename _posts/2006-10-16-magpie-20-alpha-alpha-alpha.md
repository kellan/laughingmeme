---
id: 3502
title: 'Magpie 2.0-alpha-alpha-alpha'
date: '2006-10-16T04:47:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3502'
permalink: /2006/10/16/magpie-20-alpha-alpha-alpha/
typo_id:
    - '3501'
mt_id:
    - ''
link_related:
    - ''
raw_content:
    - "<img src=\\\"http://magpiephp.com/magpie-logo.jpg\\\" align=\\\"right\\\" style=\\\"padding-left: 10px;\\\" />\r\nProbably surprises no one but me, but the work on Magpie has been moving slowly again lately.  Rather then continue futzing with it in the rare spare moments, I\\'m going to push it out in a very raw state, where folks can give some feedback. (and because folks keep asking about it)  This is a preview release, very alpha.\r\n\r\n### Alpha\r\n\r\nAlpha means its broken, there are missing features (many of which are actually in the current Magpie 0.7x releases), and stuff will change.  Whether you find that exciting or off-putting is a personal thing.\r\n\r\n### Getting Started\r\n\r\nSo um, yeah, as of yet no documentation.  That said I\\'ve included the classic `magpie_simple.php` script, unchanged except for the require statement.  For really simple scripts that is all that is required.\r\n\r\nGrab the [current code, Magpie 2.0-alpha-PR1](http://laughingmeme.org/code/magpie2.0-alpha-preview-1.tar.gz).  This isn\\'t its final home, but I am taking this opportunity to finally break free of Sourceforge which has been a long standing goal.\r\n\r\n(I know, we all prefer a good `var_dump()` plus source reading to docs, but their current non-existence won\\'t continue)\r\n\n### Goals for 2.0\r\n\r\nThere were three over-arching design goals in this rewrite, plus a slew of secondary goals.\r\n\r\n#### 1. Support new namespaces and elements, easily\r\n\r\nRather then go on trying to push the universal rules for mapping unknown elements to datastructures (the Magpie 1.0 approach) I\\'ve focused on making it simple to register custom parsing logic, and having intelligent defaults. (aka more like what [Feedparser.py](http://feedparser.org/) does) I expect that we\\'ll handle most known namespaces in short order, and barring another total upheaval of the landscape ala the [Pie/Atom project](http://www.intertwingly.net/wiki/pie/) should sit us in good stead as feed use continues to become more sophisticated.\r\n\r\n#### 2. Pluggable components\r\n\r\nYou should be able to easily swap out the caching layer (database caches anyone?), the HTTP layer (multiplexed curl?), even the parser.   Besides the added flexibility, the theory is this will make embedding simpler.\r\n\r\nWho knows, maybe someone will even contribute a pluggable parser that can handle something other then well formed XML.\r\n\r\n#### 3.  Mostly backwards compatible\r\n\r\nFor simple stuff, you\\'re scripts should go on working.   There is still a 1 function interface (if you liked that), still bust everything down into a couple of nested arrays for easy looping and echoing.  Even where different it should feel familiar.\r\n\r\n### Known Issues\r\n\r\n* Parser doesn\\'t support xml:base nor xml:lang nor Atom inheritance.   It will, but these features still annoy me, and as long as no one is using the code I can\\'t seem to motivate to support them.\r\n\r\n* I\\'m also not doing all the normalization between feed types that I do in \r\n\\\"Magpie classic\\\".  Again, its coming.\r\n\r\n* Not sanitizing content yet.\r\n\r\n* Not just a new parser, but a new HTTP client as well.  Basic HTTP auth support is there, digest isn\\'t.  Haven\\'t added back in SSL support yet.\r\n\r\n* No documentation per se.\r\n\r\n## Incompatibilities and Gotcha\r\n\r\n* Just use `$item[\\'content\\']` instead of `$item[\\'content\\'][\\'encoded\\']` or `$item[\\'atom_content\\']`.\r\n\r\n* If caching is turned on, and Magpie can\\'t write to it\\'s cache, it will throw a fatal error, rather then quietly working in a degraded state.  This might change, but its been a major support issue.\r\n\r\n### More features\r\n\r\n* `fetch_rss()` now supports taking per feeds options.  This was the most requested feature, ever.  (e.g. cache age, output encoding, user-agent, etc)\r\n\r\n* Parses enclosures, this was the second most requested feature.\r\n\r\n* Handles repeated elements properly. (dc:subject, link, whatnot)\r\n \r\n   <pre>echo $item[\\'dc\\'][\\'subject\\'];\r\n    foreach ($item[\\'dc\\'][\\'subjects\\'] as $subj) { ... }</pre>\r\n    \r\n* Atom 1.0 support modulo known issues.\r\n\r\n* Tests.  Most of them based on [Mark\\'s FP tests](http://feedparser.org/tests/).  More added all the time.  Currently not distributing with Magpie as I haven\\'t really figured out the license issues.\r\n\r\n* Confusing new licensing.  Stated goal is to license under a dual GPL/BSD license.  That means you get to choose if you\\'re using the software under the GPL, or the BSD. In addition you can upgrade your license to GPL from BSD (as you can with any BSD licensed software) merely by wishing it to be so. \r\n\r\n* Lots more, really.  \r\n\r\nOther then that, its just like Magpie :)"
tags:
    - magpie
    - php
    - rss
---

![](http://magpiephp.com/magpie-logo.jpg)Probably surprises no one but me, but the work on Magpie has been moving slowly again lately. Rather then continue futzing with it in the rare spare moments, I’m going to push it out in a very raw state, where folks can give some feedback. (and because folks keep asking about it) This is a preview release, very alpha.

### Alpha

Alpha means its broken, there are missing features (many of which are actually in the current Magpie 0.7x releases), and stuff will change. Whether you find that exciting or off-putting is a personal thing.

### Getting Started

So um, yeah, as of yet no documentation. That said I’ve included the classic `magpie_simple.php` script, unchanged except for the require statement. For really simple scripts that is all that is required.

Grab the \[current code, Magpie 2.0-alpha-PR1\](http://laughingmeme.org/code/magpie2.0-alpha-preview-1.tar.gz). This isn’t its final home, but I am taking this opportunity to finally break free of Sourceforge which has been a long standing goal.

(I know, we all prefer a good `var_dump()` plus source reading to docs, but their current non-existence won’t continue)

### Goals for 2.0

There were three over-arching design goals in this rewrite, plus a slew of secondary goals.

#### 1. Support new namespaces and elements, easily

Rather then go on trying to push the universal rules for mapping unknown elements to datastructures (the Magpie 1.0 approach) I’ve focused on making it simple to register custom parsing logic, and having intelligent defaults. (aka more like what \[Feedparser.py\](http://feedparser.org/) does) I expect that we’ll handle most known namespaces in short order, and barring another total upheaval of the landscape ala the \[Pie/Atom project\](http://www.intertwingly.net/wiki/pie/) should sit us in good stead as feed use continues to become more sophisticated.

#### 2. Pluggable components

You should be able to easily swap out the caching layer (database caches anyone?), the HTTP layer (multiplexed curl?), even the parser. Besides the added flexibility, the theory is this will make embedding simpler.

Who knows, maybe someone will even contribute a pluggable parser that can handle something other then well formed XML.

#### 3. Mostly backwards compatible

For simple stuff, you’re scripts should go on working. There is still a 1 function interface (if you liked that), still bust everything down into a couple of nested arrays for easy looping and echoing. Even where different it should feel familiar.

### Known Issues

- Parser doesn’t support xml:base nor xml:lang nor Atom inheritance. It will, but these features still annoy me, and as long as no one is using the code I can’t seem to motivate to support them.
- I’m also not doing all the normalization between feed types that I do in “Magpie classic”. Again, its coming.
- Not sanitizing content yet.
- Not just a new parser, but a new HTTP client as well. Basic HTTP auth support is there, digest isn’t. Haven’t added back in SSL support yet.
- No documentation per se.

## Incompatibilities and Gotcha

- Just use `$item['content']` instead of `$item['content']['encoded']` or `$item['atom_content']`.
- If caching is turned on, and Magpie can’t write to it’s cache, it will throw a fatal error, rather then quietly working in a degraded state. This might change, but its been a major support issue.

### More features

- `fetch_rss()` now supports taking per feeds options. This was the most requested feature, ever. (e.g. cache age, output encoding, user-agent, etc)
- Parses enclosures, this was the second most requested feature.
- Handles repeated elements properly. (dc:subject, link, whatnot)
    
    ```
    echo $item['dc']['subject'];
    foreach ($item['dc']['subjects'] as $subj) { ... }
    ```
- Atom 1.0 support modulo known issues.
- Tests. Most of them based on \[Mark’s FP tests\](http://feedparser.org/tests/). More added all the time. Currently not distributing with Magpie as I haven’t really figured out the license issues.
- Confusing new licensing. Stated goal is to license under a dual GPL/BSD license. That means you get to choose if you’re using the software under the GPL, or the BSD. In addition you can upgrade your license to GPL from BSD (as you can with any BSD licensed software) merely by wishing it to be so.
- Lots more, really.

Other then that, its just like Magpie ![:)](http://lm.local/wp-includes/images/smilies/simple-smile.png)