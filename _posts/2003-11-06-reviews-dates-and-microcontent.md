---
id: 650
title: 'Reviews, Dates, and Microcontent'
date: '2003-11-06T12:10:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=650'
permalink: /2003/11/06/reviews-dates-and-microcontent/
typo_id:
    - '648'
mt_id:
    - '1380'
link_related:
    - ''
raw_content:
    - "<p>\r\nSlowly digging myself out of the back log from a week offline (expect lots of MLPs).  \r\n</p>\r\n<p>\r\nOne thing that happened last week was the release of two very rich new modules for RSS (2.0) that are being batted around the Net this week (both via <a href=\\\"http://decafbad.com\\\">les</a>).  \r\n</p>\r\n\n<p>\r\nThe <a href=\\\"http://www.pmbrowser.info/wiki.pl?RVW\\\">Reviews (RVW)</a> namespace  \\\"is intended to allow machine-readable reviews to be integrated into an RSS feed, thus allowing reviews to be automatically compiled from distributed sources\\\".\r\n</p>\r\n<p>\r\nOver at <a href=\\\"http://www.deanspace.org\\\">Deanspace</a> (which is doing a surprising amount of <a href=\\\"http://www.mail-archive.com/hackers@hack4dean.org/\\\">interesting hacking</a>) the <a href=\\\"http://deanspace.org/node/view/23\\\">Datebook Schema Embedded in RSS (DBRSS)</a> is embedding an vocabulary for discussing very complex information about events including recurring events, location info, event planning (tracks and costs), scheduling (rsvp) requirements, and convener info.\r\n</p>\r\n<p>\r\nIt is awesome to see people really pushing the boundaries of syndication, thinking about new and creative applications that can be enabled by sharing more data in more structured ways.  Which is why I felt a little odd at the very similar disquiet both these specs caused in me.  As I was struggling to articulate it, I found Bitsko\\'s <a href=\\\"http://bitsko.slc.ut.us/blog/feed-data.html\\\">Is a Feed the right place for your Data?</a> which sum up the unease quite nicely.\r\n<blockquote>\r\nReview data has permanence, it has linkability, it has searchability, it has reusability â€” why is it locked in a syndication feed for use pretty much only by syndication clients?\r\n</blockquote>\r\n(this is less true of events, and perhaps DBRSS is less covered by this critique)\r\n</p>\r\n<p>\r\n<h3>Its a HyperTextual World</h3>\r\nBitsko proposes \\\"freeing\\\" the review information by giving it its own url, and syndicating a <em>link</em> to it.  I think this is brilliant, the information at the end of the URLs is a real untapped source of descriptive power, which is why <a href=\\\"http://laughingmeme.org/archives/000292.html\\\">I loved Kevin\\'s proposed mod_link</a>. (though no one else seemed to)  Bitsko demonstrates how if you moved the structured data (e.g. a machine readable review) to its own URL, you could link to it transparently from an HTML document, or any of the various syndication formats, <a href=\\\"http://bitsko.slc.ut.us/blog/feed-data.html\\\">well worth a read</a>.\r\n</p>\r\n<p>\r\n<h3>Don\\'t Forget the People</h3>\r\nA while back I started writing an article I hoped to pitch to <a href=\\\"http://xml.com\\\">XML.com</a> on designing RSS modules.  I never finished it (and XML.com published so many RSS articles, the market seemed played out) but the central idea of the article (in retrospect) was about striking an aesthetic balance in namespaces between readability, and structure.  A good rule of thumb is:\r\n<blockquote>\r\nInclude just enough information in a feed so that an item could be displayed in a meaningful way without having to fetch the remote resource.\r\n</blockquote>\r\n\r\nThere are a few reasons for this\r\n<ul>\r\n<li>RSS has proven that human readable formats get faster uptake; design for the \\\"View Source\\\" style of learning.</li>\r\n<li>Fetching and parsing a remote resource is hard for beginners to do well, like all the neophyte PHP hackers in the world who are just wanting to do something quick.</li>\r\n<li>Strikes a balance between current, and future usage patterns</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<h3>Externalizing Reviews</h3>\r\nTaking the Reviews namespace as an example, as I imagine myself trying to use it, I think I would want to at least know the title of book as well as the title of the review.  This changes the RSS item to read \\\"I am syndicating a review of <em>this book</em>, more information at <em>this URL</em>\\\" instead of just \\\"I am syndicating a review at <em>this URL</em>\\\".\r\n</p>\r\n<p>\r\nI support Bitsko\\'s idea of giving microcontent a home of its own, but lets not sap all of the semantic meaning out of the feeds while we are at it.\r\n</p>\r\n<p>\r\n<h3>Externalizing DateBook RSS</h3>\r\n\r\nSimilarly the bulk of the DateBook schema could be moved an external resource, and the feed could syndication a link to this resource , and the most basic of event information (which is the idea behind <a href=\\\"http://purl.org/rss/1.0/modules/event\\\">mod_event</a>).  DBRSS even has the advantage that unlike reviews, there are already a number of calendaring/scheduling formats available, and there is no need to invent a new one. (I\\'m assuming DateBook schema is something new, the name makes me think of an attempt to XMLize the core Palm calendar, but the fields don\\'t match at all)  \r\n</p>\r\n<p>\r\nDepending on persuasion you have a choice between <a href=\\\"http://www.ietf.org/rfc/rfc2445.txt\\\">iCalendar</a>, <a href=\\\"http://www.w3.org/2002/12/cal/\\\">RDF Calendar</a>, or <a href=\\\"http://www.ietf.org/proceedings/02mar/I-D/draft-ietf-calsch-many-xcal-01.txt\\\">xCal</a>.\r\n</p>\r\n<p>\r\n<h3>Transient Metadata</h3>\r\nYou\\'ll notice (or at least, I notice) that this is a different approach then what I took with my rough sketch of <a href=\\\"http://laughingmeme.org/archives/000947.html\\\">mod_weather</a> (an admittedly much simpler namespace), where I packed all of the information into the feed.  \r\n</p>\r\n<p>\r\nThe difference is current weather conditions (and even forecasts) are about the most transient information imaginable.  They are also laden with some of the worst, most obscure formats to ever reach wide circulation.  There is no added benefit to giving the current weather conditions for this instant in time a home of its own.\r\n</p>\r\n<p>\r\n<h3>More on DBRSS</h3>\r\nI think the story on DBRSS is less cut and dry then RVW, I\\'ve certainly felt the tug of a richer event syndication format myself, perhaps one less unencumbered by <a href=\\\"http://calsch.org\\\">Calsch\\'s</a> years of work.  A couple of quick thoughts that came up looking at it.\r\n<ul>\r\n<li>Durations instead of endtimes is a seductive choice, but I\\'ve found that if you\\'re storing your events in a SQL datastore, endtimes are much more useful.</li>\r\n<li>\r\nTracks I don\\'t understand, and seem a little off to me.  It seems like an attempt to cram a calendar into an event.\r\n</li>\r\n<li>\r\nWouldn\\'t it be better to use a geo vocabulary to describe the location, rather then larding it into your calendaring one?\r\n</li>\r\n</ul>\r\n</p>"
tags:
    - calendaring
    - design
    - events
    - microformats
    - rss
    - syndication
---

Slowly digging myself out of the back log from a week offline (expect lots of MLPs).

One thing that happened last week was the release of two very rich new modules for RSS (2.0) that are being batted around the Net this week (both via [les](http://decafbad.com)).

The [Reviews (RVW)](http://www.pmbrowser.info/wiki.pl?RVW) namespace “is intended to allow machine-readable reviews to be integrated into an RSS feed, thus allowing reviews to be automatically compiled from distributed sources”.

Over at [Deanspace](http://www.deanspace.org) (which is doing a surprising amount of [interesting hacking](http://www.mail-archive.com/hackers@hack4dean.org/)) the [Datebook Schema Embedded in RSS (DBRSS)](http://deanspace.org/node/view/23) is embedding an vocabulary for discussing very complex information about events including recurring events, location info, event planning (tracks and costs), scheduling (rsvp) requirements, and convener info.

It is awesome to see people really pushing the boundaries of syndication, thinking about new and creative applications that can be enabled by sharing more data in more structured ways. Which is why I felt a little odd at the very similar disquiet both these specs caused in me. As I was struggling to articulate it, I found Bitsko’s [Is a Feed the right place for your Data?](http://bitsko.slc.ut.us/blog/feed-data.html) which sum up the unease quite nicely.

> Review data has permanence, it has linkability, it has searchability, it has reusability â€” why is it locked in a syndication feed for use pretty much only by syndication clients?

(this is less true of events, and perhaps DBRSS is less covered by this critique) ### Its a HyperTextual World

Bitsko proposes “freeing” the review information by giving it its own url, and syndicating a *link* to it. I think this is brilliant, the information at the end of the URLs is a real untapped source of descriptive power, which is why [I loved Kevin’s proposed mod\_link](http://laughingmeme.org/archives/000292.html). (though no one else seemed to) Bitsko demonstrates how if you moved the structured data (e.g. a machine readable review) to its own URL, you could link to it transparently from an HTML document, or any of the various syndication formats, [well worth a read](http://bitsko.slc.ut.us/blog/feed-data.html). ### Don’t Forget the People

A while back I started writing an article I hoped to pitch to [XML.com](http://xml.com) on designing RSS modules. I never finished it (and XML.com published so many RSS articles, the market seemed played out) but the central idea of the article (in retrospect) was about striking an aesthetic balance in namespaces between readability, and structure. A good rule of thumb is: > Include just enough information in a feed so that an item could be displayed in a meaningful way without having to fetch the remote resource.

There are a few reasons for this

- RSS has proven that human readable formats get faster uptake; design for the “View Source” style of learning.
- Fetching and parsing a remote resource is hard for beginners to do well, like all the neophyte PHP hackers in the world who are just wanting to do something quick.
- Strikes a balance between current, and future usage patterns

### Externalizing Reviews

Taking the Reviews namespace as an example, as I imagine myself trying to use it, I think I would want to at least know the title of book as well as the title of the review. This changes the RSS item to read “I am syndicating a review of *this book*, more information at *this URL*” instead of just “I am syndicating a review at *this URL*“. I support Bitsko’s idea of giving microcontent a home of its own, but lets not sap all of the semantic meaning out of the feeds while we are at it.

### Externalizing DateBook RSS

Similarly the bulk of the DateBook schema could be moved an external resource, and the feed could syndication a link to this resource , and the most basic of event information (which is the idea behind [mod*event*](http://purl.org/rss/1.0/modules/event)). DBRSS even has the advantage that unlike reviews, there are already a number of calendaring/scheduling formats available, and there is no need to invent a new one. (I’m assuming DateBook schema is something new, the name makes me think of an attempt to XMLize the core Palm calendar, but the fields don’t match at all)

Depending on persuasion you have a choice between [iCalendar](http://www.ietf.org/rfc/rfc2445.txt), [RDF Calendar](http://www.w3.org/2002/12/cal/), or [xCal](http://www.ietf.org/proceedings/02mar/I-D/draft-ietf-calsch-many-xcal-01.txt).

### Transient Metadata

You’ll notice (or at least, I notice) that this is a different approach then what I took with my rough sketch of [modweather](http://laughingmeme.org/archives/000947.html) (an admittedly much simpler namespace), where I packed all of the information into the feed.  
The difference is current weather conditions (and even forecasts) are about the most transient information imaginable. They are also laden with some of the worst, most obscure formats to ever reach wide circulation. There is no added benefit to giving the current weather conditions for this instant in time a home of its own.

### More on DBRSS

I think the story on DBRSS is less cut and dry then RVW, I’ve certainly felt the tug of a richer event syndication format myself, perhaps one less unencumbered by [Calsch’s](http://calsch.org) years of work. A couple of quick thoughts that came up looking at it. - Durations instead of endtimes is a seductive choice, but I’ve found that if you’re storing your events in a SQL datastore, endtimes are much more useful.
- Tracks I don’t understand, and seem a little off to me. It seems like an attempt to cram a calendar into an event.
- Wouldn’t it be better to use a geo vocabulary to describe the location, rather then larding it into your calendaring one?