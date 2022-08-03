---
id: 4138
title: 'New Amazon AWS Signature Version 2 is  &#8220;OAuth-compatible&#8221;'
date: '2008-12-30T13:10:22+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4138'
permalink: /2008/12/30/new-amazon-aws-signature-version-2-is-oauth-compatible/
categories:
    - Uncategorized
tags:
    - amazon
    - aws
    - Code
    - crypo
    - dork
    - oauth
    - openweb
    - php
    - security
    - simpledb
---

[![Enigma rotors](http://farm2.static.flickr.com/1200/1397852047_3128ce06df.jpg)](http://www.flickr.com/photos/briannegus/1397852047/ "Enigma rotors by Brian Negus, on Flickr")

Spent a couple hours last night writing the core of a stripped down, PHP4 compatible API library for \[Amazon SimpleDB\](http://aws.amazon.com/simpledb/) (in the style of my (http://laughingmeme.org/2008/12/11/my-flickr-api-library-for-php/) library. Just not a fan of abstraction for its own sake). In the process I discovered that Amazon had \[revved the version on their “Signature Method”\](http://developer.amazonwebservices.com/connect/entry.jspa?externalID=1928). Which is good news as SignatureVersion 1 contains a classic crypto-blunder in its design, namely it encourages collisions. (\[more details\](http://www.daemonology.net/blog/2008-12-18-AWS-signature-version-1-is-insecure.html), also \[why you care about collisions\](http://www.phreedom.org/research/rogue-ca/)) To date the solution was use SSL, and wait patiently, very patiently. So yay for Amazon fixing this! And in fairness, first couple of drafts of the OAuth spec contained a similar issue, though it got ironed out quickly. Yay for many eyes and the open web.

### “OAuth-compatible” signing

Great things are more secure, good news and all, but that isn’t what caught my eye. This block of text did:

> *Here is what’s different about forming the string to sign for signature version 2: - You include additional components of the request in the string to sign
> - You include the query string control parameters (the equals signs and ampersands) in the string to sign
> - You sort the query string parameters using byte ordering
> - You URL encode the query string parameters and their values before signing the request*

You really have to be an \[OAuth-dork\](http://oauth.net/core/1.0/#anchor1) to find anything special with that paragraph, but if you were, you’d notice that those 4 bullets are an incredibly succinct description of generating an OAuth signature. (in fact a more succinct description then appears anywhere in the \[OAuth documentation\](http://oauth.net/core/1.0/)

Which meant that my SimpleDB library can reuse most of the logic from my OAuth library to do the trickiest part of the API call, namely the signing. (Additionally it means that security reviews of both protocols support each other)

So my AWS signing method is a approximately a dozen characters different then my OAuth method and as straightforward as:

```
    .....

    $signature = aws_request_signature(AWS_SECRET_KEY, $http_method, AWS_SIMPLEDB_SERVICEURL, $parameters);
    $parameters['Signature'] = $signature;

    $encoded_params = array();

    foreach ($parameters as $k => $v){
        $encoded_params[] = oauth_urlencodeRFC3986($k).'='.oauth_urlencodeRFC3986($v);
    }

    $request_url = AWS_SIMPLEDB_SERVICEURL . '?' . implode('&', $encoded_params);

    .....

    function aws_request_signature($key, $http_method, $service_url, $parameters) {
        $base_string = aws_base_string($http_method, $service_url, $parameters);
        return base64_encode(hash_hmac('sha1', $base_string, $key, true));
    }

    function aws_base_string($http_method, $service_url, $parameters) {
        $parsed = parse_url($service_url);

        $host = strtolower($parsed['host']);
        $path = $parsed['path'] ? $parsed['path'] : '/';
        $data = array(
            strtoupper($http_method),
            $host,
            $path,
            oauth_normalized_request_params($parameters)
        );

        $base_string = join("\n", $data);
        return $base_string;
    }

```

(this uses my personal OAuth library, but your library should have similar methods)

Sure made my jobs of implementing a library easier. If you’re going to invent a new crypto protocol, please consider doing like Amazon, and re-using the basic building blocks. (which also happen to be best practices)