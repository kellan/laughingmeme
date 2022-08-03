---
id: 205
title: 'RSS Compliance, and the lack thereof'
date: '2002-11-04T15:08:58+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=205'
permalink: /2002/11/04/rss-compliance-and-the-lack-thereof/
typo_id:
    - '203'
mt_id:
    - '213'
link_related:
    - ''
raw_content:
    - "<p>\r\nOf the 30 RSS urls I tried to subscribe my little aggregator to last night,\r\nalmost all from well read blogs, 5 failed to parse with XML::RSS. (only a handful validated, but we\\'ll talk about that some other time)\r\n</p>\r\n<p>\r\n<b>1.</b> - the RSS feed from <a href=\\\"http://www.peerfear.org/\\\">peerfear</a>\r\nbecause of a bug in XML::RSS and its handling of namespaces, as <a href=\\\"http://groups.yahoo.com/group/rss-dev/message/4349\\\">discussed on\r\nRSS-DEV</a>.\r\n</p>\r\n<p>\r\n<b>2.</b> - a feed from a Moveable Type blog, in spanish, included the character encoding\r\n&uacute; (\\\"&amp;uacute\\\"), which seems to choke up both XML::RSS and the RSS Validator\r\n</p>\r\n<p>\r\n<b>3.</b> - and 3 feeds produced by <a href=\\\"http://pro.blogger.com/\\\">Blogger Pro</a>\r\n\r\n<ul>\r\n<li>\r\n<a href=\\\"http://www.boingboing.net\\\">boingboing\\'s</a> - \r\n<a\r\nhref=\\\"http://feeds.archive.org/validator/check?url=http%3A%2F%2Fboingboing.net%2Frss.xml\\\">validate</a>\r\n</li>\r\n<li><a href=\\\"http://randomwalks.com\\\">randomwalk\\'s</a> - <a \r\nhref=\\\"http://feeds.archive.org/validator/check?url=http%3A%2F%2Fwww.randomwalks.com%2Frw_rss.xml\\\">validate</a>\r\n<li><a href=\\\"http://evhead.com\\\">evhead\\'s</a> - <a\r\nhref=\\\"http://feeds.archive.org/validator/check?url=http%3A%2F%2Fwww.evhead.com%2Frss.xml\\\">validate</a>\r\n</ul>\r\nThe Blogger Pro feeds all included random punctuation problems, &amp;s and &copy; and random\r\nother junk.  This is very annoying, and seems strange from a company you would\r\nexpect to be on top of this sort of thing. boingboing and rw could complain to\r\n<a href=\\\"http://www.blogger.com/\\\">blogger</a>, but I\\'m not sure who evhead would complain to.\r\n</p>"
---

Of the 30 RSS urls I tried to subscribe my little aggregator to last night, almost all from well read blogs, 5 failed to parse with XML::RSS. (only a handful validated, but we’ll talk about that some other time)

**1.** – the RSS feed from [peerfear](http://www.peerfear.org/)because of a bug in XML::RSS and its handling of namespaces, as [discussed on RSS-DEV](http://groups.yahoo.com/group/rss-dev/message/4349).

**2.** – a feed from a Moveable Type blog, in spanish, included the character encoding ú (“&amp;uacute”), which seems to choke up both XML::RSS and the RSS Validator

**3.** – and 3 feeds produced by [Blogger Pro](http://pro.blogger.com/)

- [boingboing’s](http://www.boingboing.net) – [validate](http://feeds.archive.org/validator/check?url=http%3A%2F%2Fboingboing.net%2Frss.xml)
- [randomwalk’s](http://randomwalks.com) – [validate](http://feeds.archive.org/validator/check?url=http%3A%2F%2Fwww.randomwalks.com%2Frw_rss.xml)
- [evhead’s](http://evhead.com) – [validate](http://feeds.archive.org/validator/check?url=http%3A%2F%2Fwww.evhead.com%2Frss.xml)

The Blogger Pro feeds all included random punctuation problems, &amp;s and © and random other junk. This is very annoying, and seems strange from a company you would expect to be on top of this sort of thing. boingboing and rw could complain to [blogger](http://www.blogger.com/), but I’m not sure who evhead would complain to.