---
id: 3730
title: 'How to calculate a Base64 encoded HMAC-SHA1 in PHP for OAuth'
date: '2007-11-08T12:51:53+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/11/08/how-to-calculate-a-base64-encoded-hmac-sha1-in-php-for-oauth/'
permalink: /2007/11/08/how-to-calculate-a-base64-encoded-hmac-sha1-in-php-for-oauth/
link_related:
    - 'http://laughingmeme.org/code/hmacsha1.php.txt'
categories:
    - Aside
tags:
    - Code
    - hashing
    - hmac-sha1
    - oauth
    - php
    - security
---

HMAC-SHA1 is the suggested default signing algorithm for OAuth 1.0 Core. This is a code snippet showing how to calculate a valid OAuth HMAC-SHA1 signature using PHP4 without any PEAR dependencies.