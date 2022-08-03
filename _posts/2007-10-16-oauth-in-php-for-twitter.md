---
id: 3716
title: 'OAuth in PHP (for Twitter)'
date: '2007-10-16T00:15:10+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/10/16/oauth-in-php-for-twitter/'
permalink: /2007/10/16/oauth-in-php-for-twitter/
categories:
    - Uncategorized
tags:
    - Code
    - oauth
    - php
    - programming
    - twitter
---

\[Mike\](http://mike.teczno.com/) released \[`HTTP_Request_OAuth`\](http://teczno.com/HTTP*Request*Oauth.phps) today, so I spent a little while this evening coding up \[`Service_Twitter`\](http://laughingmeme.org/code/Service\_Twitter.php.txt) as helper class for making OAuth authorized requests against the Twitter API.

Both are early enough in the dev cycle to be called proof of concepts.

Mostly I wrote it because I had always envisioned there being wrapper libraries around the low level OAuth implementations that wrapped the calls, and constants, and as Mike graciously went out and wrote a low level library I felt compelled to write a wrapper.

Also \[twittclient\](http://laughingmeme.org/code/twittclient.php.txt), an interactive client for getting an authed access token, essential to bootstrapping development.

And nota bene, HRO currently only supports the MD5 signing algorithm, which is undefined in the core spec, and subject to change. (Just in case you didn’t believe me about the early state of things.)

### update 2008/4/18

This code no longer works because Twitter has taken down their (slightly non-compliant) OAuth endpoint. When they add OAuth support back in, I’ll link to it.