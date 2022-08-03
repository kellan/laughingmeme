---
id: 317
title: DateTime.pm
date: '2003-02-12T23:17:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=317'
permalink: /2003/02/12/datetimepm/
typo_id:
    - '315'
mt_id:
    - '398'
link_related:
    - ''
raw_content:
    - "<p>\r\nI finally got a chance to play with \r\n<a href=\\\"http://search.cpan.org/dist/DateTime/\\\">DateTime.pm</a> tonight.  Its the manifestation of a several year long campaign first started by the <a href=\\\"http://reefknot.sf.net\\\">Reefknot</a> folks, to get Perl a standard Date and Time module. (as opposed to the 50+ conflicting, and overlapping solutions we have now) \r\n</p>\r\n<p>\r\nInitial work that <a href=\\\"http://use.perl.org/~autarch/\\\">autarch</a> (aka Dave Rolsky of \r\n<a href=\\\"http://masonhq.com\\\">Mason</a>, and <a href=\\\"http://alzabo.sf.net\\\">Alzabo</a> fame) has done is amazing!  Its a rationale, clean, api to date manipulation, thats easy to building on top of (<a href=\\\"http://use.perl.org/~Matts/\\\">Matts</a> has gutted his popular <a href=\\\"http://search.cpan.org/dist/Time-Piece/\\\">Time::Piece</a>, and turned it into to \r\na <a href=\\\"http://use.perl.org/~Matts/journal/10506\\\">DateTime wrapper</a>), has support (or at least hooks) for internationalization, and the most comprehensive timezone support I\\'ve ever seen. (they even support floating timezones!)\r\n</p>\r\n<p>\r\nThat said, its definitely pre-release, and I ran into a few bugs tonight, mostly relating to timezones which are offsets rather then named. (which are the kind I was working with as I was playing with RSS and that means <a href=\\\"http://www.w3.org/TR/NOTE-datetime\\\">W3CDTF</a>)  Patches are in the \r\n<a href=\\\"http://archive.develooper.com/datetime@perl.org/\\\">mail</a>. (<a href=\\\"http://archive.develooper.com/datetime@perl.org/msg00956.html\\\">1</a>,\r\n<a href=\\\"http://archive.develooper.com/datetime@perl.org/msg00957.html\\\">2</a>,\r\n<a href=\\\"http://archive.develooper.com/datetime@perl.org/msg00958.html\\\">3</a>,\r\n<a href=\\\"http://archive.develooper.com/datetime@perl.org/msg00959.html\\\">4</a>)\r\n</p>\r\n<p>\r\n<a href=\\\"http://archive.develooper.com/datetime@perl.org/msg00009.html\\\">Rich Bowen</a>\r\n<blockquote><em>\r\nExpressing times and dates in any reasonable way sucks. A lot. The person\r\nwho came up with a system in which we have 60 seconds, 60 minutes, 24 hours, 7\r\ndays, (28..31) days, and 12 months as our units needs to be beaten with a\r\nyardstick.</em></blockquote>\r\nYeah!\r\n</p>"
tags:
    - calendaring
    - perl
---

I finally got a chance to play with [DateTime.pm](http://search.cpan.org/dist/DateTime/) tonight. Its the manifestation of a several year long campaign first started by the [Reefknot](http://reefknot.sf.net) folks, to get Perl a standard Date and Time module. (as opposed to the 50+ conflicting, and overlapping solutions we have now)

Initial work that [autarch](http://use.perl.org/~autarch/) (aka Dave Rolsky of [Mason](http://masonhq.com), and [Alzabo](http://alzabo.sf.net) fame) has done is amazing! Its a rationale, clean, api to date manipulation, thats easy to building on top of ([Matts](http://use.perl.org/~Matts/) has gutted his popular [Time::Piece](http://search.cpan.org/dist/Time-Piece/), and turned it into to a [DateTime wrapper](http://use.perl.org/~Matts/journal/10506)), has support (or at least hooks) for internationalization, and the most comprehensive timezone support I’ve ever seen. (they even support floating timezones!)

That said, its definitely pre-release, and I ran into a few bugs tonight, mostly relating to timezones which are offsets rather then named. (which are the kind I was working with as I was playing with RSS and that means [W3CDTF](http://www.w3.org/TR/NOTE-datetime)) Patches are in the [mail](http://archive.develooper.com/datetime@perl.org/). ([1](http://archive.develooper.com/datetime@perl.org/msg00956.html), [2](http://archive.develooper.com/datetime@perl.org/msg00957.html), [3](http://archive.develooper.com/datetime@perl.org/msg00958.html), [4](http://archive.develooper.com/datetime@perl.org/msg00959.html))

[Rich Bowen](http://archive.develooper.com/datetime@perl.org/msg00009.html)

> *Expressing times and dates in any reasonable way sucks. A lot. The person who came up with a system in which we have 60 seconds, 60 minutes, 24 hours, 7 days, (28..31) days, and 12 months as our units needs to be beaten with a yardstick.*

Yeah! 