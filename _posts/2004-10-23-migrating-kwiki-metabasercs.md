---
id: 939
title: 'Migrating Kwiki metabase/rcs'
date: '2004-10-23T14:50:46+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=939'
permalink: /2004/10/23/migrating-kwiki-metabasercs/
typo_id:
    - '937'
mt_id:
    - '2485'
link_related:
    - ''
raw_content:
    - "A part of the protest.net\\'s recent move to a new server, we\\'ve moved towards less custom compiled packages, and a more standard Debian install.  One of those changes was that apache no longer runs as the user \\'apache\\', but rather as \\'www-data\\'.  Well and fine, except <a href=\\\"http://wifimug.org\\\">Wifimug</a> is using rcs to provide versioning, and every file is strictly locked by the user apache, who no longer exists.  What to do?\n\nFirst mass unlock all the files with:\n<pre>sudo rcs -u *,v</pre>\n\nThen mass re-lock with:\n<pre>sudo -u www-data rcs -l *,v</pre>\n\nHat tip to <a href=\\\"http://bumppo.net/\\\">Nat</a> for pointing out the problem."
tags:
    - wiki
---

A part of the protest.net’s recent move to a new server, we’ve moved towards less custom compiled packages, and a more standard Debian install. One of those changes was that apache no longer runs as the user ‘apache’, but rather as ‘www-data’. Well and fine, except [Wifimug](http://wifimug.org) is using rcs to provide versioning, and every file is strictly locked by the user apache, who no longer exists. What to do?

First mass unlock all the files with:

```
sudo rcs -u *,v
```

Then mass re-lock with:

```
sudo -u www-data rcs -l *,v
```

Hat tip to [Nat](http://bumppo.net/) for pointing out the problem.