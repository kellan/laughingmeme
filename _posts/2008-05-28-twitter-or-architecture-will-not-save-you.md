---
id: 3841
title: 'Twitter, or Architecture Will Not Save You'
date: '2008-05-28T13:34:18+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=3841'
permalink: /2008/05/28/twitter-or-architecture-will-not-save-you/
categories:
    - Uncategorized
tags:
    - architecture
    - capacity
    - growth
    - monitoring
    - scalability
    - twitter
---

[![](http://laughingmeme.org/img/maintenance.gif)](http://twitter.com)  
<small>(circa 2006 Twitter maintenance cat)</small>

Along with a whole slew of smart folks, I’ve been playing the current think game de jour, “How would you re-architect Twitter?”. Unlike most I’ve been having this conversation off and on for a couple of years, mostly with [Blaine](http://romeda.org), in my unofficial “Friend of Twitter” capacity. (the same capacity that I wrote the first Twitter bot in, and have on rare occasion logged into their boxes to play “spot the run away performance issue.”)

For my money Leonard’s [Brought to You By the 17th Letter of the Alphabet](http://randomfoo.net/blog/id/4182) is probably the best proposed architecture I’ve seen — or at least it matches my own biases when I sat down last month to sketch out [how build a Twitter-like thing](http://laughingmeme.org/2008/04/05/quiet-saturday-thoughts/). But when Leonard and I were chatting last week about this stuff, I was struck what was missing from the larger Blogosphere’s conversation: the issues Twitter is actually facing.

Folks both [within Twitter](http://dev.twitter.com/2008/05/twittering-about-architecture.html) and [without](http://assetbar.wordpress.com/2008/02/08/twitter-proxy-any-interest/) have framed the conversation as an architectural challenge. Meanwhile the [nattering classes](http://www.techcrunch.com/2008/05/22/twitter-at-scale-will-it-work/) have struck on the fundamental challenge of **all** social software (namely the network effects) and are reporting that they’ve gotten confirmation from “an individual who is familiar with the technical probelms at Twitter” that indeed Twitter is a social software site!

### Living and Dying By the Network

All social software has to deal with the [network effect](http://en.wikipedia.org/wiki/Network\_effect). At scale it’s hard. And all large social software has had to solve it. If you’re looking for the roots of Twitter’s special challenges, you’re going to have to look a bit farther a field.

Though you can hedge your bets with this stuff by making less explicit promises than [Twitter](http://twitter.com) does (everything from my friends in a timely fashion is pretty hard promise to keep). [Flickr](http://flickr.com) mitigates some of this impact by making promises about [recent contacts](http://flickr.com/photos/me/friends), not recent photos (there are a fewer people than photos), meanwhile Facebook can hide a slew of sins behind the fact that their newsfeeds are “editorialized”, no claims of completeness anywhere in site. (there is a figure floating around that at least at one point Facebook was dropping 80% of their updates on the floor)

So while architectures that strip down Twitter to queues, and logs could be a huge win, and while thinking about new architectures is the sexy, hard problem we all want to fix, Twitter’s problems are really of a more pedestrian hard, plumbing and ditch digging nature. Which is less fun, but reality.

### Growth

Their first problem is growth. Honest to god hockey stick growth is so weird, and wild, and hard, thats it’s hard to imagine and cope with if you haven’t been through it at least once. To [quote Leonard again](http://randomfoo.net/blog/id/4171) (this from a [few weeks ago](http://www.techcrunch.com/2008/04/23/amateur-hour-over-at-twitter/) back when TC thought they’d figured out that [Twitter’s problems were Blaine](http://www.techcrunch.com/2008/04/23/amateur-hour-over-at-twitter/)):

> “Even if you’re architecturally sound, you’re dealing with development with extremely tight timelines/pressures, so you have to make decisions to pick things that will work but will probably need to eventually be replaced (e.g. DRb for Twitter) — usually you won’t know when and what component will be the limiting factor since you don’t know what the uses cases will be to begin with. Development from prototype on is a series of compromises against the limited resources of man-hours and equipment. In a perfect world, you’d have perfect capacity planning and infinite resources, but if you’ve ever experienced real-world hockey-stick growth on a startup shoestring, you know that’s not the case. If you have, you understand that scaling is the brick that hits you when you’ve gone far beyond your capacity limits and when your machines hit double or triple digit loads. Architecture doesn’t help you one bit there.”

Growth is hard. Dealing with growth is rarely sexy. When your growth goes non-linear you’re tempted to think you’ve stumbled into a whole class of new problems that need wild new thinking. Resist. New ideas should be applied judiciously. Because mostly its plumbing. Tuning your databases, getting your thread buffer sizes right, managing the community, and the abuse.

### Intelligence and Monitoring

Growth compounds the other hard problem that Twitter (and almost every sites I’ve seen) has, thery’re running black boxes. Social software is hard to heartbeat, socially or technically. It’s one of the places where our jobs are actually harder than those real time trading systems, and other five nines style hard computing systems.

And it’s a problem Twitter is still struggling to solve. (really you never stop solving it, your [next SPOF will always come find you](http://laughingmeme.org/2008/02/20/steve-loughran-how-do-you-know-you-have-a-spof-single-point-of-failure-you-always-have-one-how-do-you-find-it-you-dont-it-finds-you/), and then you have something new to monitor) Twitter came late in life to [Ganglia](http://ganglia.info/), and haven’t had the time to really burnish it. And Ganglia doesn’t ship by default with a graph for [what to do when your site needs its memcache servers **hot**](http://blog.evanweaver.com/articles/2008/05/21/twitter/) to run. And what do you do when Ganglia starts telling you your recent framework upgrade is causing a 10x increase in data returned from your DBs for the same QPS. Or that your URL shortening service is starting to slow down sporadically adding an extra 30ms burn to message handling. (how do you even graph that?)

### Beyond LAMP Needs Better Intelligence

Monitoring and intelligence get even harder as you start to embrace these new architectures. Both because the systems are more complex, but largely because we don’t know what monitoring and resourcing for Web scale queues of data, and distributed hash tables look like. And we don’t yet have the scars from living through the failure scenarios. And we’re rolling our own solutions as it is early days, without the battle hardened tweaks and flags of an Apache or MySQL.

We all know that [Jabber](http://www.jabber.org/) has different performance characteristics than the Web (that’s rather the point), but we don’t have the data to quantify what it looks like at network effect impacted scale. (the big IM installs, particularly LJ and Google have talked a bit in public, but their usage patterns tend to be pretty different than stream style APIs. Btw I’ll be [talking about this a bit in Portland at OSCON](http://en.oreilly.com/oscon2008/public/schedule/detail/4359) in a few months!)

### Recommendations

So I’d add to [Leonard’s architecture](http://randomfoo.net/blog/id/4182) (and I know Leonard is thinking about this), and the various other cloud architectures emerging that to make it work you need build monitoring and resourcing in from the ground up, or you’re distributed in the cloud queues are going to fail.

And solve the growth issues, with appropriate solutions for growth, which rarely involves architectural solutions.