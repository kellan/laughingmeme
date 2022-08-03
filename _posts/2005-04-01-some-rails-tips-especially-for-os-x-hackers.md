---
id: 1052
title: 'Some Rails Tips (Especially for OS X Hackers)'
date: '2005-04-01T07:01:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1052'
permalink: /2005/04/01/some-rails-tips-especially-for-os-x-hackers/
typo_id:
    - '1050'
mt_id:
    - '2900'
link_related:
    - ''
raw_content:
    - "The last thing on earth the web needs right now, is another blog/blog post about another developer stumbling his way up the admittedly short Rails learning curve.  Still, here a few tips, especially for the newbie Rails and OS X hackers. \n### Use Breakpoint ###\r\n\r\n<a href=\\\"http://ruby-breakpoint.rubyforge.org\\\">Breakpointer</a> is great.  Took me a little while to figure out how it worked as I was expect something like `gdb`, while `breakpointer` is really more of a evolutionary punctuated equilibrium from the [scattering \\'print\\' statements through out the code](http://www.tbray.org/ongoing/When/200x/2004/06/17/DeDebPrint) style of debugging.  Instead of\r\n\r\n    print \\\"going into crashing_function\\\"\r\n    crashing\\\\_function(var1, var2, var3)\r\n    print \\\"after crashing_function\\\"\r\n\r\nYou say\r\n\r\n    breakpoint \\\"going into crashing_function\\\"\r\n    crashing_function(var1, var2, var3)\r\n\r\nAnd when `breakpoint` is reached you\\'re dropped into an [irb](http://www.rubygarden.org/ruby?Irb) shell, and can inspect those variables, call methods, and generally re-write your code on the fly.\r\n\r\nWhat you can\\'t do is step.  So if you\\'re interested in what is going on in crashing\\\\_function you\\'ll need something like\r\n\r\n    def crashing_function(var1, var2, var3)\r\n       breakpoint \\\"start of crashing function\\\"\r\n       ...\r\n       breakpoint \\\"end of crashing function\\\"\r\n    end\r\n\r\nBut how you ask does a web app bring up an interactive shell?  In your Rails `script` directory (where `generate` and `server` are) you\\'ll find `breakpointer`.  Simply run it, and it will attempt to connect to a dRB server that Rails in development mode brings up behind the scenes.  You\\'ll see\r\n\r\n    No connection to breakpoint service at druby://localhost:42531\r\n           (DRb::DRbConnError)\r\n    Tries to connect will be made every 2 seconds...\r\n\r\nNow go hit your web app over on localhost:3000, and when you reach a breakpoint you\\'ll see your app hang, and the little spinning loading icon go on and on and on.  This is your clue to switch back to the terminal where you ran breakpointer\r\n\r\nThere instead of \\'No connection\\' you\\'ll see\r\n\r\n    Executing break point \\\"start of crashing function\\\" at \r\n          ./script/../config/..//app/models/crashme.rb:15 in `crashing_function\\'\r\n\r\nThat is: you\\'re breakpoint, the file, and the name of the function.  From here you can do things like \r\n\r\n    puts var1\r\n    var1.inspect\r\n    self.some_state.inspect\r\n\r\nAnd [lots more stuff](http://ruby-breakpoint.rubyforge.org/wiki/wiki.pl?TipsAndTricks) which I haven\\'t really started playing with.  What you can\\'t do is `next`, `step`, `run`, etc.  When you\\'re tired of the view from this breakpoint, and are ready to be whisked away to the next one, type\r\n\r\n   exit\r\n\r\n### SecurityError (Insecure operation \\'write\\' at level 4) ###\r\n\r\nWhat if all that doesn\\'t happen.  What if your browser doesn\\'t seem to go into a spinning death spiral but instead promptly pops up the error message like `SecurityError (Insecure operation \\'write\\' at level 4)`.  The default answer is you need Ruby 1.8.2 instead of Ruby 1.8.1.  \\\"But\\\", I hear you say, \\\"I\\'ve already got Ruby 1.8.2\\\".  At which all the wise heads on on #rubyonrails will nod sagely, and says, \\\"Yes, grasshopper, but you are a Mac user, and have the wrong 1.8.2.\\\".  Basically the .dmg was silently upgraded, and you\\'ll need to [re-download](http://homepage.mac.com/discord/Ruby/) and re-install it.\r\n\r\n### Living With Your Model / Using CocoaMySQL ###\r\n\r\nI\\'ve been using MySQL for 8+ years now, and to say I\\'m pretty comfortable with the `mysql` command line client is an understatement. (though I\\'ve never [tricked it out like Jeremy](http://jeremy.zawodny.com/blog/archives/002230.html))  That said, working with Rails where a significant portion of your applications logic is inferred directly from the database means you spend a **lot** of time living in the database.  And so for the first time ever, I went looking for a graphical MySQL client, and found [CocoaMySQL](http://cocoamysql.sourceforge.net/).  It works well with a lot of room for improvement, but my one critical tip for you is, if you\\'re working with a dataset of any size, go to Preferences and make sure to check \\\"Limit results to 100 rows\\\" or you\\'re going to be dealing with a bad case of the spinnies. (and unlike the breakpointer tip, this is not desirable)\r\n\r\n### gem_server ###\r\n\r\nHow do you get a neat, JavaDoc-y looking document site like [rails.rubyonrails.com](http://rails.rubyonrails.com)?  As far as I can tell you don\\'t.  But the next best thing is `gem_server`.  Just run it from the command line, and it will bring up another instance of WEBrick, this one on port 8808, browse to it, and boom, you\\'ve got docs for all installed `gems`. (admittedly all versions of all installed gems, which gets a little ugly)\r\n\r\nThats what I\\'ve picked up so far, most of it unfolded fairly rapidly, but if I can pass along the accumulated wisdom of a couple of hours, there you go.\r\n\r\n**update:** a recipe for [generating Rails docs with Rdoc](http://article.gmane.org/gmane.comp.lang.ruby.rails/6047)"
tags:
    - osx
    - rails
    - tips
---

The last thing on earth the web needs right now, is another blog/blog post about another developer stumbling his way up the admittedly short Rails learning curve. Still, here a few tips, especially for the newbie Rails and OS X hackers.

### Use Breakpoint

[Breakpointer](http://ruby-breakpoint.rubyforge.org) is great. Took me a little while to figure out how it worked as I was expect something like `gdb`, while `breakpointer` is really more of a evolutionary punctuated equilibrium from the \[scattering ‘print’ statements through out the code\](http://www.tbray.org/ongoing/When/200x/2004/06/17/DeDebPrint) style of debugging. Instead of

```
print "going into crashing_function"
crashing\_function(var1, var2, var3)
print "after crashing_function"

```

You say

```
breakpoint "going into crashing_function"
crashing_function(var1, var2, var3)

```

And when `breakpoint` is reached you’re dropped into an \[irb\](http://www.rubygarden.org/ruby?Irb) shell, and can inspect those variables, call methods, and generally re-write your code on the fly.

What you can’t do is step. So if you’re interested in what is going on in crashing\_function you’ll need something like

```
def crashing_function(var1, var2, var3)
   breakpoint "start of crashing function"
   ...
   breakpoint "end of crashing function"
end

```

But how you ask does a web app bring up an interactive shell? In your Rails `script` directory (where `generate` and `server` are) you’ll find `breakpointer`. Simply run it, and it will attempt to connect to a dRB server that Rails in development mode brings up behind the scenes. You’ll see

```
No connection to breakpoint service at druby://localhost:42531
       (DRb::DRbConnError)
Tries to connect will be made every 2 seconds...

```

Now go hit your web app over on localhost:3000, and when you reach a breakpoint you’ll see your app hang, and the little spinning loading icon go on and on and on. This is your clue to switch back to the terminal where you ran breakpointer

There instead of ‘No connection’ you’ll see

```
Executing break point "start of crashing function" at 
      ./script/../config/..//app/models/crashme.rb:15 in `crashing_function'

```

That is: you’re breakpoint, the file, and the name of the function. From here you can do things like

```
puts var1
var1.inspect
self.some_state.inspect

```

And \[lots more stuff\](http://ruby-breakpoint.rubyforge.org/wiki/wiki.pl?TipsAndTricks) which I haven’t really started playing with. What you can’t do is `next`, `step`, `run`, etc. When you’re tired of the view from this breakpoint, and are ready to be whisked away to the next one, type

exit

### SecurityError (Insecure operation ‘write’ at level 4)

What if all that doesn’t happen. What if your browser doesn’t seem to go into a spinning death spiral but instead promptly pops up the error message like `SecurityError (Insecure operation 'write' at level 4)`. The default answer is you need Ruby 1.8.2 instead of Ruby 1.8.1. “But”, I hear you say, “I’ve already got Ruby 1.8.2”. At which all the wise heads on on #rubyonrails will nod sagely, and says, “Yes, grasshopper, but you are a Mac user, and have the wrong 1.8.2.”. Basically the .dmg was silently upgraded, and you’ll need to \[re-download\](http://homepage.mac.com/discord/Ruby/) and re-install it.

### Living With Your Model / Using CocoaMySQL

I’ve been using MySQL for 8+ years now, and to say I’m pretty comfortable with the `mysql` command line client is an understatement. (though I’ve never \[tricked it out like Jeremy\](http://jeremy.zawodny.com/blog/archives/002230.html)) That said, working with Rails where a significant portion of your applications logic is inferred directly from the database means you spend a **lot** of time living in the database. And so for the first time ever, I went looking for a graphical MySQL client, and found \[CocoaMySQL\](http://cocoamysql.sourceforge.net/). It works well with a lot of room for improvement, but my one critical tip for you is, if you’re working with a dataset of any size, go to Preferences and make sure to check “Limit results to 100 rows” or you’re going to be dealing with a bad case of the spinnies. (and unlike the breakpointer tip, this is not desirable)

### gem\_server

How do you get a neat, JavaDoc-y looking document site like \[rails.rubyonrails.com\](http://rails.rubyonrails.com)? As far as I can tell you don’t. But the next best thing is `gem_server`. Just run it from the command line, and it will bring up another instance of WEBrick, this one on port 8808, browse to it, and boom, you’ve got docs for all installed `gems`. (admittedly all versions of all installed gems, which gets a little ugly)

Thats what I’ve picked up so far, most of it unfolded fairly rapidly, but if I can pass along the accumulated wisdom of a couple of hours, there you go.

**update:** a recipe for \[generating Rails docs with Rdoc\](http://article.gmane.org/gmane.comp.lang.ruby.rails/6047)