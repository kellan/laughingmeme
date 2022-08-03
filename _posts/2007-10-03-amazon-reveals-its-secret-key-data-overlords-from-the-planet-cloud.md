---
id: 3712
title: 'Amazon reveals its secret key-data overlords from the planet Cloud'
date: '2007-10-03T19:49:48+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/10/03/amazon-reveals-its-secret-key-data-overlords-from-the-planet-cloud/'
permalink: /2007/10/03/amazon-reveals-its-secret-key-data-overlords-from-the-planet-cloud/
link_related:
    - 'http://www.allthingsdistributed.com/2007/10/amazons_dynamo.html'
categories:
    - Uncategorized
tags:
    - amazon
    - clouds
    - dynamo
    - 'fluffy clouds'
    - 'high availability'
    - 'key data'
    - service
---

Only the barest of glances at [Dynamo](http://www.allthingsdistributed.com/2007/10/amazons*dynamo.html) so far, and by far the most interesting pieces are going to be how they do the scalable high availability, and of course we’re talking about “[Werner Vogels Scalability(tm)](http://www.allthingsdistributed.com/2006/03/a*word*on*scalability.html)”, but I was immediately struck, [as Sam was](http://intertwingly.net/blog/2007/10/03/Key-Data ), by the this pattern key+data we’re seeing:

- memcached (everybody is using it)
- CouchDb (everybody is talking about it)
- Berkely DB (Bloglines and Yahoo to name just two, plus [Google](http://www.google.com/url?sa=t&amp;ct=res&amp;cd=1&amp;url=http%3A%2F%2Fwww.oracle.com%2Fcustomers%2Fsnapshots%2Fgoogle-oracle-berkeley-db-casestudy.pdf&amp;ei=6mAER7-mAoaUgQOh95DrAw&amp;usg=AFQjCNH5ItttgUP9p5QVke76BnVtltqUBA&amp;sig2=f1qn*GPg8O-jf*S\_jjLyLQ), thanks [Steve](http://saladwithsteve.com))
- [Facebook Data Store API](http://laughingmeme.org/2007/08/10/facebook-data-store-api/)
- and now Dynamo.

Meanwhile Assaf argues well that [not all keys are created equal](http://blog.labnotes.org/2007/10/03/not-all-keys-created-equal/)

[![speedy](http://farm1.static.flickr.com/54/139446760_ada218762a.jpg)](http://www.flickr.com/photos/joshuaofcalifornia/139446760/ "Photo Sharing")

Uploaded by [joshua of california](/photos/joshuaofcalifornia/) on 2 May 06, 6.19PM PDT.