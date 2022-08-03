---
id: 1031
title: 'Baby&#8217;s First Rails App'
date: '2005-03-11T06:14:34+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1031'
permalink: /2005/03/11/babys-first-rails-app/
typo_id:
    - '1029'
mt_id:
    - '2842'
link_related:
    - ''
raw_content:
    - "Broke down, saw the light, whatever you want to call it, but I finally whipped up my first [Rails](http://rubyonrails.org) app last night.  \n\nWhen I first looked at Rails a few months ago, I liked what I saw but was frustrated by the extreme magicalness of the framework which baked a number of assumptions into your app I wasn\\'t willing to concede.  Turns out Rails hit the sweet spot of being good enough, the sweet spot where people pile on and the framework has improved rapidly.  \n\n[Rails 0.10.1](http://weblog.rubyonrails.com/archives/2005/03/07/rails-0101-fcgi-stability-ws-generator-tons-of-fixes/) has the flexibility to let me build my app while still being a rapid development environment, has some decent non-toy apps (like [Hieraki](http://www.hieraki.org/)) to learn from, and is developing an impressive body of [documentation](http://documentation.rubyonrails.com/). (made slightly less impressive by the tendency to get transient exceptions while browsing said documentation)\n\nI love the new [routing](http://manuals.rubyonrails.com/read/chapter/65) work, as much as I was (and am) skeptical of moving mod_rewrite functionality into Ruby.  And [fixtures](http://rails.rubyonrails.com/classes/Fixtures.html) are a dream to work with.  If you\\'re trying to learn the framework try writing some tests, I kid you not, best, easiest, most fun way to start really fleshing out your functionality.\n\nIf you\\'ve been putting off playing with Rails, now wouldn\\'t be a bad time to start playing.\n\n### On Debian (Testing)\n\nThe only piece that wasn\\'t fun was getting it working on Debian.  There is an unstable Rails package, but on testing you\\'ll need to go and collect each of the dozen+ dependencies. \n\nThe following code snippet was suggested, but I haven\\'t tried it:\n\n    apt-get install $(grep-available -n -s package -F source -X ruby1.8 | grep lib)\n\n\n#### Errno::ENOENT (No such file or directory â€“ /tmp/mysql.sock) \n\nHad to update my database.yml to point to 127.0.0.1 instead of localhost (thanks [lattice](http://romeda.org))\n\n#### BlueCloth \n\nLoading [BlueCloth](http://bluecloth.rubyforge.org/) as a [gem](http://rubygems.rubyforge.org/wiki/wiki.pl?RubyGems) was failing quietly, and the only error I was seeing was\n\n   NameError: uninitialized constant BlueCloth\n\nFinally copied bluecloth.rb to site_ruby and loaded it via `require` instead of `require_gem`, and found out that I had missed yet another key ruby package `libstrscan-ruby`\n\n### My First App\n\nI\\'m not sure the world needs another online recipe repository, especially another crappy one, but I\\'ve never liked any of the ones I\\'ve played with, and as we\\'ve been having more dinner parties lately it was time to finally start jotting down some recipes.  (and [rabble](http://anarchogeek.com), a recipe is **not** [a todo list](http://laughingmeme.org/archives/002730.html))\n\nI\\'ve built it with tagging support (because I\\'m like that), and [pingback](http://www.hixie.ch/specs/pingback/pingback) support so that I can keep a cooking journal in [Wordpress](http://wordpress.org) and have the links automatically get added to the recipe.\n\nI did not build a natural language parser ala Recipezaar, there is no print recipe card mode, and [Eatdrinkfeelgood](http://eatdrinkfeelgood.org/) support is only a fond fantasy.\n\nA link will follow once I\\'ve done the migration from [WEBrick](http://www.webrick.org/) to lighthttpd/fcgi."
tags:
    - cooking
    - debian
    - rails
    - ruby
    - web
---

Broke down, saw the light, whatever you want to call it, but I finally whipped up my first [Rails](http://rubyonrails.org) app last night.

When I first looked at Rails a few months ago, I liked what I saw but was frustrated by the extreme magicalness of the framework which baked a number of assumptions into your app I wasn’t willing to concede. Turns out Rails hit the sweet spot of being good enough, the sweet spot where people pile on and the framework has improved rapidly.

[Rails 0.10.1](http://weblog.rubyonrails.com/archives/2005/03/07/rails-0101-fcgi-stability-ws-generator-tons-of-fixes/) has the flexibility to let me build my app while still being a rapid development environment, has some decent non-toy apps (like [Hieraki](http://www.hieraki.org/)) to learn from, and is developing an impressive body of [documentation](http://documentation.rubyonrails.com/). (made slightly less impressive by the tendency to get transient exceptions while browsing said documentation)

I love the new [routing](http://manuals.rubyonrails.com/read/chapter/65) work, as much as I was (and am) skeptical of moving mod\_rewrite functionality into Ruby. And [fixtures](http://rails.rubyonrails.com/classes/Fixtures.html) are a dream to work with. If you’re trying to learn the framework try writing some tests, I kid you not, best, easiest, most fun way to start really fleshing out your functionality.

If you’ve been putting off playing with Rails, now wouldn’t be a bad time to start playing.

### On Debian (Testing)

The only piece that wasn’t fun was getting it working on Debian. There is an unstable Rails package, but on testing you’ll need to go and collect each of the dozen+ dependencies.

The following code snippet was suggested, but I haven’t tried it:

```
apt-get install $(grep-available -n -s package -F source -X ruby1.8 | grep lib)

```

#### Errno::ENOENT (No such file or directory â€“ /tmp/mysql.sock)

Had to update my database.yml to point to 127.0.0.1 instead of localhost (thanks [lattice](http://romeda.org))

#### BlueCloth

Loading [BlueCloth](http://bluecloth.rubyforge.org/) as a [gem](http://rubygems.rubyforge.org/wiki/wiki.pl?RubyGems) was failing quietly, and the only error I was seeing was

NameError: uninitialized constant BlueCloth

Finally copied bluecloth.rb to site\_ruby and loaded it via `require` instead of `require_gem`, and found out that I had missed yet another key ruby package `libstrscan-ruby`

### My First App

I’m not sure the world needs another online recipe repository, especially another crappy one, but I’ve never liked any of the ones I’ve played with, and as we’ve been having more dinner parties lately it was time to finally start jotting down some recipes. (and [rabble](http://anarchogeek.com), a recipe is **not** [a todo list](http://laughingmeme.org/archives/002730.html))

I’ve built it with tagging support (because I’m like that), and [pingback](http://www.hixie.ch/specs/pingback/pingback) support so that I can keep a cooking journal in [Wordpress](http://wordpress.org) and have the links automatically get added to the recipe.

I did not build a natural language parser ala Recipezaar, there is no print recipe card mode, and [Eatdrinkfeelgood](http://eatdrinkfeelgood.org/) support is only a fond fantasy.

A link will follow once I’ve done the migration from [WEBrick](http://www.webrick.org/) to lighthttpd/fcgi.