---
id: 3689
title: 'Facebook Data Store API'
date: '2007-08-10T08:45:21+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/08/10/facebook-data-store-api/'
permalink: /2007/08/10/facebook-data-store-api/
categories:
    - Uncategorized
tags:
    - api
    - facebook
    - 'fluffy clouds'
    - memcache
    - s3
    - service
    - storage
---

When I [heard](http://snarfed.org/space/facebook%20data%20store%20api%20thoughts) that [f.bk](http://facebook.com) had a new [Data Store API](http://wiki.developers.facebook.com/index.php/Data*Store*API\_documentation) was thinking “Wow! That’s actually hard!”.

But if you read it closer you’ll notice the operations map to what can de done in memcache (down to transactions are handled via atomic auto-increments) with a bit of cleverness, and some persistence. (pun intended) Still a nice step towards making developing f.bk apps a bit less eye-pokey-outty

Everyone is building the giant hash table in the [clouds](http://www.sriramkrishnan.com/blog/2007/08/open-source-and-scratching-itches-in.html).