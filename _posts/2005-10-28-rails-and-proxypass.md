---
id: 3068
title: 'Rails and ProxyPass'
date: '2005-10-28T14:30:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3068'
permalink: /2005/10/28/rails-and-proxypass/
typo_id:
    - '3066'
mt_id:
    - ''
link_related:
    - 'http://httpd.apache.org/docs/1.3/mod/mod_proxy.html'
raw_content:
    - "One of my key goals when moving [Laughing Meme](http://laughingmeme.org) over to Typo was not to break the nearly 4 years of accumulated URLs.  This involved some tweaking of [Typo\\'s](http://typo.leetsoft.com) importer script to maintain my old `id`s[1](#importer-footnote), and some routes tweaking.  So far so good.\r\n\r\nBut what about the pieces of the site not maintained by MT, pieces that expect to be handled by Apache, not dispatch.fcgi?  For that [ProxyPass][proxypass] if you friend.  It isn\\'t a sweeping solution, but as I bring pieces of the site online that use PHP, server side includes, or just DirectoryIndex, I\\'m using [ProxyPass][proxypass] to re-route the URLs before they fall into the Rails\\' event horizon.  Works great.\r\n\r\n<a name=\\\"importer-footnote\\\"></a>1. Actually, was a bit more complicated them that, as I combined several MT blogs (LM, MLPs, Work, etc) into one, so I let the importer create a `id`, but also hang onto the MT id in a new column `imported_id`\r\n\r\n[proxypass]: http://httpd.apache.org/docs/1.3/mod/mod_proxy.html"
tags:
    - apache
    - rails
    - typo
---

One of my key goals when moving [Laughing Meme](http://laughingmeme.org) over to Typo was not to break the nearly 4 years of accumulated URLs. This involved some tweaking of [Typo’s](http://typo.leetsoft.com) importer script to maintain my old `id`s[1](#importer-footnote), and some routes tweaking. So far so good.

But what about the pieces of the site not maintained by MT, pieces that expect to be handled by Apache, not dispatch.fcgi? For that [ProxyPass][proxypass] if you friend. It isn’t a sweeping solution, but as I bring pieces of the site online that use PHP, server side includes, or just DirectoryIndex, I’m using [ProxyPass][proxypass] to re-route the URLs before they fall into the Rails’ event horizon. Works great.

<a name="importer-footnote"></a>1. Actually, was a bit more complicated them that, as I combined several MT blogs (LM, MLPs, Work, etc) into one, so I let the importer create a `id`, but also hang onto the MT id in a new column `imported_id`