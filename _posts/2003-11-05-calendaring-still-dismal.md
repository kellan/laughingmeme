---
id: 649
title: 'Calendaring Still Dismal'
date: '2003-11-05T22:59:38+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=649'
permalink: /2003/11/05/calendaring-still-dismal/
typo_id:
    - '647'
mt_id:
    - '1374'
link_related:
    - ''
raw_content:
    - "<p>\nJust spent another frustrating night looking at SyncML.  Why is it so lame?  In particular, why, if this is a\nviable technology, has no one released a simple conduit for translating SyncML to the standard Palm (and PocketPC) apps?  All this focus on some weird, binary over infrared format that you know has got to just suck to work with and no one has taken the time to make it work with a Palm device? (of course the real burning question is why does Palm suck so much that it can\\'t make this available to its develpers?)\n</p>\n<p>\nNot like I\\'m asking for that holiest of holy grails, an open, (not even open source), <b>standard</b> way of syncing to Outlook.  Though truth be told, that is what I was looking for, again, and failing to find, again.\n</p>\n\n<p>\n<h3>Is SyncML Remotely Useful?</h3>\nI understand uber-geeks have fancy cellphones that support Bluetooth and SyncML (or something like that), but for the rest of us, is there any reason whatsoever to be using SyncML?  Can someone explain to me, how exactly I would tranfrom a SyncML document into something useful?\n</p>\n<p>\nThe funny thing is I don\\'t even use any of these technologies really, it is just that I flinch when people says (as they did today) that \\\"Exchange is the only solution.\\\"  \n</p>\n<p>\n<h3>Some Links from Along the Way</h3>\nDiego of <a href=\\\"http://clevercactus.com\\\">clevercactus</a> (nee <i>spaces</i>, an alternative to <a href=\\\"http://www.osafoundation.org/our_product_desc.htm\\\">Chandler</a>) on <a href=\\\"http://www.dynamicobjects.com/d2r/archives/001938.html\\\">palm/syncml</a> and <a href=\\\"http://www.dynamicobjects.com/d2r/archives/001923.html\\\">JSync</a>\n</p>\n<p>\n<a href=\\\"http://www.weblicon.net/\\\">Weblicon\\'s</a> keeps turning up on searches for Palm, Outlook, SyncML, and calendaring, and their <a href=\\\"http://www.calmeno.net/\\\">Calmeno</a> calendar server, built on \\\"Apache web server, Exim/Courier IMAP server, SAMBA and WebDAV file services, OpenLDAP directory server, and PostgreSQL database\\\" sounds awesome, unfortunately the download page has the message\n<blockquote>\nweblicon technologies AG is currently re-evaluating all its product lines including Calmeno. For the time being, we kindly ask for your understanding that we do not offer Calmeno until further notice\n</blockquote>\n</p>\n<p>\n<a href=\\\"http://nicolas.bougues.net/syncml/\\\">bouges</a> is a limited SyncML server in PHP.  Only supports the XML version of SyncML for which there seem to be no clients.\n</p>\n<p>\nRick@LinuxMafia\\'s brain dumps <a href=\\\"http://www.linuxmafia.com/~rick/linux-info/groupware\\\">groupware</a> is an excellent look at the space, and what people are looking for in an Exchange replacement, <a href=\\\"http://linuxmafia.com/~rick/linux-info/applications-scheduling\\\">applications-scheduling</a> is also excellent, those loses credibility for mentioning the <a href=\\\"http://active.org.au/\\\">Active</a> calendar (j/k)\n</p>\n<p>\nvia Rick, apparently Kapor\\'s next windmill after an open source, RDF based, PIM written in Python that will somehow displace Outlook is a <a href=\\\"http://www.osafoundation.org/Chandler-Product_Roadmap.htm\\\">reference implementation of CAP</a>.  Personally I was rooting for \\\"viable colony on Mars by 2010\\\", but that was deemed insufficiently challenging.\n</p>\n<p>\nLastly I had no luck reading an Outlook calendar tnef encoded forward event via <a href=\\\"http://sourceforge.net/projects/tnef/\\\">tnef</a> (error: This attachment is a MAPI 1.0 embedded message and is not supported by this mail), <a href=\\\"http://sourceforge.net/projects/ytnef/\\\">ytnef</a> (silent failure), or <a href=\\\"http://search.cpan.org/dist/Convert-TNEF/\\\">Convert::TNEF</a> (mime error).  Anyone got a lead on how to do this?\n</p>"
---

Just spent another frustrating night looking at SyncML. Why is it so lame? In particular, why, if this is a viable technology, has no one released a simple conduit for translating SyncML to the standard Palm (and PocketPC) apps? All this focus on some weird, binary over infrared format that you know has got to just suck to work with and no one has taken the time to make it work with a Palm device? (of course the real burning question is why does Palm suck so much that it can’t make this available to its develpers?)

Not like I’m asking for that holiest of holy grails, an open, (not even open source), **standard** way of syncing to Outlook. Though truth be told, that is what I was looking for, again, and failing to find, again.

### Is SyncML Remotely Useful?

I understand uber-geeks have fancy cellphones that support Bluetooth and SyncML (or something like that), but for the rest of us, is there any reason whatsoever to be using SyncML? Can someone explain to me, how exactly I would tranfrom a SyncML document into something useful? The funny thing is I don’t even use any of these technologies really, it is just that I flinch when people says (as they did today) that “Exchange is the only solution.”

### Some Links from Along the Way

Diego of [clevercactus](http://clevercactus.com) (nee *spaces*, an alternative to [Chandler](http://www.osafoundation.org/our_product_desc.htm)) on [palm/syncml](http://www.dynamicobjects.com/d2r/archives/001938.html) and [JSync](http://www.dynamicobjects.com/d2r/archives/001923.html)[Weblicon’s](http://www.weblicon.net/) keeps turning up on searches for Palm, Outlook, SyncML, and calendaring, and their [Calmeno](http://www.calmeno.net/) calendar server, built on “Apache web server, Exim/Courier IMAP server, SAMBA and WebDAV file services, OpenLDAP directory server, and PostgreSQL database” sounds awesome, unfortunately the download page has the message

> weblicon technologies AG is currently re-evaluating all its product lines including Calmeno. For the time being, we kindly ask for your understanding that we do not offer Calmeno until further notice

[bouges](http://nicolas.bougues.net/syncml/) is a limited SyncML server in PHP. Only supports the XML version of SyncML for which there seem to be no clients.

Rick@LinuxMafia’s brain dumps [groupware](http://www.linuxmafia.com/~rick/linux-info/groupware) is an excellent look at the space, and what people are looking for in an Exchange replacement, [applications-scheduling](http://linuxmafia.com/~rick/linux-info/applications-scheduling) is also excellent, those loses credibility for mentioning the [Active](http://active.org.au/) calendar (j/k)

via Rick, apparently Kapor’s next windmill after an open source, RDF based, PIM written in Python that will somehow displace Outlook is a [reference implementation of CAP](http://www.osafoundation.org/Chandler-Product_Roadmap.htm). Personally I was rooting for “viable colony on Mars by 2010”, but that was deemed insufficiently challenging.

Lastly I had no luck reading an Outlook calendar tnef encoded forward event via [tnef](http://sourceforge.net/projects/tnef/) (error: This attachment is a MAPI 1.0 embedded message and is not supported by this mail), [ytnef](http://sourceforge.net/projects/ytnef/) (silent failure), or [Convert::TNEF](http://search.cpan.org/dist/Convert-TNEF/) (mime error). Anyone got a lead on how to do this?