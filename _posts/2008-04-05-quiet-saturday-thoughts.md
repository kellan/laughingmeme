---
id: 3795
title: 'Quiet Saturday Thoughts'
date: '2008-04-05T19:12:33+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2008/04/05/quiet-saturday-thoughts/'
permalink: /2008/04/05/quiet-saturday-thoughts/
categories:
    - Uncategorized
tags:
    - architecture
    - 'beyond lamp'
    - 'big table'
    - 'fluffy clouds'
    - google
    - messaging
    - twitter
---

Thinking again about distributed log oriented writes as a better architecture for a whole class of persistent data we need to deal with. Atomic appends are actually one of the least appreciated features in GFS, and certainly the most critical feature \[HDFS\](http://hadoop.apache.org/core/docs/current/hdfs\_design.html) is missing. Right now I’m not even sure I’m supposed to be worrying, my back of the napkins are saying maybe 10-20mil daily appends across 3-4mil queues is just like running a big mail install right? (remind me to look at \[Maildir\](http://cr.yp.to/proto/maildir.html) again)

Also contrary to \[TC’s breathy article\](http://www.techcrunch.com/2008/04/04/source-google-to-launch-bigtable-as-web-service/) \[BigTable\](http://labs.google.com/papers/bigtable.html) is not much like \[SimpleDB\](http://www.amazon.com/b?ie=UTF8&amp;node=342335011) (other then they’re both ways of storing and retrieving data which aren’t MySQL) in that it doesn’t give you querying, just limited range scans on rows, and it seems to be really really expensive to add new columns (at least whenever I talk to Gengineers, they seem to flinch at the concept)

Meanwhile I’m still waiting on \[DevPay\](http://www.amazon.com/b?ie=UTF8&amp;node=342429011) for SimpleDB, before I get into it in a big big way.