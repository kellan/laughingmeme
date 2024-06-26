---
id: 4469
title: 'Ticket Servers: Distributed Unique Primary Keys on the Cheap'
date: '2010-02-08T07:53:39+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4469'
permalink: /2010/02/08/ticket-servers-distributed-unique-primary-keys-on-the-cheap/
categories:
    - Uncategorized
tags:
    - 'using and abusing mysql'
---

(re-published from the [Flickr Code Blog](http://code.flickr.com/blog))

This is the first post in the [Using, Abusing and Scaling MySQL at Flickr](http://code.flickr.com/blog/2010/02/08/using-abusing-and-scaling-mysql-at-flickr/) series.

Ticket servers aren’t inherently interesting, but they’re an important building block at Flickr. Among other things they are core to topics we’ll be talking about later, like sharding and master-master. Ticket servers give us globally (Flickr-wide) unique integers to serve as primary keys in our distributed setup.

### Why?

Sharding (aka [data partioning](http://en.wikipedia.org/wiki/Partition_(database))) is how we scale Flickr’s datastore. Instead of storing all our data on one really big database, we have lots of databases, each with some of the data, and spread the load between them. Sometimes we need to migrate data between databases, so we need our primary keys to be globally unique. Additionally our MySQL shards are built as master-master replicant pairs for resiliency. This means we need to be able to guarantee uniqueness within a shard in order to avoid key collisions. We’d love to go on using MySQL auto-incrementing columns for primary keys like everyone else, but MySQL can’t guarantee uniqueness across physical and logical databases.

### GUIDs?

Given the need for globally unique ids the obvious question is, why not use GUIDs? Mostly because GUIDs are big, and they index badly in MySQL. One of the ways we keep MySQL fast is we index everything we want to query on, and we only query on indexes. So index size is a key consideration. If you can’t keep your indexes in memory, you can’t keep your database fast. Additionally ticket servers give us sequentiality which has some really nice properties including making reporting and debugging more straightforward, and enabling some caching hacks.

### Consistent Hashing?

Some projects like [Amazon’s Dynamo](http://www.allthingsdistributed.com/2007/10/amazons_dynamo.html) provide a consistent hashing ring on top of the datastore to handle the GUID/sharding issue. This is better suited for write-cheap environments (e.g. [LSMTs](http://portal.acm.org/citation.cfm?id=230826)), while MySQL is optimized for fast random reads.

### Centralizing Auto-Increments

If we can’t make MySQL auto-increments work across multiple databases, what if we just used one database? If we inserted a new row into this one database every time someone uploaded a photo we could then just use the auto-incrementing ID from that table as the primary key for all of our databases.

Of course at 60+ photos a second that table is going to get pretty big. We can get rid of all the extra data about the photo, and just have the ID in the centralized database. Even then the table gets unmanageably big quickly. And there are comments, and favorites, and group postings, and tags, and so on, and those all need IDs too.

### REPLACE INTO

A little over a decade ago MySQL shipped with a non-standard extension to the ANSI SQL spec, [“REPLACE INTO”](http://dev.mysql.com/doc/refman/5.0/en/replace.html). Later [“INSERT ON DUPLICATE KEY UPDATE”](http://dev.mysql.com/doc/refman/5.0/en/insert-on-duplicate.html) came along and solved the original problem much better. However REPLACE INTO is still supported.

> REPLACE works exactly like INSERT, except that if an old row in the table has the same value as a new row for a PRIMARY KEY or a UNIQUE index, the old row is deleted before the new row is inserted.

This allows us to atomically update in a place a single row in a database, and get a new auto-incremented primary ID.

### Putting It All Together

A Flickr ticket server is a dedicated database server, with a single database on it, and in that database there are tables like `Tickets32` for 32-bit IDs, and `Tickets64` for 64-bit IDs.

The Tickets64 schema looks like:

```
CREATE TABLE `Tickets64` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `stub` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `stub` (`stub`)
) ENGINE=MyISAM

```

`SELECT * from Tickets64` returns a single row that looks something like:

```
+-------------------+------+
| id                | stub |
+-------------------+------+
| 72157623227190423 |    a |
+-------------------+------+

```

When I need a new globally unique 64-bit ID I issue the following SQL:

```
REPLACE INTO Tickets64 (stub) VALUES ('a');
SELECT LAST_INSERT_ID();

```

### SPOFs

You really really don’t know want provisioning your IDs to be a single point of failure. We achieve “high availability” by running two ticket servers. At this write/update volume replicating between the boxes would be problematic, and locking would kill the performance of the site. We divide responsibility between the two boxes by dividing the ID space down the middle, evens and odds, using:

```
TicketServer1:
auto-increment-increment = 2
auto-increment-offset = 1

TicketServer2:
auto-increment-increment = 2
auto-increment-offset = 2

```

We round robin between the two servers to load balance and deal with down time. The sides do drift a bit out of sync, I think we have a few hundred thousand more odd number objects then evenly numbered objects at the moment, but this hurts no one.

### More Sequences

We actually have more tables then just `Tickets32` and `Tickets64` on the ticket servers. We have a sequences for Photos, for Accounts, for [OfflineTasks](http://code.flickr.com/blog/2008/09/26/flickr-engineers-do-it-offline/), and for Groups, etc. OfflineTasks get their own sequence because we burn through so many of them we don’t want to unnecessarily run up the counts on other things. Groups, and Accounts get their own sequence because we get comparatively so few of them. Photos have their own sequence that we made sure to sync to our old auto-increment table when we cut over because its nice to know how many photos we’ve had uploaded, and we use the ID as a short hand for keeping track.

### So There’s That

It’s not particularly elegant, but it works shockingly well for us having been in production since Friday the 13th, January 2006, and is a great example of the Flickr engineering [dumbest possible thing that will work](http://laughingmeme.org/2009/09/29/try-coding-dear-boy/) design principle.

More soon.