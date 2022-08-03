---
id: 4207
title: 'Streams, affordances, Facebook, and rounding errors'
date: '2009-03-18T10:07:35+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4207'
permalink: /2009/03/18/streams-affordances-facebook-and-rounding-errors/
categories:
    - Uncategorized
tags:
    - 'activity streams'
    - design
    - facebook
    - lossiness
    - 'social software'
    - twitter
---

I’m not really a Facebook user, but it is impossible to be a serious practitioner of the rough craft of building social software without being at least somewhat a Facebook watcher. So indulge me a bit, as I add my own thoughts to the cacophony of folks writing about the \[Facebook re-design\](http://www.facebook.com/sitetour/homepage\_tour.php).

I’ve always thought their status updates design was brilliant. Not because it was usable or attractive, I’ve always thought it was terrible. But because their design didn’t make promises they couldn’t keep.

Think briefly about the platonic ideal of an activity stream, the increasingly common social pattern that makes your traditional \[CRUD\](http://en.wikipedia.org/wiki/Create,*read,*update*and*delete) fronted MySQL install cry at anything remotely resembling scale. All the updates from your social network, quickly listed for your viewing pleasure, in reverse date ordering. No two users of your service will share an activity stream view (unless your service tends towards 100% social graph overlap, in which case why bother?), writes are high volume and need to be committed quickly to preserve ordering, and shared caching is right out.

So you go queue-ish, you de-normalize. And now you’re pushing messages around between services, transactional commit are gone, and you’re dealing with the inevitable skew of distributed systems. But even in queue systems, 100% guaranteed, in order delivery is more fantasy then reality (though you can get close).

But Facebook was smarter then that. They specifically designed a page that was lossy. They said, “You don’t want to see everything, here is a subset of things your friends do we think you’ll be interested in.” And so you knew that you weren’t seeing everything, it wasn’t that they were failing their contract with you, but that they had decided not to show you something for editorial reasons. And you knew that if you wanted to see everything you had to dig, because that was the contract. And that digging was scoped to a user, your wall or your friends wall, data scoped by data owner — super cheap look up.

Contrast this to \[Twitter\](http://twitter.com).

Twitter is infamous for its bad period of down time as growth went asymptotic. But less well remembered is the teeth gnashing and hair pulling of the bad period right before, where update loss, delivery failure, and out of order delivery where the bugaboos of the day. Twitter promised you would see all your friends updates, always, neatly collated. The promise is implicit in the design, the language, the APIs, the very DNA of the service. (in fact Twitter used to make more audacious claims, I still mourn the death of the “With Friends” feature, that allowed you to see *anyone’s* public updates in the context of their friend network, not just your own).

One of the best, unattributable quotes from \[Social Foo\](http://sgfoocamp08.pbwiki.com/) last year was the data point that Facebook was at one point losing up to 80% of messages across their update bus. As someone whose expectations are shaped by the five nines style promises of Twitter, its a loss at scale which I can’t possibly fathom. And it wasn’t even an issue in the Facebook community. And when they expire updates out of hot storage to less accessible stores, you don’t notice, because they never offered you the option to page back forever. Contrast again to Twitter whose design (if not content) encourages you to page back forever until you smack up against an arbitrary and surprising limit. (whose exact location has changed over the years)

That is designing with affordances. Don’t let your design make promises you can’t keep.

A much smaller and possibly less well known example is the Flickr activity page, where you can monitor activity on your photos, or photos you’ve expressed interest in. For years this page was framed in the language of “which of these limited time periods are you interested in seeing events in?”, that was the question the page tried to answer. Not, “what has ever happened on my stuff?”. Because that was a much harder, and more expensive question to answer. As part of the Toto launch (new homepage) on Flickr last Fall we explicitly changed our contract with our users. Great photography has a 150 year tradition, and we felt that we could at least try to expose 5 years worth of conversations. (and Flickr usage by our members evolves and changes as their lifes evolve and change, something all good social software should design for, rather then living in the ever present now) Our activity streams go all the way back to the beginning now, but it wasn’t a change undertaken without a lot of thinking, architecture, and engineering.

\[Simon Willison\](http://simonwillison.net/) asked this week about best practice for architecting activity streams. And the answer is, “It depends.” Depends on the scope, scale, access patterns, and affordances you’re building — your contract with your users.

Which is a long way of saying think hard about the promises you make to your users, implicitly or explicitly.

And, Facebook, my friend, what the **HELL** are you thinking? You managed to negotiate the best deal in the business, talk about a racket, and you threw it away for a piece of Twitter’s pain? Are you stupid? Well, best of luck with that.