---
id: 3750
title: 'Sharing from within Google Reader'
date: '2008-01-04T04:06:00+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2008/01/04/sharing-from-within-google-reader/'
permalink: /2008/01/04/sharing-from-within-google-reader/
categories:
    - Uncategorized
tags:
    - Code
    - del.icio.us
    - google
    - 'google reader'
    - perl
    - sharing
    - social
---

Collapsing the GTalk buddy list, and Reader sharing list was a serious blunder, and one that could use a bit more ink spilled about it. But one click sharing is one of my favorite Reader features.

### GData Won’t Save You

Except there is a bit of a problem. I don’t really want to share with other Google Reader users, I’m not even sure I’m destined to be a long time Reader user. I want to share links the way I’m already doing it, through del.icio.us.

No problem, Reader has an Atom feed of shared items. A really good feed, with the source info maintained, well formed, nicely done. Simplest thing in the world to parse the feed, and write the entries back to del.icio.us. And I can tag any post in Reader, which is perfect, easy Ajaxy sharing into del.icio.us with a few minutes work.

Except for reasons I can’t fathom Reader isn’t including my tags in the Shared Items feed. Which all of a sudden makes my data feel a bit more locked up and trapped then I’d really like.

### For Our Sins

Casting around a bit for a solution, I noticed the “Email” button, which allows me to send a link via email, along with a short note, and so \[“Email to del.icio.us”\](http://laughingmeme.org/code/email*to*del.pl.txt) was born.

Super quick and dirty Perl script that:

1. Parse the Google Reader HTML email for the relevant URL (no semantic markup, alas)
2. Pull the del.icio.us link description from the subject
3. Look for a line beginning “tags: ” followed by a space separated list of tags.
4. Look for a line beginning “note: ” for the extended description.

Add the following rule to /etc/aliases file, and away you go.

`to_del:          | /home/you/email_to_del.pl`

Takes 10-15 seconds vs 1 second to share, but much more flexible.

And Perl is still unbeatable when it comes to these kind of scripts.