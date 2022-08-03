---
id: 3913
title: 'A Couple of Caveats on Queuing'
date: '2008-07-07T11:02:49+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=3913'
permalink: /2008/07/07/a-couple-of-caveats-on-queuing/
categories:
    - Uncategorized
tags:
    - architecture
    - messaging
    - programming
    - queue
    - scalability
    - twitter
---

Les’ \[“Delight Everyone”\](http://decafbad.com/blog/2008/07/04/queue-everything-and-delight-everyone) post is latest greatest addition to the \[17th letter of the alphabet for savior\](http://randomfoo.net/blog/id/4182) conversation.

And believe me I’m a huge fan, and am busy carving out a night sometime this week to play with the \[RabbitMQ/XMPP bridge\](http://www.lshift.net/blog/2008/07/01/rabbitmq-xmpp-gateway-released) (/waves \[hi Alexis\](http://del.icio.us/alexisrichardson)).

**But** …. there are a couple of caveats:

### 1) Some writes need to be real time.

Les notes this as well, but I just wanted to emphasize because really, they do.

If you can’t see your changes take effect in a system your understanding of cause and effect breaks down. It doesn’t matter that your understanding is *wrong*, you still need one to function. Ideally a physical analogy too. There are no real world effects that get queued for later application. Violate the principle of (falsely) seeming to respect real world cause and effect and your users will remain forever confused.

del.icio.us showing you the wrong state when you use the inline editing tool, and Flickr taking a handful of seconds to index a newly tagged photo are both good examples of subtly broken interfaces that can really throw people.

My data, now real time. Everyone else can wait (how long depends on how social your users are).

### 2) You’ve got to process that queue eventually.

Ideally you can add processing boxes in parallel forever but if your dequeuing rate falls below your queuing rate you are, in technical terms, screwed.

Think about it, if you’re falling behind 1 event per second, processing 1,000,000 events a second, but adding 1,000,001 for example, at the end of the day your 86,400 events in debt and counting. It’s likes losing money on individual sales, but trying to make it up in volume.

Good news: \[Traffic is spiky\](http://radar.oreilly.com/archives/2008/06/the-new-internet-traffic-spike.html) and most sites see daily cycles with quiet times.

Bad news: Many highly tuned systems exhibit slow down properties as their backlogs increase. Like a credit card, processing debt can get exponentially unmanageable.

In practice this means that most of the time your queue consumers should be sitting around bored. (see Allspaw’s \[Capacity Planning slides\](http://www.slideshare.net/jallspaw/velocity2008-capacity-management1-484676) for more on that theme.)

If you can’t guarantee those real time writes for thems that cares, and mostly bored queue consumers the rest of the time then your queues might not delight you after all.

See also: \[Twitter, or Architecture Will Not Save You\](http://laughingmeme.org/2008/05/28/twitter-or-architecture-will-not-save-you/)