---
id: 1120
title: 'Ruby Threads'
date: '2005-09-01T07:49:10+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1120'
permalink: /2005/09/01/ruby-threads/
typo_id:
    - '1118'
mt_id:
    - '3077'
link_related:
    - ''
raw_content:
    - "Just wanted to echo something I sent via email, but Tim\\'s right [Ruby threads are weak](http://tbray.org/ongoing/When/200x/2005/08/31/Ruby-Rome), in fact I\\'d call them a toy.  Key problems:\n  \n  * slow as hell, threads tend to die unexpectedly\n  * documentation and sample code limited to a handful of pages in the Pickaxe (lack of people using should have been clue #1)\n  * non-OO (in Ruby! an int in Ruby is an object!), all examples use code blocks, subclassing Thread can have unexpected (to me, with my Java threading biases) results\n  * many core libraries, and more painfully (in that I lost several weeks of my life, and some hair) [ActiveRecord](http://ar.rubyonrails.org/) __aren\\'t__ thread safe.\n\nAll from my experience of trying of writing a threaded RSS poller for [Odeo](http://odeo.com) that reused the model objects from the webapp. In short, fork() is your friend.  \n\nI\\'m hoping that Ruby 2.0 with [Rite/YARV](http://www.atdot.net/yarv/), the new threadsafe virtual machine will solve this.  In the meantime there is, [JRuby](http://jruby.sourceforge.net/), I suppose.  But I\\'ve got a lot less invested in Java then Tim does."
tags:
    - programming
    - ruby
---

Just wanted to echo something I sent via email, but Tim’s right [Ruby threads are weak](http://tbray.org/ongoing/When/200x/2005/08/31/Ruby-Rome), in fact I’d call them a toy. Key problems:

- slow as hell, threads tend to die unexpectedly
- documentation and sample code limited to a handful of pages in the Pickaxe (lack of people using should have been clue #1)
- non-OO (in Ruby! an int in Ruby is an object!), all examples use code blocks, subclassing Thread can have unexpected (to me, with my Java threading biases) results
- many core libraries, and more painfully (in that I lost several weeks of my life, and some hair) [ActiveRecord](http://ar.rubyonrails.org/) **aren’t** thread safe.

All from my experience of trying of writing a threaded RSS poller for [Odeo](http://odeo.com) that reused the model objects from the webapp. In short, fork() is your friend.

I’m hoping that Ruby 2.0 with [Rite/YARV](http://www.atdot.net/yarv/), the new threadsafe virtual machine will solve this. In the meantime there is, [JRuby](http://jruby.sourceforge.net/), I suppose. But I’ve got a lot less invested in Java then Tim does.