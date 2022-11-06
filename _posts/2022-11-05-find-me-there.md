---
date: '2022-11-05T10:05:24-05:00'
layout: post
title: 'ideas.txt: Find Me There'
context: 'Week of Elon twitter acquistion. People are wanting to bring back Google+ and struggling to figure out how to do Mastodon'
---

From the ideas.txt file.

I've had this idea kicking around the ideas.txt in various forms since OAuth got rolling, had it crossed out as "done" during the period Keybase was a happening thing, and had to mark it as "undone" when Keybase kind of went to shit with crypto spam/scam. Took another stab at building over a weekend last April when the Elon craziness was just getting started, but didn't get very far. So blogging instead. Who knows, maybe I'll get back to it. But it would be cool if _you_ built it.

### Idea

A small service that you can authenticate to using various OAuth providers to prove that this me on Twitter, is that me on Google, is that me on Wordpress, is that me on Mastodon. Some folks have built this just for Mastodon to Twitter, but I think it would be more interesting as a service that lets people attest to their identity across multiple platforms.

### Prior art

1. Twitdon and earlier the Twitter Mastdon Friend Finder of some of the more recent examples.
2. Services like Gravatar are spirtually aligned.
3. FriendFeed is probably the earliest incarnation, and points to directions in which you could grow it.
4. [Keybase](https://book.keybase.io/guides/proof-integration-guide)
5. [WebFinger](https://webfinger.net/)
6. For websites, well known location files, e.g. for Google Analytics.
7. Linktree has a lot in common
8. Folks are scrapping Twitter at the moment for mentions of Mastodon in tweets and profiles, which is a classic worse is better solution.

### Some more details

* Make it work for webpages using well known location pattern, ala Google Analytics. 
* In addition to an API that is "find this person on other services", you also would need a "find me everyone I know from this service on other services" to be useful.
* OPML, because RSS readers are going to be hip again!

### update 1 2022-11-5T21:34Z

{% twitter https://twitter.com/danlatorre/status/1588991242196905984 omit_script=1 %}

{% twitter https://twitter.com/alister_b/status/1588992992228278272 omit_script=1 %}

{% twitter https://twitter.com/haxor/status/1588997493962203136 omit_script=1 %}

### update 2 2022-11-6T12:13Z 

I got asked what I meant by "well known locations". Technically well known locations refers to [RFC 8615](https://www.rfc-editor.org/rfc/rfc8615), but I mean it more loosely in the sense of demonstrating you control a website by changing it in a way a service specificies, e.g. uploading a specific file at a specific URL. Google Analytics list of [ways to demonstrate you own a site](https://support.google.com/webmasters/answer/9008080?hl=en#choose_method), is probably best practices. 