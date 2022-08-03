---
id: 225
title: 'RSSifying the Mailing List'
date: '2002-11-25T11:59:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=225'
permalink: /2002/11/25/rssifying-the-mailing-list/
typo_id:
    - '223'
mt_id:
    - '234'
link_related:
    - ''
raw_content:
    - "<p>\r\n<a href=\\\"http://resist.ca/~lattice/\\\">Lattice</a> asked me about resources for representing a mailing list as an RSS\r\nfeed.  Particularly, he was wanting to put together an alternative(post-email)\r\ninterface to a \r\n<a href=\\\"http://listes.cru.fr/sympa/\\\">Sympa</a> mailing list, with an RSS aggregator for reading the list\r\ntraffic, and the Sympa web interface for posting.  I didn\\'t have any\r\nsuggestions for Sympa, but noted that the script \r\n<a href=\\\"http://taint.org/mmrss/\\\">mmrss</a> turns Mailman\r\nlists into RSS feeds.\r\n</p>\r\n<p>\r\n<h3>A Thought</h3>\r\nThis inspired me to think about tackling the chronic lack of mail list archiving soltuions as multi-step problem.  Perhaps if we could get the mailing lists into a suitable inbetween format, with all the assumptions exposed, and codified into XML, then perhaps the archivers simply focus on giving a decent presentation of the complex interactions of a mailing list.  And having that format be compatible with the latest crop of desktop clients would allow people to build new and exciting ways of interacting with the lists.\r\n</p>\r\n<p>\r\nSo I compiled an overview of the problems, the challeges, and work that has gone before on building an RSS threading standard.\r\n</p>\r\n<p>\r\n<h3>A Quick Review of the State of the Archiver</h3>\r\n\r\n<a href=\\\"http://mhonarc.org\\\">MHonarc</a> is something of a standard, but I can\\'t standard the archives it\r\ngenerates, it should be possible to generate something attractive and usable,\r\nbut I\\'m still waiting.  Current otherings run from the pedestrian \r\n<a href=\\\"http://www.mail-archive.com/modperl%40apache.org/\\\">Mail Archive</a> to\r\nbyzantine <a href=\\\"http://listes.cru.fr/wws/arc/sympa\\\">Sympa style</a>)\r\n</p>\r\n<p>\r\n<a href=\\\"http://list.org\\\">Mailman\\'s</a> archives (\r\n<a href=\\\"http://www.amk.ca/python/unmaintained/pipermail.html\\\">pipermail</a>) are pleasingly \r\n<a\r\nhref=\\\"http://lists.indymedia.org/mailman/public/syndication/2002-November/thread.html\\\">\r\nstraightforward and clean</a>, however their\r\nthreading algorithm is a little weak, the archives are fragile with slight\r\nchanges to the mbox changing URLs, and rebuilding the archives for very active,\r\nold lists can be incredibly slow.  This and pipermail has no clue what to do\r\nwith attachments.\r\n</p>\r\n<p>\r\n<a href=\\\"http://zest.sf.net\\\">Zest</a> is an intriguing alternative I\\'ve mentioned before, however people I\\'ve\r\nshown it to find it confusing, and while I think they could learn, I hesitate to\r\nrecommend it as a drop in replacement for MHonarc/Pipermail.\r\n</p>\r\n<p>\r\n<h3>The Problem with MMRSS</h3>\r\n\r\nUnfortunately <a href=\\\"http://taint.org/mmrss/\\\">mmrss</a> doesn\\'t solve our problems.  It scrapes the existing\r\nMailman archives, and creates \r\n<a href=\\\"http://taint.org/mmrss/FoRK.rss\\\">very simple RSS 0.91</a>.  Because RSS 0.91 isn\\'t\r\nvery flexible, there is no way to include most of the interesting information,\r\nincluding the basic meta-data like creator (<code>From:</code>), and date \r\nsent (<code>Date:</code>) as\r\nwell as more email specific info (like attachments, user agent, and message\r\nid), and the messages threading information (<code>In-Reply-To:</code>)\r\n</p>\r\n<p>\r\nThis means that while MMRSS could be useful for watching a list (ie. getting\r\nnotified when it updates) it does not provide a meaningful alternative to\r\nreading the list.(this could partially be due to the script started life to\r\ngenerate RSS feeds for \r\n<a href=\\\"http://xent.com/mailman/listinfo/fork\\\">FoRK</a>, an email based proto-blog with an interesting role\r\nin the history of RSS/Email convergence)\r\n</p>\r\n<p>\r\n<h3>What would we want?</h3>\r\n\r\nOn the <channel> definition we\\'ll want the usual suspect, including:\r\n<ul>\r\n<li> the name of the mailing list in the <title>\r\n<li> the URL of either the lists webpage if it has one (as all Mailman and\r\nSympa lists do), or the link to the web accessible archives (if for some reason\r\nyou are using something else, and haven\\'t setup a webpage)\r\n<li> the date of the most recent message to the list in <dc:date>\r\n<li> and as much other meta-data as possible including description, and language.\r\n</ul> \r\nAnd we\\'ll want: \r\n<ul>\r\n<li> the list, and list admin addresses, perhaps in <dc:creator> and <dc:publisher>?\r\n or would that be an inappropriate re-use?\r\n</ul>\r\n \r\nOn a particular <item> we\\'ll want:\r\n<ul>\r\n<li>  the URL to the web archived email\r\n<li>  the subject of the email in the <title>\r\n<li>  the contents of the From: field in <dc:creator> (or one of the \r\n<a href=\\\"http://groups.yahoo.com/group/rss-dev/message/4481\\\">sha1/foaf based\r\n email obscuring technologies</a> being discussed on rss-dev)\r\n<li>  the date the email was sent (or received by the mailing list software) in\r\n  <dc:date>\r\n<li>  the full content of the message in the <description> (if you\\'re serious about\r\n  providing an alternative interface to the list)\r\n</ul>\r\n\r\nIdeally we would also have:\r\n<ul>\r\n<li>  information about the messages membership in a thread (see below)\r\n<li>  links to web archives of any attachments that might have been included in the\r\n  email\r\n<li>  a link (or mail address) to reply to this message particular message\r\n </ul>\r\n \r\nThere might also be reasons to include:\r\n<ul>\r\n<li>\tMessage-ID (perhaps for constructing replies)\r\n<li>\tUser-Agent\r\n<li>\tSpam Status (or similar Spam flagging header)\r\n<li>\tCC information\r\n</ul>\r\nSome of this definitely can\\'t be shoe horned into the 3 standard RSS 1.0 modules\r\n(Dublin Core, Syndication, and Content), and demand extensions, but perhaps a\r\nproposed module (or modules) will do.\r\n</p>\r\n<p>\r\n<h3>Examining the Prior Art in Threading</h3>\r\n\r\nNot surprisingly, displaying email as RSS, displaying mailing lists as RDF, and\r\nbuilding interchange formats for threaded discussion in RSS have all been\r\ndiscussed before.  No one change up with exactly the same feature set\r\n(surprise!) because everyone had slightly different conceptions of the problem.\r\n</p>\r\n<p>\r\nThe first important insight when considering an implementation (and examining\r\nprior art) is to realize that much of what is important to representing a\r\nmailing list is important to representing any form of threaded discussion, like\r\nthe comments from a message board or blog, or the posts from a newsgroup.\r\n</p>\r\n<p>\r\nThere is the proposed \r\n<a href=\\\"http://purl.org/rss/1.0/modules/threading/\\\">RSS threading module</a>, that adds one tag: <child>. \r\nWhich is nice and simple, but also kind of awkward as email tends to be linked\r\ninto threads by referring to a parent.(<code>In-Reply-To:</code>)\r\n</p>\r\n<p>\r\n\r\n<a href=\\\"http://www.quicktopic.com/7/H/rhSrjkWgjnvRq?m1=66&mN=66\\\">ThreadML</a>\r\n was an interesting initiative of \r\n <a href=\\\"http://www.quicktopic.com/blog/\\\">Steve Yost</a> of \r\n <a href=\\\"http://www.quicktopic.com\\\">Quicktopic</a>,\r\npartially created in a response to this article on \r\n<a href=\\\"http://www.hyperorg.com/backissues/joho-jun17-01.html\\\">Joho</a>. \r\nIt was a standard composed of RSS 1.0, mod_content, mod_threading to represent\r\nparent-to-child, and mod_annotation to represent child-to-parent relations. \r\nThere was a very active \r\n<a href=\\\"http://www.quicktopic.com/7/H/rhSrjkWgjnvRq\\\">quicktopic\r\ndiscussing ThreadML</a> for a while, but it seems\r\nto have gone quiet.  An example <a\r\nhref=\\\"http://www.quicktopic.com/7/H/rhSrjkWgjnvRq.rss\\\">Quicktopic RSS feed</a> to see how it might have\r\nlooked.\r\n</p>\r\n<p>\r\nDiscussion of \r\n<a href=\\\"http://groups.yahoo.com/group/rss-dev/message/3102\\\">creating an RSS\r\nfeed</a> for the W3C\\'s mailing lists, prompted the\r\nproposal of a \r\n<a href=\\\"http://groups.yahoo.com/group/rss-dev/message/3121\\\">mod_email</a> which might be useful, but doesn\\'t seem to focus on\r\nthe commonality between different mediums enough for me.\r\n</p>\r\n<p>\r\nThe PHP mailing lists are available \r\n<a href=\\\"http://news.php.net/group.php?group=php.dev&format=rss\\\">\r\nas RSS feeds</a>, unfortunately here again, they\r\naren\\'t very useful RSS feeds, with the From information stuck into a <mailto:>\r\ntag in the <description> tag.  Odd.\r\n</p>\r\n<p>\r\nYahoogroups (formerly eGroups) provides RSS feeds for the lists (e.g.\r\nRSS-DEV[18] they host, see the \r\n<a href=\\\"http://www.xent.com/FoRK-archive/april00/0808.html\r\n\\\">original announcement on FoRK</a>)\r\n</p>\r\n<p>\r\nMail-archive.com makes a simple RSS 0.9 feed available for each list, for\r\nexample <a\r\nhref=\\\"http://www.mail-archive.com/modperl%40apache.org/maillist.rdf\\\">mod_perl\\'s\r\nRSS</a>\r\n</p>\r\n<p>\r\nLastly, the \r\n<a href=\\\"http://www.eyrie.org/~zednenem/2002/web-threads/\\\">Thread Description\r\nLanguage</a> is an interesting attempt to build a\r\nrich RDF syntax for talking about all sorts of different threads.  Some of its\r\nconcepts like agreesWith and disagreesWith would be very cool to add to a\r\nRSS/RDF feed based on Zest and its inline mark up.\r\n</p>\r\n<p>\r\n<h3>Conclusion, and Concerns</h3>\r\n\r\nAll of that is very interesting, but I don\\'t feel like any of the above directly\r\nmaps to the features I mentioned above, it might be possible to assemble\r\nsomething out of the pieces, but a few items (like the url/mailto to respond to\r\na post) is totally missing from any of this.\r\n</p>\r\n<p>\r\nIt might be worth looking at an email<->NTTP gateway to see what tricks they\r\nplay, and what they consider necessary.\r\n</p>\r\n<p>\r\nOne problem with marking up email in XML is that it makes it very very easy for\r\nspammers to identify email addresses.  There is a thread on RSS-DEV about ways\r\nto combat this.  It seems like it should be possible with the collusion of the\r\nlist archiver to send out \\\"privatized\\\" emails, where contact information is\r\nreplaced with some sort of smart URI to confuse harvesters without interrupting\r\ncommunication.  Yahoogroups kind of does this.\r\n</p>\r\n<p>\r\nIt would cut down on the complexity immensely to just skip the whole threading\r\nthing, but I think threading is an important feature for facilitating a culture\r\nof discussion, often discourages in spaces that use \\\"linear threading\\\" (like the\r\ntraditional display of an email client\\'s inbox)  Might be suitable for a version\r\n1.0\r\n</p>\r\n<p>\r\nYet another approach would be to get away from the concept of an individual\r\npost, and syndicate conversations (threads).  This would map <b>very</b> well to\r\nZest\\'s concept of threads, but would work pretty well for normal archives and\r\nthreads as well.  The one trick would be figuring out distribute threads in such\r\nas way as to be useful with the most recent post readily accessible.\r\n</p>\r\n<p>\r\nRelated Posts:\r\n<ul>\r\n<li><a\r\nhref=\\\"http://laughingmeme.org/archives/000094.html#000094\\\">Revolutionizing the\r\nMail Archive</a>\r\n</ul>\r\n</p>"
categories:
    - Uncategorized
tags:
    - collaboration
    - design
    - email
    - Longer
    - mailinglists
    - rss
    - state.of.the.art
---

[Lattice](http://resist.ca/~lattice/) asked me about resources for representing a mailing list as an RSS feed. Particularly, he was wanting to put together an alternative(post-email) interface to a [Sympa](http://listes.cru.fr/sympa/) mailing list, with an RSS aggregator for reading the list traffic, and the Sympa web interface for posting. I didn’t have any suggestions for Sympa, but noted that the script [mmrss](http://taint.org/mmrss/) turns Mailman lists into RSS feeds.

### A Thought

This inspired me to think about tackling the chronic lack of mail list archiving soltuions as multi-step problem. Perhaps if we could get the mailing lists into a suitable inbetween format, with all the assumptions exposed, and codified into XML, then perhaps the archivers simply focus on giving a decent presentation of the complex interactions of a mailing list. And having that format be compatible with the latest crop of desktop clients would allow people to build new and exciting ways of interacting with the lists.

So I compiled an overview of the problems, the challeges, and work that has gone before on building an RSS threading standard.

### A Quick Review of the State of the Archiver

[MHonarc](http://mhonarc.org) is something of a standard, but I can’t standard the archives it generates, it should be possible to generate something attractive and usable, but I’m still waiting. Current otherings run from the pedestrian [Mail Archive](http://www.mail-archive.com/modperl%40apache.org/) to byzantine [Sympa style](http://listes.cru.fr/wws/arc/sympa))

[Mailman’s](http://list.org) archives ( [pipermail](http://www.amk.ca/python/unmaintained/pipermail.html)) are pleasingly [straightforward and clean](http://lists.indymedia.org/mailman/public/syndication/2002-November/thread.html), however their threading algorithm is a little weak, the archives are fragile with slight changes to the mbox changing URLs, and rebuilding the archives for very active, old lists can be incredibly slow. This and pipermail has no clue what to do with attachments.

[Zest](http://zest.sf.net) is an intriguing alternative I’ve mentioned before, however people I’ve shown it to find it confusing, and while I think they could learn, I hesitate to recommend it as a drop in replacement for MHonarc/Pipermail.

### The Problem with MMRSS

Unfortunately [mmrss](http://taint.org/mmrss/) doesn’t solve our problems. It scrapes the existing Mailman archives, and creates [very simple RSS 0.91](http://taint.org/mmrss/FoRK.rss). Because RSS 0.91 isn’t very flexible, there is no way to include most of the interesting information, including the basic meta-data like creator (`From:`), and date sent (`Date:`) as well as more email specific info (like attachments, user agent, and message id), and the messages threading information (`In-Reply-To:`)

This means that while MMRSS could be useful for watching a list (ie. getting notified when it updates) it does not provide a meaningful alternative to reading the list.(this could partially be due to the script started life to generate RSS feeds for [FoRK](http://xent.com/mailman/listinfo/fork), an email based proto-blog with an interesting role in the history of RSS/Email convergence)

### What would we want?

On the &lt;channel&gt; definition we’ll want the usual suspect, including:

- the name of the mailing list in the &lt;title&gt;
- the URL of either the lists webpage if it has one (as all Mailman and Sympa lists do), or the link to the web accessible archives (if for some reason you are using something else, and haven’t setup a webpage)
- the date of the most recent message to the list in &lt;dc:date&gt;
- and as much other meta-data as possible including description, and language.

 And we’ll want: - the list, and list admin addresses, perhaps in &lt;dc:creator&gt; and &lt;dc:publisher&gt;? or would that be an inappropriate re-use?

On a particular &lt;item&gt; we’ll want:

- the URL to the web archived email
- the subject of the email in the &lt;title&gt;
- the contents of the From: field in &lt;dc:creator&gt; (or one of the [sha1/foaf based email obscuring technologies](http://groups.yahoo.com/group/rss-dev/message/4481) being discussed on rss-dev)
- the date the email was sent (or received by the mailing list software) in &lt;dc:date&gt;
- the full content of the message in the &lt;description&gt; (if you’re serious about providing an alternative interface to the list)

Ideally we would also have:

- information about the messages membership in a thread (see below)
- links to web archives of any attachments that might have been included in the email
- a link (or mail address) to reply to this message particular message

There might also be reasons to include:

- Message-ID (perhaps for constructing replies)
- User-Agent
- Spam Status (or similar Spam flagging header)
- CC information

Some of this definitely can’t be shoe horned into the 3 standard RSS 1.0 modules (Dublin Core, Syndication, and Content), and demand extensions, but perhaps a proposed module (or modules) will do. ### Examining the Prior Art in Threading

Not surprisingly, displaying email as RSS, displaying mailing lists as RDF, and building interchange formats for threaded discussion in RSS have all been discussed before. No one change up with exactly the same feature set (surprise!) because everyone had slightly different conceptions of the problem.

The first important insight when considering an implementation (and examining prior art) is to realize that much of what is important to representing a mailing list is important to representing any form of threaded discussion, like the comments from a message board or blog, or the posts from a newsgroup.

There is the proposed [RSS threading module](http://purl.org/rss/1.0/modules/threading/), that adds one tag: &lt;child&gt;. Which is nice and simple, but also kind of awkward as email tends to be linked into threads by referring to a parent.(`In-Reply-To:`)

[ThreadML](http://www.quicktopic.com/7/H/rhSrjkWgjnvRq?m1=66&mN=66) was an interesting initiative of [Steve Yost](http://www.quicktopic.com/blog/) of [Quicktopic](http://www.quicktopic.com), partially created in a response to this article on [Joho](http://www.hyperorg.com/backissues/joho-jun17-01.html). It was a standard composed of RSS 1.0, mod*content, mod*threading to represent parent-to-child, and mod\_annotation to represent child-to-parent relations. There was a very active [quicktopic discussing ThreadML](http://www.quicktopic.com/7/H/rhSrjkWgjnvRq) for a while, but it seems to have gone quiet. An example [Quicktopic RSS feed](http://www.quicktopic.com/7/H/rhSrjkWgjnvRq.rss) to see how it might have looked.

Discussion of [creating an RSS feed](http://groups.yahoo.com/group/rss-dev/message/3102) for the W3C’s mailing lists, prompted the proposal of a [mod\_email](http://groups.yahoo.com/group/rss-dev/message/3121) which might be useful, but doesn’t seem to focus on the commonality between different mediums enough for me.

The PHP mailing lists are available [as RSS feeds](http://news.php.net/group.php?group=php.dev&format=rss), unfortunately here again, they aren’t very useful RSS feeds, with the From information stuck into a &lt;mailto:&gt; tag in the &lt;description&gt; tag. Odd.

Yahoogroups (formerly eGroups) provides RSS feeds for the lists (e.g. RSS-DEV[18] they host, see the [original announcement on FoRK](http://www.xent.com/FoRK-archive/april00/0808.html
))

Mail-archive.com makes a simple RSS 0.9 feed available for each list, for example [mod\_perl’s RSS](http://www.mail-archive.com/modperl%40apache.org/maillist.rdf)

Lastly, the [Thread Description Language](http://www.eyrie.org/~zednenem/2002/web-threads/) is an interesting attempt to build a rich RDF syntax for talking about all sorts of different threads. Some of its concepts like agreesWith and disagreesWith would be very cool to add to a RSS/RDF feed based on Zest and its inline mark up.

### Conclusion, and Concerns

All of that is very interesting, but I don’t feel like any of the above directly maps to the features I mentioned above, it might be possible to assemble something out of the pieces, but a few items (like the url/mailto to respond to a post) is totally missing from any of this.

It might be worth looking at an email&lt;-&gt;NTTP gateway to see what tricks they play, and what they consider necessary.

One problem with marking up email in XML is that it makes it very very easy for spammers to identify email addresses. There is a thread on RSS-DEV about ways to combat this. It seems like it should be possible with the collusion of the list archiver to send out “privatized” emails, where contact information is replaced with some sort of smart URI to confuse harvesters without interrupting communication. Yahoogroups kind of does this.

It would cut down on the complexity immensely to just skip the whole threading thing, but I think threading is an important feature for facilitating a culture of discussion, often discourages in spaces that use “linear threading” (like the traditional display of an email client’s inbox) Might be suitable for a version 1.0

Yet another approach would be to get away from the concept of an individual post, and syndicate conversations (threads). This would map **very** well to Zest’s concept of threads, but would work pretty well for normal archives and threads as well. The one trick would be figuring out distribute threads in such as way as to be useful with the most recent post readily accessible.

Related Posts:

- [Revolutionizing the Mail Archive](http://laughingmeme.org/archives/000094.html#000094)