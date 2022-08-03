---
id: 4924
title: 'Cost of false positives'
date: '2011-07-23T15:55:39+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4924'
permalink: /2011/07/23/cost-of-false-positives/
categories:
    - Uncategorized
---

[![](http://farm7.static.flickr.com/6014/5953336206_428a6250ff_z.jpg)](http://www.flickr.com/photos/mireille/5953336206/in/faves-kellan/)

I see Twitter getting beaten up a lot for not deleting the spammers faster. Etsy gets beaten up for not deleting the “resellers” faster. Flickr used to get yelled at for not catching the photo stealers or porn spammers faster.

*“It’s so fucking easy, they’re right over there, here, let me show them to you, what’s your problem?”*

This comes from not understanding the cost benefit ratio of false positives in identifying abuse of a social site at scale.

Imagine you’ve got a near perfect model for detecting spammers on Twitter. Say, [Joe’s](http://stu.mp) perfectly reasonable model of [“20+ tweets that matched ‘^@[\\w]+ http://'”](https://twitter.com/#!/joestump/status/94845660163088384). Joe is (presumably hyperbolically) claiming 99% accuracy for his model. And for the moment we’ll imagine he is right. Even at 99% accuracy, that means this algorithm is going to be incorrectly flagging roughly **2 million tweets per day as spam that are actually perfectly legitimate**.

If you’ve never run a social software site (which Joe of course has, but for the folks who haven’t) let me tell you: these kinds of **false positives are expensive**.

They’re really expensive. They burn your most precious resources when running a startup: good will, and time. Your support staff has to address the issues (while people are yelling at them), your engineers are in the database mucking about with columns, until they finally break down about build an unbanning tool which inevitably doesn’t scale to really massive attacks, or new interesting attack vectors, which means you’re either back monkeying with the live databases or you’ve now got a team of engineers dedicated just to building tools to remediate false positives. And now you’re burning engineer cycles, engineering motivation (cleaning up mistakes sucks), staff satisfaction AND community good will. That’s the definition of expensive.

And this is all a TON of work.

And while this is all going down you’ve got another part of your company dedicated to making creating new accounts AS EASY AS HUMANLY POSSIBLE. Which means when you do find and nuke a real spammer, they’re back in minutes. **So now you’re waging asymmetric warfare AGAINST YOURSELF.**

Fine, fine, fine whatever. You’ll build a better model. You know, this is a social site, we’ll use social signals. People can click and say “This is spam” and then when, I don’t know, 10 people say a tweet is spam, we’ll delete it and ban that account. But you know, people are fuckwits, and people are confused, and people are unpredictable and the scope of human activity **at scale** is amazingly wide and vast and deep, so **a simple additive, easy to explain, fundamentally fair model isn’t going to work.** (protip: if you’re site is growing quickly, make sure to use variables for those threshold numbers, otherwise you might DOS yourself)

But you’re smart, so now you’ve got a machine learning model, that’s feeding social signals into a real time engine, that’s bubbling up the top 0.01% of suspicious cases (and btw if you’ve gotten this far, you’re really really good, and you’re probably wasting your time on whatever silly sheep poking/nerd herding site you’re working on, so [call me](mailto:kellan@pobox.com), I’ve got something more meaningful for you to do), and in at least Twitter’s case we’re now talking about a mere 200,000 potential spam tweets to be manually reviewed daily.

How many people do you need to review 200k spam tweets per day? How many desks do they need? Are you doing to do that in house or are you going to outsource it? And if you outsource it, how are you going to explain the cultural peculiarities of your community, because while your product might have gone global, you’re still your own funky nation of behavior, and some things that look strange (say, [retweeting every mention of your own name](https://twitter.com/#!/davemcclure)) are actual part of your community norm.

And if you don’t explain those peculiarities, how long do you think it is until this small army you’ve assembled to review 200k tweets a day, gets tired, makes a mistake and accidentally deletes one of your social network hub early adopter types (because the sad truth is **early adopters are outliers in the data**, and they look funny).

And what do you think the operational cost of making that mistake is? (see also: [*fakesters*](http://www.google.com/search?q=fakesters))

Also, whats your data recovery strategy look like on a per account basis?

There are solutions. Some of them are straightforward. Many of them aren’t. None of them are as easy as you think they are unless you’ve been there. And I’m happy to talk to you about them over a beer, but just posting them on a blog, well that would be telling other people’s secrets. And they already have a really hard job.

A much more cogent blog post by Bruce Schneier from 2006, on [Data Mining for Terrorists](http://www.schneier.com/blog/archives/2006/03/data*mining*for.html) really drills into this problem from a theoretical model. (where “for Terrorists” is to be taken in the “finding Terrorists” sense and not in the “for Dummies” sense) (**update:** via [rafe](http://rc3.org/2011/07/24/screening-systems-and-the-base-rate-fallacy/) a good [BBC article on base rate fallacy](http://news.bbc.co.uk/2/hi/uk\_news/magazine/8153539.stm))

The topic has been on my mind lately, as [Twitter recently banned my account by accident, along with a number of other very early accounts](http://laughingmeme.org/2011/06/02/sorry-we-did-something-wrong-twitter-on-suspending-my-account/), but never acknowledged it. And at Etsy last week we had an adaptive process go rogue and ban a tiny number of early adopters, an issue we posted about [on our status blog](http://etsystatus.com/2011/07/20/some-accounts-mistakenly-deactivated/), and [in the forums](http://www.etsy.com/teams/7716/announcements/discuss/8723148/page/1/). In both cases there was a full recovery of all the account data and state.

Photo by: [Superchou](http://www.superchou.com)