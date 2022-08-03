---
id: 4468
title: 'Using, Abusing and Scaling MySQL at Flickr'
date: '2010-02-08T07:52:20+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2010/02/08/using-abusing-and-scaling-mysql-at-flickr/'
permalink: /2010/02/08/using-abusing-and-scaling-mysql-at-flickr/
categories:
    - Uncategorized
tags:
    - 'using and abusing mysql'
---

(re-published from the [Flickr Code Blog](http://code.flickr.com/blog))

I like [“NoSQL”](http://blog.oskarsson.nu/2009/06/nosql-debrief.html). But at Flickr, MySQL is our hammer, and we use it for nearly everything. It’s our federated data store, our key-value store, and our document store. We’ve built an event queue, and a job server on top of it, a stats feature, and a data warehouse.

We’ve spent the last several years abusing, twisting, and generally mis-using MySQL in ways that could only be called “post relational”. Our founding architect is famously [in print saying](http://www.amazon.com/Building-Scalable-Web-Sites-Applications/dp/0596102356), “Normalization is for sissies.”

So while it’s great to see folks going back to basics — instead of assuming a complex and historically dictated series of interfaces, assuming just disks, RAM, data, and problem to solve — I think it’s also worth looking a bit harder at what you **can** do with MySQL. Because frankly MySQL brings some difficult to beat advantages.

- it is a very well known component. When you’re scaling a complex app everything that can go wrong, will. Anything which cuts down on your debugging time is gold. All the of MySQL’s flags and stats can be a bit overwhelming at times, but they’ve accumulated over time to solve real problems.
- it’s pretty darn fast and stable. Speed is usually one of the key appeals of the new NoSQL architectures, but MySQL isn’t exactly slow (if you’re doing it right). I’ve seen two large, commercial “NoSQL” services flounder, stall and eventually get rewritten on **top** of MySQL. (and you’ve used services backed by both of them)

Over the next bit I’ll be writing a series of blog posts looking into how Flickr scales MySQL to do all sorts of things it really wasn’t intended for. I can’t promise you these are the **best** techniques, they are merely our techniques, there are others, but these are ours. They’re in production, and they work. I was tempted to call the series “YesSQL”, but that really doesn’t capture the spirit, so instead I’m calling it “Using and Abusing MySQL”.

And the first article is on [ticket servers](http://code.flickr.com/blog/2010/02/05/ticket-servers…s-on-the-cheap/).