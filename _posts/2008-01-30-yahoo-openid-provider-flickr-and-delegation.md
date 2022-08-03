---
id: 3763
title: 'Yahoo! OpenID Provider, Flickr and Delegation'
date: '2008-01-30T13:03:50+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2008/01/30/yahoo-openid-provider-flickr-and-delegation/'
permalink: /2008/01/30/yahoo-openid-provider-flickr-and-delegation/
categories:
    - Uncategorized
tags:
    - flickr
    - identity
    - openid
    - openid2
    - yahoo
---

The \[Yahoo OP\](http://openid.yahoo.com) is \[officially live today\](http://developer.yahoo.net/blog/archives/2008/01/yahoo-openid-beta.html)! Congrats to Shreyas and Allen for shepherding this for *many* months!

If you’re a Flickr user you can your photos URL (`http://flickr.com/photos/yourname`), or if you’re signing into a RP that supports XRDS, just use `flickr.com`.

You’ll also want to visit \[openid.yahoo.com\](http://openid.yahoo.com), and click on “Get Started” and customize your OpenID identifier.

Personally I just use `laughingmeme.org` as my OpenID. I had to futz around a bit to figure out OpenID 2.0’s slightly different syntax, but if you view source on this blog you’ll now see in the header:

```
<link rel="openid2.provider" href="https://open.login.yahooapis.com/openid/op/auth">
<link rel="openid2.local_id" href="http://www.flickr.com/photos/kellan">

```