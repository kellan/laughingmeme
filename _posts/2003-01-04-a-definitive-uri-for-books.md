---
id: 259
title: 'A Definitive URI for Books?'
date: '2003-01-04T12:45:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=259'
permalink: /2003/01/04/a-definitive-uri-for-books/
typo_id:
    - '257'
mt_id:
    - '267'
link_related:
    - ''
raw_content:
    - "<p>\r\n<h3>Books, Conversations and Semantic Web</h3>\r\n\r\nI like books.  Alot.  And I think the conversations about books that have arisen on the web are cool.  Projects like <a href=\\\"http://www.onfocus.com/bookwatch/\\\">Bookwatch</a> and <a href=\\\"http://allconsuming.net\\\">All Consuming</a> turn the proliferation of personal reading lists, into a distributed web of collaborative filtering.\r\n</p>\r\n<p>\r\nBut I\\'ve got a problem.  All of these systems require that a book have a uniquely identifying URI (its a sneaky back door application of the semantic web), and the ad-hoc standard that has arisen is Amazon.  There are a number of compelling reasons to link to Amazon:  decent information, community and proffessional reviews, and of the whole associates thing.  And there are reasons <b>not</b> to link to Amazon, primarily I don\\'t want people buying their books from Amazon but from their <b>local bookstores</b>!  Also you are: bombarded with ads for People\\'s magazine, Epson printers, and clean underwear, tracked and indexed, and have handed over the keys to controlling conversations about books to a single corporation who aspire to be just like Walmart, not the what I look for in a Muse.\r\n</p>\r\n<p>\r\n<h3>Alternatives:  In Search of a Definitive URI</h3>\r\n\r\nNow books do have a unique identifier, their ISBN, so at some level we can be linking them across various URI schemes, and while not ideal it might be a place to start.  So what else can we use?\r\n</p>\r\n<p>\r\n<a href=\\\"http://www.booksense.com\\\">Booksense</a> is a possibility.  Booksense is a great idea, its a coalition of independent bookstores that share reccomendations, book certificates, and a website.  Unfortunately their website sucks.  If I want to link to <em>Dubious Hills</em> by Pamela Dean, a book which is out of print, and no one in my zip code happens to be carrying it, I can\\'t.  Booksense only display information about books in your area in a misbegotten idea to drive people locally.  I\\'ve tried several times to talk to them about this failure of their website, that you don\\'t get anywhere by slamming shut the door in peoples face, but they are un-interested in listening.  That and they expose the implementation of the site in their URLs (<code>booksense.com/product/info.jsp?isbn=$ISBN</code>) which does not reccomend the the longevity of their URIs.\r\n</p>\r\n<p>\r\nThe <a href=\\\"http://loc.gov\\\">Library of Congress</a> has potential with a catchy, <b>short</b> URL, besides being logical.  But is even worse.  Its slow, confusing, and does not, as far as I can tell, I expose any sort of permanent URL.\r\n</p>\r\n<p>\r\nThere have been interesting expirements with setting up book sites based on trackbacks, like the <a href=\\\"http://www.jacobsen.no/books\\\">Book Review repository</a>, but I don\\'t believe these have the potential to be the definitive URIs, more likely they will be consumers of such.\r\n</p>\r\n<p>\r\nSo I\\'m kind of out of ideas?  Anybody else have a reccomendation?  \r\n</p>\r\n<p>\r\nIn the short term it would be nice if people writing book crawlers supported Booksense as well, but I understand why they wouldn\\'t as Booksense is really shooting themselves in the foot. (I mentioned this idea to Bookwatch at one point, not sure what became of it)\r\n</p>\r\n<p>\r\nI\\'ve asked <a href=\\\"http://sedesdraconis.com\\\">Aidan</a> to look into how much it costs to get a digital copy of books in print, but I imagine its prohibitively expensive, and not something that is feasible for a personal hobby project.\r\n</p>\r\n<p>\r\n<h3>Closing Thoughts</h3>\r\n\r\nThe one positive idea I\\'ve thought about is, if we can come up with something good, then it would be very simple to get great penetration by adding support for it as a macro in Moveable Type, e.g. <code>ISBN:$ISBN</code> and auto-construct the URL.\r\n</p>\r\n<p>\r\nAnd a final qualifier, if you see me linking to Amazon in the future, know that it is merely a recognition of their dominant position in the market place as the only decent provider of book meta-data, and not a reccomendation to buy from them.\r\n</p>\r\n<p>\r\n<b>update:</b>  <a href=\\\"http://isbn.nu\\\">isbn.nu</a> could be a good book namespace, and <a href=\\\"http://allconsuming.net\\\">allcosuming</a> does support booksense, and more.  see comments for details.\r\n</p>"
tags:
    - allconsuming
    - books
    - community
    - service
---

### Books, Conversations and Semantic Web

I like books. Alot. And I think the conversations about books that have arisen on the web are cool. Projects like [Bookwatch](http://www.onfocus.com/bookwatch/) and [All Consuming](http://allconsuming.net) turn the proliferation of personal reading lists, into a distributed web of collaborative filtering. But I’ve got a problem. All of these systems require that a book have a uniquely identifying URI (its a sneaky back door application of the semantic web), and the ad-hoc standard that has arisen is Amazon. There are a number of compelling reasons to link to Amazon: decent information, community and proffessional reviews, and of the whole associates thing. And there are reasons **not** to link to Amazon, primarily I don’t want people buying their books from Amazon but from their **local bookstores**! Also you are: bombarded with ads for People’s magazine, Epson printers, and clean underwear, tracked and indexed, and have handed over the keys to controlling conversations about books to a single corporation who aspire to be just like Walmart, not the what I look for in a Muse.

### Alternatives: In Search of a Definitive URI

Now books do have a unique identifier, their ISBN, so at some level we can be linking them across various URI schemes, and while not ideal it might be a place to start. So what else can we use?

[Booksense](http://www.booksense.com) is a possibility. Booksense is a great idea, its a coalition of independent bookstores that share reccomendations, book certificates, and a website. Unfortunately their website sucks. If I want to link to *Dubious Hills* by Pamela Dean, a book which is out of print, and no one in my zip code happens to be carrying it, I can’t. Booksense only display information about books in your area in a misbegotten idea to drive people locally. I’ve tried several times to talk to them about this failure of their website, that you don’t get anywhere by slamming shut the door in peoples face, but they are un-interested in listening. That and they expose the implementation of the site in their URLs (`booksense.com/product/info.jsp?isbn=$ISBN`) which does not reccomend the the longevity of their URIs.

The [Library of Congress](http://loc.gov) has potential with a catchy, **short** URL, besides being logical. But is even worse. Its slow, confusing, and does not, as far as I can tell, I expose any sort of permanent URL.

There have been interesting expirements with setting up book sites based on trackbacks, like the [Book Review repository](http://www.jacobsen.no/books), but I don’t believe these have the potential to be the definitive URIs, more likely they will be consumers of such.

So I’m kind of out of ideas? Anybody else have a reccomendation?

In the short term it would be nice if people writing book crawlers supported Booksense as well, but I understand why they wouldn’t as Booksense is really shooting themselves in the foot. (I mentioned this idea to Bookwatch at one point, not sure what became of it)

I’ve asked [Aidan](http://sedesdraconis.com) to look into how much it costs to get a digital copy of books in print, but I imagine its prohibitively expensive, and not something that is feasible for a personal hobby project.

### Closing Thoughts

The one positive idea I’ve thought about is, if we can come up with something good, then it would be very simple to get great penetration by adding support for it as a macro in Moveable Type, e.g. `ISBN:$ISBN` and auto-construct the URL.

And a final qualifier, if you see me linking to Amazon in the future, know that it is merely a recognition of their dominant position in the market place as the only decent provider of book meta-data, and not a reccomendation to buy from them.

**update:** [isbn.nu](http://isbn.nu) could be a good book namespace, and [allcosuming](http://allconsuming.net) does support booksense, and more. see comments for details.