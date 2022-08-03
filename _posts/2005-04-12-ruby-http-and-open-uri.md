---
id: 1069
title: 'Ruby, HTTP, and open-uri'
date: '2005-04-12T07:01:33+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1069'
permalink: /2005/04/12/ruby-http-and-open-uri/
typo_id:
    - '1067'
mt_id:
    - '2928'
link_related:
    - ''
raw_content:
    - "Ruby\\'s obvious HTTP client library is [Net::HTTP](http://www.ruby-doc.org/stdlib/libdoc/net/http/rdoc/index.html) (\\'net/http\\'), however it feels a little bit awkward to use and lacks nice features like following redirects.  If you\\'re coming from LWP you\\'ll be disappointed. \n\nHowever there is a nice wrapper, [open-uri](http://www.ruby-doc.org/stdlib/libdoc/open-uri/rdoc/index.html) that makes it simple to add custom headers, provides loop aware redirect following, etc.  And it provides a super slick drop in replacement for the [`Kernel#open`](http://www.ruby-doc.org/core/classes/Kernel.html#M001754) method, so that you can open either a local file, or a remote URL....\n\n### Danger Will Robinson! Danger\nAt this point, alarm bells are going off in the heads\\' of the PHP programmers in the audience, who are thinking to themselves, \n\n> \\\"Wow, someone went to the trouble of making Ruby act PHP-like!  Down to replicating one of the most commonly exploited security holes!\\\"  \n\nSincerest forms of flattery aside, that seems like a really bad idea.  Admittedly you have to explicitly `require \\'open-uri\\'` in order to activate the feature, howev er as the best of the Ruby HTTP clients (I\\'ve found to date) that seems like a decent bet in many web apps, and once you\\'ve done that all future calls to `open` can be hijacked to download remote files.\n\nNow, this being Ruby, there is probably some clever solution involving de-aliasing the `open` method which makes all these problems go away.  Still this seems like an opportunity for the PHP community, with its near infinite experience with having web apps exploited, to teach the Ruby community something.  Overloading your core file open semantic to transparently open remote resources is a bad idea, full stop."
tags:
    - http
    - php
    - rails
    - ruby
    - security
    - web
---

Ruby’s obvious HTTP client library is [Net::HTTP](http://www.ruby-doc.org/stdlib/libdoc/net/http/rdoc/index.html) (‘net/http’), however it feels a little bit awkward to use and lacks nice features like following redirects. If you’re coming from LWP you’ll be disappointed.

However there is a nice wrapper, [open-uri](http://www.ruby-doc.org/stdlib/libdoc/open-uri/rdoc/index.html) that makes it simple to add custom headers, provides loop aware redirect following, etc. And it provides a super slick drop in replacement for the [`Kernel#open`](http://www.ruby-doc.org/core/classes/Kernel.html#M001754) method, so that you can open either a local file, or a remote URL….

### Danger Will Robinson! Danger

At this point, alarm bells are going off in the heads’ of the PHP programmers in the audience, who are thinking to themselves,

> “Wow, someone went to the trouble of making Ruby act PHP-like! Down to replicating one of the most commonly exploited security holes!”

Sincerest forms of flattery aside, that seems like a really bad idea. Admittedly you have to explicitly `require 'open-uri'` in order to activate the feature, howev er as the best of the Ruby HTTP clients (I’ve found to date) that seems like a decent bet in many web apps, and once you’ve done that all future calls to `open` can be hijacked to download remote files.

Now, this being Ruby, there is probably some clever solution involving de-aliasing the `open` method which makes all these problems go away. Still this seems like an opportunity for the PHP community, with its near infinite experience with having web apps exploited, to teach the Ruby community something. Overloading your core file open semantic to transparently open remote resources is a bad idea, full stop.