---
id: 5247
title: 'Paths to Production Confidence, Part 1 of N'
date: '2013-08-08T05:23:02+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=5247'
permalink: /2013/08/08/paths-to-production-confidence-part-1-of-n/
categories:
    - Uncategorized
---

[![](http://kellanio.photos.s3.amazonaws.com/1/photos/7e/1a/48/78/8093795204_10672eb0c4_z.jpg)](http://photos.kellan.io/photos/51035734193@N01/8093795204/)

This started out as a short note explaining the unifying theory behind the Etsy development practices. Then it got out of hand (see also, Mark Twain’s “If I had more time…”). As such I’ve made it “Part 1 of N”, where “Parts 2 .. N” will cover the actual practices and how they relate to the philosophy.

### Why Write This?

We believe in being as open as possible about how we develop and run Etsy — our current best theories, learnings, practices, and tools. Given that openness I often get questions about the hows and whys of given subsets of our engineering practice, e.g. “How do you do testing? How do you know you have enough testing?”. Or monitoring or deployment or what not.

At times, it can be tricky to do the questions and answers justice when taking them piecemeal, because underlying them all is a single shared philosophical premise, that isn’t necessarily obvious. And while I tend to be a pragmatist, favoring the rough and ready over the theoretical, without understanding the theory you can’t reason correctly about trade offs. This post is an attempt to surface that underlying philosophy and the practices it informs.

The theory is a theory of change, and the philosophy is about finding paths to move from risk to confidence.

### A Theory of Change

Etsy is in the change business. As are, definitionally, all startups, nearly all businesses, and most human projects. We’re attempting to add new capacities to the world, and influence behavior around them. And we’re attempting to do it in an uncertain and complex\[1\] environment; we neither know the exact recipe for success, nor we do expect that recipe to stay the same over time. In fact, as a startup, we believe that our ability to respond to a changing environment is the key success factor for our engineering organization. It’s natural to read that sentence and think of change in terms of product changes, but more prosaic examples might include the ability to add new server capacity when the site slows down, or to replace a hard drive when one fails.

But change is risky. This is something most of us believe intuitively, and it’s worth examining the sources of risk in change.

### Why is change risky?

As humans and practitioners why do we associate change with risk? Doing new things inherently contains the risk of doing the wrong thing.

We may for example have reached a ready state in our project. Through a combination of good luck and planning we find ourselves running a system that we understand sufficiently to keep running indefinitely, while a change would implicitly contain the risk of moving from a state of working to a state of not working. Steady state systems are so rare and so often illusory, it’s almost not worth mentioning except we’re fervently entranced with the possibility. Generally the illusion of steady state simply means the needed changes are non-linear, and often the cost of ignoring them will be high.

More practically, very few of us are employed to maintain systems in a stable environment. Even if we hold the pieces we control constant it’s unlikely that our systems will remain stable forever, at which point action is required. Still change is often associated with surprise in a system that hadn’t previously surprised us, and surprise is definitely risky.

The second reason change is risky has to do with how we think about causality, intention and culpability. While we can agree that the ability to choose not to make a change is an illusion, often fear leads people to approximate avoiding change, by avoiding making choices. If I personally avoid making changes to a system and instead wait for outside pressure to force change, or if I simply play the odds and hope that disastrous failure happens rarely enough that it won’t happen on my watch then I can avoid the personal risk of being labelled the root cause of failure. Forced choices avoid the necessity of stating a hypothesis before acting, thereby reducing significantly the opportunity to be personally wrong.

Software development is a complex system existing as it does at the intersection of people, systems, good intentions, confused and changing goals, and overly literal state machines. Past behavior isn’t always an indication of future behavior, and humans are terrible at reasoning about complex systems. As such we’re unlikely to know or have good visibility into whether we’ve reached a steady state and our hypotheses are likely to be wrong. In this uncertain and complex environment we initiate change only when the cost of not making a change overcomes the fear of making it. (e.g. “The server is down” or “You’ll be fired if this feature isn’t done by April 1st”)

As an industry this means though we’re in the change business, often we aren’t very good at it, and we avoid it out of fear.

Different groups attempt to address this tension by:

- raising the cost of not making change (“you’ll be fired”)
- distributing those costs broadly (this is one of the key functions bureaucracy and process serve)
- gaining confidence by addressing the fear

We see Etsy’s engineering practices as spectrum of tools for increasing our confidence in our ability to make change.

Going back to the opening idea of this post, the attempt to answer a question like, “How much testing do you do?”, the answer becomes, “Enough to gain confidence. But testing is just one of the tools we use to gain confidence, so less then a strong testing shop might.” Similarly if someone asks, “How much monitoring is enough?”, the answer is, “We add monitoring until we feel like it gives us confidence, and we’re comfortable striking an 80/20 balance, particularly upfront, because we’re confident if we don’t have the balance right we have other ways of finding out.” In fact how many and how much confidence boosting techniques you need is situational, and depends on how risky your change is. Which speaks to another fundamental piece of our process, small and iterative changes.

Hopefully that starts to explain why, while I think our testing infrastructure (with its try-servers, “Bobs”, static analysis, integration tests, and quality metrics) is awesome, just telling you how we do testing isn’t necessarily going to be useful. Or perhaps it just speaks to my personal penchant for holistic post-modern explanations.

So given a theory(-ish) of risk, change and confidence, what’s the philosophical premise we derive to underly our development practices:

To be able to consistently deliver the kind of resilient and ongoing change the business requires, we deploy a spectrum of confidence gaining techniques.

Or jokingly what we call, “Making failure cheap and easy.”

Before moving on it’s worth calling out that the goal is NOT to be careful. The goal is to be confident. Careful would imply we’re trying to avoid the risk which is fundamental to the change we’re trying to make. Attempting to avoid risk often leads to paralysis, favoring the short term risk avoidance while compromising long term goals. Instead confidence implies you believe to the best of your ability that you understand and have mitigated the risk involved in your change, and are now going to act.

Now, with a little shared theory and philosophy, what does that spectrum of confidence gaining techniques look like?

### Our Paths to Confidence:

- Small and Frequent (and Iterative)
- Testing
- Ramp Ups
- Controls
- Default Access to Open
- Monitoring, Metrics and Anomaly Detection
- People / Culture / Brains

Each of which I’ll talk about in subsequent future posts.

  
  
1\. Complex systems as defined as something that has many diverse, interdependent, adaptive and connected parts points to the uncertainty. Small perturbations can produce large results, and those results could be failures or successes, but in either case: the potential for surprise is high.