---
id: 619
title: 'URL Blacklists in MT:  An OO Approach'
date: '2003-10-05T01:58:43+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=619'
permalink: /2003/10/05/url-blacklists-in-mt-an-oo-approach/
typo_id:
    - '617'
mt_id:
    - '1283'
link_related:
    - ''
raw_content:
    - "<p>\nAfter spending 20 minutes banging together <a href=\\\"http://laughingmeme.org/archives/001282.html\\\">mt_honeypot.pl</a>, I decided it was pretty lame.  It might end up being of great use, but I doubt it.  So I went ahead and implemented URL blacklists.  And there goes another exciting Saturday night. (minus the time spent crashing the wedding party next door)\n</p>\n<p>\n<h3>What I Did</h3>\n\nMy approach was to write a subclass of <code>MT::App::Comments</code> called <code>MT::App::Comments::SpamBad</code>, and then make the tweaks to mt-comments.cgi to call my SpamBad subclass.  \n</p>\n<p>\n<h3>How It Works</h3>\n\nSpamBad looks for a directory called <code>blacklists</code>, and reads the contents of each file in that directory (in case for example you want to use other peoples lists as well as your own), one banned url per line, lines beginning with # are comments.  It then compiles those URL into a simple regex which it checks against both the author\\'s url field, and the body of the comment. (My first reaction was this would be slow, but it isn\\'t, important to remember this is the kind of thing computers are good at)\n</p>\n<p>\n<h3>Installing It</h3>\n\n<ol>\n<li><a href=\\\"/code/mt-spambad.tar.gz\\\">Download the tarball.</a></li>\n<li>Backup your mt-comments.cgi</li>\n<li>Copy mt-spambad-comments.cgi to mt-commets.cgi</li>\n<li>Move the spambad dir to somewhere mt-spambad-comments.cgi will be able to find it. (like in the same directory)</li>\n<li>Move the blacklists directory into the same directory as the mt-spambad-comments.cgi</li>\n<li>Test it to make sure its working.</li>\n<li>Start compiling your blacklist, or jump start the process by downloading someone elses.</li>\n</ol>\n</p>\n<p>\n<h3>Next Steps</h3>\nThis was a quick hack, not that I\\'m unhappy with it, but wasn\\'t the product of weeks of planning, released \\'as is\\'.\n</p>\n<p>\nI wanted SpamBad to be configurable, I assumed I\\'d be able to add config options to mt.cfg, but actually <a href=\\\"http://moveabletype.org\\\">MoveableType</a> makes it practically impossible.  I really like <a href=\\\"http://www.kwiki.org\\\">Kwiki\\'s</a> approach to this, I wish MT would adopt it.\n</p>\n<p>\nBlacklist checking is just one possible approach, I forsee SpamBad perhaps applying a number of different heuristics, ideally via a plugin architecture.  (that was a hint)\n</p>\n<p>\nA faster scanning technique would be worth considering for future implementations.\n</p>\n<p>\n<h3>Lastly</h3>\nIf doing some moderately serious (though it should still upgrade smoothly) surgery on your MT install makes you queasy, you might try <a href=\\\"http://www.jayallen.org/journey/2003/09/killing_comment_spam_dead/\\\">this other approach</a>.\n</p>"
---

After spending 20 minutes banging together [mt\_honeypot.pl](http://laughingmeme.org/archives/001282.html), I decided it was pretty lame. It might end up being of great use, but I doubt it. So I went ahead and implemented URL blacklists. And there goes another exciting Saturday night. (minus the time spent crashing the wedding party next door)

### What I Did

My approach was to write a subclass of `MT::App::Comments` called `MT::App::Comments::SpamBad`, and then make the tweaks to mt-comments.cgi to call my SpamBad subclass.

### How It Works

SpamBad looks for a directory called `blacklists`, and reads the contents of each file in that directory (in case for example you want to use other peoples lists as well as your own), one banned url per line, lines beginning with # are comments. It then compiles those URL into a simple regex which it checks against both the author’s url field, and the body of the comment. (My first reaction was this would be slow, but it isn’t, important to remember this is the kind of thing computers are good at)

### Installing It

1. [Download the tarball.](/code/mt-spambad.tar.gz)
2. Backup your mt-comments.cgi
3. Copy mt-spambad-comments.cgi to mt-commets.cgi
4. Move the spambad dir to somewhere mt-spambad-comments.cgi will be able to find it. (like in the same directory)
5. Move the blacklists directory into the same directory as the mt-spambad-comments.cgi
6. Test it to make sure its working.
7. Start compiling your blacklist, or jump start the process by downloading someone elses.

### Next Steps

This was a quick hack, not that I’m unhappy with it, but wasn’t the product of weeks of planning, released ‘as is’. I wanted SpamBad to be configurable, I assumed I’d be able to add config options to mt.cfg, but actually [MoveableType](http://moveabletype.org) makes it practically impossible. I really like [Kwiki’s](http://www.kwiki.org) approach to this, I wish MT would adopt it.

Blacklist checking is just one possible approach, I forsee SpamBad perhaps applying a number of different heuristics, ideally via a plugin architecture. (that was a hint)

A faster scanning technique would be worth considering for future implementations.

### Lastly

If doing some moderately serious (though it should still upgrade smoothly) surgery on your MT install makes you queasy, you might try [this other approach](http://www.jayallen.org/journey/2003/09/killing_comment_spam_dead/). 