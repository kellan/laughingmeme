---
id: 4235
title: 'Flickr, Twitter, OAuth: A Secret History'
date: '2009-07-01T09:42:54+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4235'
permalink: /2009/07/01/flickr-twitter-oauth-a-secret-history/
categories:
    - Uncategorized
tags:
    - community
    - flickr
    - history
    - oauth
    - twitter
---

I remember it as a dark and stormy night, that seems unlikely, but I’m sure it was late and chilly and damp.

I remember being tired from a long day in the \[salt mines\](http://flickr.com); that was during a period when I was always tired after work.

I remember there being whiskey, and knowing \[@maureen\](http://twitter.com/maureen), that seems likely.

I’d just won some \[internal\](http://yahoo.com) battles regarding delegated auth, and implemented Google AuthSub for the new Blogger Beta, as well as Amazon auth for a side project. So when I wanted to share photos from Flickr to Twitter, I knew it wasn’t going to be over HTTP Basic Auth.

A few weeks earlier \[@blaine\](http://twitter.com/blaine) and \[@factoryjoe\](http://twitter.com/factoryjoe) had pulled me a into a project called OpenAuth that they’d been talking about for a couple of months — an alternative to yet another auth standard, and a solution for authenticating sites using OpenID.

So one late, damp night along \[Laguna St.\](http://maps.google.com/maps?f=q&amp;source=s\_q&amp;hl=en&amp;geocode=&amp;q=409+Laguna+St.,+San+Francisco,+CA&amp;sll=37.77493,-122.42574&amp;sspn=0.004766,0.009109&amp;ie=UTF8&amp;hq=&amp;hnear=409+Laguna+St,+San+Francisco,+California+94102&amp;z=16) with whiskey, we did a pattern extraction, identifying the minimal possible set of features to offer compatibility against existing best practice API authorization protocols. And wrote down the half pager that became the very first draft of the \[OAuth\](http://oauth.net) spec.

That spec wasn’t the final draft. That came later, after an open community standardization process allowing experts from the security, web, and usability community to weigh in and iterate on the design. But many of those decisions (and some of the mistakes) from that night made it into the final version.

Yesterday, a little over two years later, we finally shipped \[Flickr2Twitter\](http://blog.flickr.net/en/2009/06/30/twitter-your-flickr/).

So it was nice yesterday when people commented on the integration:

> “Uses OAuth!” “Doesn’t ask for your Twitter password” “Great use of OAuth”.

And I thought to myself, “It better be, this is what OAuth was invented for — literally”.