---
id: 3088
title: 'Comments Tweaked'
date: '2005-11-06T09:49:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3088'
permalink: /2005/11/06/comments-tweaked/
typo_id:
    - '3086'
mt_id:
    - ''
link_related:
    - ''
raw_content:
    - "Comments should now properly refresh on [Firefox 1.5rc2](http://www.mozilla.org/projects/firefox/) (also fixed for any other browser that was deciding that `$(\\'commentList\\').lastChild` means the smattering of whitespace between a closing `</li>` and the closing `</ol>`)\r\n\r\nAlso turned off the html filtering for comments which was acting as a \\\"make ugly\\\" flag. ([BlueCloth](http://www.deveiate.org/projects/BlueCloth) seems to be finicky and difficult compared to [Markdown](http://daringfireball.net/projects/markdown/) implementations I\\'ve used before, and [RedCloth](http://www.whytheluckystiff.net/ruby/redcloth/) claims to do Markdown, but didn\\'t when I tested it)"
tags:
    - ajax
    - firefox
    - javascript
    - ruby
    - typo
---

Comments should now properly refresh on [Firefox 1.5rc2](http://www.mozilla.org/projects/firefox/) (also fixed for any other browser that was deciding that `$('commentList').lastChild` means the smattering of whitespace between a closing `</li>` and the closing `</ol>`)

Also turned off the html filtering for comments which was acting as a “make ugly” flag. ([BlueCloth](http://www.deveiate.org/projects/BlueCloth) seems to be finicky and difficult compared to [Markdown](http://daringfireball.net/projects/markdown/) implementations I’ve used before, and [RedCloth](http://www.whytheluckystiff.net/ruby/redcloth/) claims to do Markdown, but didn’t when I tested it)