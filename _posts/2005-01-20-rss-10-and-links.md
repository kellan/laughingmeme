---
id: 1006
title: 'RSS 1.0 and Links'
date: '2005-01-20T09:59:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1006'
permalink: /2005/01/20/rss-10-and-links/
typo_id:
    - '1004'
mt_id:
    - '2731'
link_related:
    - ''
raw_content:
    - "I swear I get closer to walking away from RSS 1.0 every day and not looking back.  If Userland RSS wasn\\'t such a freak show I\\'d be gone already.  One of my greatest frustrations with RSS 1.0 has been the refusal for **years** to add an equivalent to the [Atom link construct](http://www.mnot.net/drafts/draft-nottingham-atom-format-02.html), on the grounds that RDF already provides this.  You just can\\'t add it to your feeds today, or even tomorrow.\r\n\r\n\nThe thread recently re-emerged [mod_link deprecated](http://groups.yahoo.com/group/rss-dev/message/6950), and Ken\\'s [postscript today](http://groups.yahoo.com/group/rss-dev/message/6954) for me really sums up the rss-dev\\'s working groups total disinterest in non-RDF solutions, and lack of commitment to running code.\r\n\r\n> P.S. I understand that a follow-on discussion could happen about what\r\n> constitutes a \\\"generic link\\\", but the protracted discussion on\r\n> atom-syntax resolved that there\\'s no such thing as a \\\"generic link\\\",\r\n> it\\'s just that some people feel more comfortable \\\"extending\\\" a syntax\r\n> at a bottlneck point where they believe they don\\'t have to create a\r\n> namespace or URI and new XML elements. RDF says, \\\"get past it, it\\'s\r\n> simpler when you do\\\".\r\n\r\nIt isn\\'t easier.  It is harder to understand, harder to explain, provides less guidance to new developers, and makes it that much more difficult to write a parser.  Obviously I\\'m in favor of namespaces, but not allowing a simple link syntax is why all the innovation is currently happening in RSS 2.0 space. (despite any misgivings regarding  \\\"podcasting\\\" it embraces my understanding of RSS as generic webservice stream syntax, an insight that really opens up possibilities)"
tags:
    - atom
    - rss
---

I swear I get closer to walking away from RSS 1.0 every day and not looking back. If Userland RSS wasn’t such a freak show I’d be gone already. One of my greatest frustrations with RSS 1.0 has been the refusal for **years** to add an equivalent to the [Atom link construct](http://www.mnot.net/drafts/draft-nottingham-atom-format-02.html), on the grounds that RDF already provides this. You just can’t add it to your feeds today, or even tomorrow.

The thread recently re-emerged [mod\_link deprecated](http://groups.yahoo.com/group/rss-dev/message/6950), and Ken’s [postscript today](http://groups.yahoo.com/group/rss-dev/message/6954) for me really sums up the rss-dev’s working groups total disinterest in non-RDF solutions, and lack of commitment to running code.

> P.S. I understand that a follow-on discussion could happen about what constitutes a “generic link”, but the protracted discussion on atom-syntax resolved that there’s no such thing as a “generic link”, it’s just that some people feel more comfortable “extending” a syntax at a bottlneck point where they believe they don’t have to create a namespace or URI and new XML elements. RDF says, “get past it, it’s simpler when you do”.

It isn’t easier. It is harder to understand, harder to explain, provides less guidance to new developers, and makes it that much more difficult to write a parser. Obviously I’m in favor of namespaces, but not allowing a simple link syntax is why all the innovation is currently happening in RSS 2.0 space. (despite any misgivings regarding “podcasting” it embraces my understanding of RSS as generic webservice stream syntax, an insight that really opens up possibilities)