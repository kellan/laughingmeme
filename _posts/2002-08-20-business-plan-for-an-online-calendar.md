---
id: 128
title: 'Business Plan for an Online Calendar'
date: '2002-08-20T15:55:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=128'
permalink: /2002/08/20/business-plan-for-an-online-calendar/
typo_id:
    - '126'
mt_id:
    - '137'
link_related:
    - ''
raw_content:
    - "<p>\r\nThe title is something of a joke.  When I sent out this email last November, as it was becoming clear that Anyday was going to be shut down, it was to friends all of whom were working in companies that had a business plan for online calendaring.  The idea was a simple one, (and very un-dotcom) make an online calendar/pim service that provided quality for money, using a simple, and viable mini-payments (like mirco-payments, but bigger).  \r\n</p>\r\n<p>\r\nI was reminded of it recently when researching \r\n<a href=\\\"http://fastmail.fm\\\">fastmail.fm</a>, whom I think has done a great job\r\nimplementing this exact same business plan, but for email.  Keep prices low, allow\r\npeople to upgrade for a small, and well disclosed fee, grow slowly and stably on\r\nthe back of income so you\\'re around for the long haul, and provide what people\r\nare asking for.  I was also reminded of it by my partner just recently started working as an office\r\nmanager at a university and said, \\\"I finally understand why Anyday was cool.\\\"  7\r\nmonths after Palm shut it down unfortunately.\r\n</p>\r\n<p>\r\nAnyday was a web-based PIM, inspired by the Palm pilot, and built largely by\r\nex-Lotus people (and a few of <a href=\\\"http://anarchogeek.com\\\">us</a> with different <a href=\\\"http://protest.net\\\">calendar backgrounds</a>).  The primary goal was to get a\r\nfunctional online PIM that could sync with your desktop PIM, and Palm pilot,\r\nfor the purposes of remote access, backup, or act simply as a stand alone product. \r\nOnce people were online, there was the opportunity to use that connectivity to\r\ndo things impossible with the traditional applications, scheduling, free/busy\r\nlookup, delegation, etc.\r\n</p>\r\n<p>\r\nA while back I noticed that the <a href=\\\"http://horde.org\\\">Horde</a> had almost all the components neccessary to satisfy that primary goal.  And I was tempted to see if it could be used to\r\nbuild an Anyday clone, just to see how fast it could be done, and how irrelevant\r\nall of us overpaid Java programmers were.  Once Anyday was gone the idea\r\nevolved.\r\n</p>\r\n<p>\r\nHorde provides:  an addressbook with an LDAP backend, webmail with an IMAP\r\nbackend, a web calendar, and hooks for integrating them.  So it would be real\r\nsimple to throw up something like Anyday, minus groups, scheduling, and sync.\r\n</p>\r\n<p>\r\n<h3>Sync</h3>\r\nSync was always the coolest idea, and the hardest, most expensive problem\r\nat Anyday.  Funny thing is it doesn\\'t seem like it should need to be that\r\nhard.  I think part of the problem was in the conception.\r\n</p>\r\n<p>\r\nThey(we) bought into a solution (Extended Connect), that said \\\"All things\r\nmust go through me.\\\"  Obviously \r\n<a href=\\\"http://www.extendedsystems.com\\\">Extended</a> liked this because it made then\r\nmore valuable.\r\n</p>\r\n<p>\r\nBut Sync\\'ing with the Palm could be really simple.  I think a little desktop\r\nclient, that can talk XML-RPC to the server, used pilot-link to the Palm,\r\nand parsed SyncML, would do the trick nicely.  And if it was properly open and\r\ninteresting, would take off as its own open source project.\r\n</p>\r\n<p>\r\n(update: not sure now iSync, and OS X fit on the landscape since this was written, might function as an open source alternative to iSync)\r\n</p>\r\n<p>\r\n<h3>Self-Sustaining</h3>\r\n\r\nHere is where I think the most intersting parts come in.  I\\'m inspired by\r\nYahoo\\'s \\\"sort-of-mirco-payments\\\" at mail.yahoo.com, where you get 6M free,\r\nand then you get another chunk for $2/month\r\n</p>\r\n<p>\r\nThe basic service would be free.  And then you pay for extras.\r\n</p>\r\n<p>\r\nExtras would include\r\n<ul>\r\n<li>Direct access to the LDAP server behind the addressbook for sync\\'ing to\r\nOutlook, Evolution and such.</li>\r\n\r\n<li>Direct access to the IMAP server again for access from Outlook, Evolution \r\nand kin.</li>\r\n\r\n<li>More disk space, not sure if this is just for email, or total.\r\n(update:  I notice that diskspace isn\\'t fastmail.fm\\'s primary concern, but bandwidth, that makes sense, the collorary to the trusim \\\"storage is cheap\\\" is \\\"bandwidth isn\\'t\\\")</li>\r\n\r\n<lli>CAP access when CAP becomes more exciting. Reefknot is almost ready! (update: Well Reefknot seems to have slowed down, but iCal.app, Entourage, Evolution,\r\nand Outlook are all becoming serious iCalendar players)</li>\r\n\r\n</ul>\r\n<p>\r\nYou would want an account page, that summarizes all expenses, and makes\r\npeople feel very aware of how much they are spending.  I think part of\r\nwhat scares people about mirco-payents is feeling out of control.\r\n</p>\r\n<p>\r\nAnother trick would be to only bill when the amount owed gets large enough\r\nto make it worth it.  And to be clear about this.  (sort of the reverse of what Amazon does for affiliate accounts)\r\n(update: And to send a nice email about it the way Safari does)\r\n</p>\r\n<p>\r\nI think the billing system would be the most complicated piece of\r\ndevelopment.  Probably 2 weeks work. (+2-3 weeks to debug :)\r\n(update: I\\'ve sinced learn I <b>badly</b> underestimate the time things take these days)\r\n</p>\r\n<p>\r\n<h3>Further Development</h3>\r\n\r\nI think Groups is an important concept to really make a service like this\r\nuseful.  Both formal groups, and ad-hoc ones.  And of course I would like\r\nto expand the ideas of group scheduling that I was playing with before But\r\nI don\\'t think they\\'re critical for initial acceptance.\r\n</p>\r\n<p>\r\nupdate: Since I originally came up with this idea, iCal has been annouced which makes\r\nsome noise about the potentials for sharing calendar information, and syncing. \r\nIt will be interesting to see (in a couple of weeks now) what they\\'ve come up\r\nwith.\r\n</p>"
tags:
    - anyday
    - business
    - calendaring
    - Longer
    - service
    - services
---

The title is something of a joke. When I sent out this email last November, as it was becoming clear that Anyday was going to be shut down, it was to friends all of whom were working in companies that had a business plan for online calendaring. The idea was a simple one, (and very un-dotcom) make an online calendar/pim service that provided quality for money, using a simple, and viable mini-payments (like mirco-payments, but bigger).

I was reminded of it recently when researching [fastmail.fm](http://fastmail.fm), whom I think has done a great job implementing this exact same business plan, but for email. Keep prices low, allow people to upgrade for a small, and well disclosed fee, grow slowly and stably on the back of income so you’re around for the long haul, and provide what people are asking for. I was also reminded of it by my partner just recently started working as an office manager at a university and said, “I finally understand why Anyday was cool.” 7 months after Palm shut it down unfortunately.

Anyday was a web-based PIM, inspired by the Palm pilot, and built largely by ex-Lotus people (and a few of [us](http://anarchogeek.com) with different [calendar backgrounds](http://protest.net)). The primary goal was to get a functional online PIM that could sync with your desktop PIM, and Palm pilot, for the purposes of remote access, backup, or act simply as a stand alone product. Once people were online, there was the opportunity to use that connectivity to do things impossible with the traditional applications, scheduling, free/busy lookup, delegation, etc.

A while back I noticed that the [Horde](http://horde.org) had almost all the components neccessary to satisfy that primary goal. And I was tempted to see if it could be used to build an Anyday clone, just to see how fast it could be done, and how irrelevant all of us overpaid Java programmers were. Once Anyday was gone the idea evolved.

Horde provides: an addressbook with an LDAP backend, webmail with an IMAP backend, a web calendar, and hooks for integrating them. So it would be real simple to throw up something like Anyday, minus groups, scheduling, and sync.

### Sync

Sync was always the coolest idea, and the hardest, most expensive problem at Anyday. Funny thing is it doesn’t seem like it should need to be that hard. I think part of the problem was in the conception. They(we) bought into a solution (Extended Connect), that said “All things must go through me.” Obviously [Extended](http://www.extendedsystems.com) liked this because it made then more valuable.

But Sync’ing with the Palm could be really simple. I think a little desktop client, that can talk XML-RPC to the server, used pilot-link to the Palm, and parsed SyncML, would do the trick nicely. And if it was properly open and interesting, would take off as its own open source project.

(update: not sure now iSync, and OS X fit on the landscape since this was written, might function as an open source alternative to iSync)

### Self-Sustaining

Here is where I think the most intersting parts come in. I’m inspired by Yahoo’s “sort-of-mirco-payments” at mail.yahoo.com, where you get 6M free, and then you get another chunk for $2/month

The basic service would be free. And then you pay for extras.

Extras would include

- Direct access to the LDAP server behind the addressbook for sync’ing to Outlook, Evolution and such.
- Direct access to the IMAP server again for access from Outlook, Evolution and kin.
- More disk space, not sure if this is just for email, or total. (update: I notice that diskspace isn’t fastmail.fm’s primary concern, but bandwidth, that makes sense, the collorary to the trusim “storage is cheap” is “bandwidth isn’t”)
<lli>CAP access when CAP becomes more exciting. Reefknot is almost ready! (update: Well Reefknot seems to have slowed down, but iCal.app, Entourage, Evolution, and Outlook are all becoming serious iCalendar players)</lli>


You would want an account page, that summarizes all expenses, and makes people feel very aware of how much they are spending. I think part of what scares people about mirco-payents is feeling out of control.

Another trick would be to only bill when the amount owed gets large enough to make it worth it. And to be clear about this. (sort of the reverse of what Amazon does for affiliate accounts) (update: And to send a nice email about it the way Safari does)

I think the billing system would be the most complicated piece of development. Probably 2 weeks work. (+2-3 weeks to debug ![:)](http://lm.local/wp-includes/images/smilies/simple-smile.png)(update: I’ve sinced learn I **badly** underestimate the time things take these days)

### Further Development

I think Groups is an important concept to really make a service like this useful. Both formal groups, and ad-hoc ones. And of course I would like to expand the ideas of group scheduling that I was playing with before But I don’t think they’re critical for initial acceptance.

update: Since I originally came up with this idea, iCal has been annouced which makes some noise about the potentials for sharing calendar information, and syncing. It will be interesting to see (in a couple of weeks now) what they’ve come up with.