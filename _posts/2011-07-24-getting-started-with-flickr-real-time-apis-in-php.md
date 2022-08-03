---
id: 4951
title: 'Getting started with Flickr real time APIs (in PHP)'
date: '2011-07-24T06:47:05+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4951'
permalink: /2011/07/24/getting-started-with-flickr-real-time-apis-in-php/
categories:
    - Uncategorized
---

[![MONOPILE DONUT FENDER](http://farm6.static.flickr.com/5273/5908292093_aec119eb54_z.jpg)](http://www.flickr.com/photos/kellan/5908292093/ "MONOPILE DONUT FENDER by kellan, on Flickr")

Nils made public the [Flickr PuSH (Pubsubhubbub) APIs](http://code.flickr.com/blog/2011/06/30/dont-be-so-pushy/) a few weeks back. And it being a lazy Sunday morning, I thought I finally get around to consuming them.

You can (and probably should) go read the [Pubsubhubbub protocol](http://code.google.com/p/pubsubhubbub/), but it’s written in standardese, and Flickr’s endpoints are a simpler degenerate case, so here’s the idea:

- it’s [web hooks](http://www.webhooks.org/)
- get an authorized token from the Flickr API like you always do
- make a subscribe API call
- have an callback that can echo back the challenge code every 24 hours
- and Flickr will push you bits of Atom feeds in real time.

### Get an Auth Token

We could use the [Flickr OAuth support](http://code.flickr.com/blog/2011/06/21/flickr-now-supports-oauth-1-0a/), but FlickrAuth is simpler to demonstrate.

You can do this step anyway you want, but I’d grab (https://github.com/kellan/flickr.simple.php), paste your [key and secret](http://www.flickr.com/services/api/keys/) into [scripts/auth.php](https://github.com/kellan/flickr.simple.php/tree/master/scripts), and run it from the command line, at which point it will walk you thru an interactive prompt to get a token.

And just to state the obvious, you need a token because these feeds are personalized: photos or favorites from **your** contacts, photos of people you know, your photos, and your faves.

### An Endpoint

Your endpoint does double duty. It handles subscription requests, and processes pushes. Let’s write the subscription handler.

```
<?php
    # file: callback.php

    # handle subscription requests 

    if ($_REQUEST['challenge']) {
        if ($_REQUEST['verify_token'] == 'MY VERIFY TOKEN') {
            echo $_REQUEST['challenge'];
        }
    } else {
        echo "Ok";
    }

```

The `verify_token` is an arbitrary string you pass in that Flickr will pass back to you. Among other things it makes securing your subscription handler against XSS a bit more straightforward. (just don’t use “MY VERIFY TOKEN” ok?)

The `challenge` is a string that Flickr will generate and send to you to make sure you’re actually interested in having a bunch of photos pushed to you. You’re only responsibility in subscribing is to echo it back. This will happen when you first subscribe, and then again every time your subscription lease is up, which is by default once a day.

### Subscribing to a feed

Is just a call to [`flickr.push.subscribe`](http://www.flickr.com/services/api/flickr.push.subscribe.html). Here’s how to do that, using flickr.simple

include ‘flickr.simple.php’;

```
<?php
    # file: subscribe.php

    include 'flickr.simple.php';

    $key = 'your-key-from-step-1';
    $secret = 'your-secret-from-step-1';
    $token = 'your-token-from-step-1';

    $flickr = new Flickr($key, $secret);

    $rsp = $flickr->call_method('flickr.push.subscribe', array(
        'auth_token' => $token,
        'topic' => 'contacts_faves',
        'callback' => 'http://laughingmeme.org/code/monopiledonutfender.php',
        'verify' => 'async',
        'verify_token' => 'MY VERIFY TOKEN',
    ));

    var_dump($rsp);

```

Here we are subscribing to the favorites from your contacts stream. You can get a list of available streams with a call to [`flickr.push.getTopics`](http://www.flickr.com/services/api/flickr.push.getTopics.html), which you could write a script to call, but I’d probably just call it in the [API Explorer](http://www.flickr.com/services/api/explore/flickr.push.getTopics) and get the list:

```
<topics>
    <topic name="contacts_photos" />
    <topic name="contacts_faves" />
    <topic name="photos_of_contacts" />
    <topic name="photos_of_me" />
    <topic name="my_photos" />
    <topic name="my_faves" />
</topics>

```

Note: you’re going to need a different endpoint for each different topic. I just add `?contacts_photos=1` or `?photos_of_me=1` to my callback URLs to distinguish them.

### Subscribing: Putting it all together

Upload `callback.php` somewhere publicly addressable, point the `callback` arg in subscribe to that URL, make sure your `verify_token` is the same in both scripts, and then run `subscribe.php`

To check that it worked, get a list of your subscriptions with

```
<?php

    include 'flickr.simple.php';

    $key = 'your-key';
    $secret = 'your-secret';
    $token = 'your-token';

    $flickr = new Flickr($key, $secret);

    $rsp = $flickr->call_method('flickr.push.getSubscriptions', array(
    'auth_token' => $token,
    ));

    var_dump($rsp);

```

If you see subscriptions that are still pending with non-zero verify attempts you did something wrong. Go have your morning coffee and try again. (&lt;== this worked for me, your mileage may vary)

### Processing

So assuming that all worked, Flickr is now bombarding your `callback.php` periodically with Atom blobs containing the information you requested. In practice I’m sticking the blobs into Redis in a list, and treating it as a queue to split processing from `callback.php` (this all runs on a tiny Linode VM and tying up Apache process is a bad idea), but for the sake of demonstration we can assume that if we weren’t passed a `challenge` then this is a payload and we’ll add the processing right to `callback.php`.

There are of course many ways to parse Atom (much like there are many ways to call the Flickr API), but unsurprisingly I’d use [Magpie](https://github.com/kellan/magpierss), and in particular I’d grab [`rss_parse.inc`](https://github.com/kellan/magpierss/blob/master/rss\_parse.inc), which, while not having been touched in 7 years but still works.

```
<?php
    # file: callback.php

    # handle subscription requests 

    if ($_REQUEST['challenge']) {
        if ($_REQUEST['verify_token'] == 'MY VERIFY TOKEN') {
            echo $_REQUEST['challenge'];
        }
    } else {
        echo "Ok";
        require 'rss_parse.inc';
        $xml = file_get_contents("php://input");
        $feed = new MagpieRSS($xml, 'UTF-8', 'UTF-8');

        # do logic on feed here!

```

### The interesting bit

Of course the interesting bits all come after “do logic on feed here!”. This is where you build your feel newsfeed for Flickr, your replacement for photos from your contacts, your anteater. That bit is up to you. (though given an infinite supply of lazy Sunday mornings, maybe I’ll post a follow up)

### At Web 2.0 Expo

I’m really looking forward to seeing Nis talk about the architecture that supports these feeds this fall at Web 2.0 Expo NYC, [Flickr PuSH: Real-time Updates on the Cheap for Fun and Profit](http://www.web2expo.com/webexny2011/public/schedule/speaker/120329)