---
id: 528
title: 'Investigating Class::DBI'
date: '2003-07-24T20:24:50+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=528'
permalink: /2003/07/24/investigating-classdbi/
typo_id:
    - '526'
mt_id:
    - '1014'
link_related:
    - ''
raw_content:
    - "<p>\nI recently read <a href=\\\"http://search.cpan.org/author/KAKE/\\\">Kate Pugh\\'s</a> <a href=\\\"http://www.perl.com/lpt/a/2003/07/15/nocode.html\\\">How to Avoid Writing Code</a> on using <a href=\\\"http://template-toolkit.org\\\">Template Toolkit</a>, one of my all time favorite technologies, with <a href=\\\"http://class-dbi.com/\\\">Class::DBI</a> [<a href=\\\"http://search.cpan.org/dist/Class-DBI/\\\">cpan</a>], a technology I have by turns avoided and been intrigued by.  And it was enough to make a believer out of me, or at least move \\\"look at Class::DBI\\\" quickly up the todo list.\n</p>\n<p>\nFor rapid prototyping Class::DBI seems to win hands down.  I haven\\'t played with it enough to find its quirks, limitations and oddities.  I\\'m sure they are there, but that comes with the territory with object-relational mappers.  But the simple create, retrieve, update, delete looks sweet.\n</p>\n<p>\nHowever I\\'m a little unclear on how it integrates with larger projects, perhaps projects with more abstraction.  This could be simply because all the examples are very trivial, or it could be because that is what Class::DBI is suited for.\n</p>\n<p>\nMy instinct is that rather then using Class::DBI to implement your core model, you could use it to implement a set of object peers responsible for marshaling the data into and out of the database.\n</p>\n<p>\nAlso what work (if any) has been done on adding hooks for transparent caching?  Your O-R mapper is often the ideal place to maintain a cache of objects (either in <a href=\\\"http://search.cpan.org/dist/Cache-Cache/lib/Cache/MemoryCache.pm\\\">memory</a>, or in the <a href=\\\"http://search.cpan.org/dist/Cache-Cache/lib/Cache/FileCache.pm\\\">filesystem</a>) that result from expensive queries.\n</p>\n<p>\nDoes anyone know of a good example of Class::DBI being used with a moderately complex object hierarchy (one with inheritance) and moderately complex SQL requirements that are perhaps outside of the CRUD basics that Class::DBI nails so well?\n</p>"
---

I recently read [Kate Pugh’s](http://search.cpan.org/author/KAKE/) [How to Avoid Writing Code](http://www.perl.com/lpt/a/2003/07/15/nocode.html) on using [Template Toolkit](http://template-toolkit.org), one of my all time favorite technologies, with [Class::DBI](http://class-dbi.com/) [[cpan](http://search.cpan.org/dist/Class-DBI/)], a technology I have by turns avoided and been intrigued by. And it was enough to make a believer out of me, or at least move “look at Class::DBI” quickly up the todo list.

For rapid prototyping Class::DBI seems to win hands down. I haven’t played with it enough to find its quirks, limitations and oddities. I’m sure they are there, but that comes with the territory with object-relational mappers. But the simple create, retrieve, update, delete looks sweet.

However I’m a little unclear on how it integrates with larger projects, perhaps projects with more abstraction. This could be simply because all the examples are very trivial, or it could be because that is what Class::DBI is suited for.

My instinct is that rather then using Class::DBI to implement your core model, you could use it to implement a set of object peers responsible for marshaling the data into and out of the database.

Also what work (if any) has been done on adding hooks for transparent caching? Your O-R mapper is often the ideal place to maintain a cache of objects (either in [memory](http://search.cpan.org/dist/Cache-Cache/lib/Cache/MemoryCache.pm), or in the [filesystem](http://search.cpan.org/dist/Cache-Cache/lib/Cache/FileCache.pm)) that result from expensive queries.

Does anyone know of a good example of Class::DBI being used with a moderately complex object hierarchy (one with inheritance) and moderately complex SQL requirements that are perhaps outside of the CRUD basics that Class::DBI nails so well?