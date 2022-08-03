---
id: 599
title: 'Timezone Selector'
date: '2003-09-25T02:42:29+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=599'
permalink: /2003/09/25/timezone-selector/
typo_id:
    - '597'
mt_id:
    - '1238'
link_related:
    - ''
raw_content:
    - "<p>\r\nCoded up a quick Javascript timezone selector this evening.  Uses <a href=\\\"http://perl-date-time.sf.net\\\">DateTime.pm</a> to parse the <a href=\\\"http://www.twinsun.com/tz/tz-link.htm\\\">Olson database</a> and then spits out some a Javascript lib that allows you to drill down from region, to the appopiate regional city list.  Doesn\\'t win many points in the interface, or information design department, does have the advantage of being very, very complete.  None of this \\\"EST\\\", or \\\"PDT\\\" junk.\r\n</p>\r\n<p>\r\n<a href=\\\"/tz_select/example.html\\\">See it in action</a>.  Download the <a href=\\\"/code/tz_select.tar.gz\\\">tarball.</a>\r\n</p>"
categories:
    - Uncategorized
tags:
    - olson
    - timezone
---

Coded up a quick Javascript timezone selector this evening. Uses [DateTime.pm](http://perl-date-time.sf.net) to parse the [Olson database](http://www.twinsun.com/tz/tz-link.htm) and then spits out some a Javascript lib that allows you to drill down from region, to the appopiate regional city list. Doesn’t win many points in the interface, or information design department, does have the advantage of being very, very complete. None of this “EST”, or “PDT” junk.

[See it in action](/tz_select/example.html). Download the [tarball.](/code/tz_select.tar.gz)