---
id: 4988
title: 'Snooping on an iPhone app&#8217;s API usage (aka light weight reverse engineering)'
date: '2011-11-12T14:59:08+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4988'
permalink: /2011/11/12/snooping-on-an-iphone-apps-api-usage-aka-light-weight-reverse-engineering/
categories:
    - Uncategorized
---

I don’t much like using sites that don’t offer APIs. (this is one of the reasons I don’t use [Quora](http://www.quora.com/) anymore, they’ve had [plenty of time to offer an API in good faith](http://www.quora.com/When-is-Quora-planning-an-Open-API))

But I do like playing with new sites and that means playing with sites that haven’t opened up an API, **yet**. It’s funny I keep getting into conversations with folks about, “We’re not sure how to open an API” or “We’ve got an API, but we think we need to rebuild it (and/or outsource maintenance of it to a 3rd party) before we make it public.” For those folks, please see [flamework-api](https://github.com/straup/flamework-api), an implementation of the Flickr “API framework” for how easy it can be, and then get over your timidity! But my favorite variant on this is, “Well we have an API for the iPhone app, but it isn’t ready yet for public.” Because that means there *is* an API, and you can use it.

Some quick notes on reverse engineering an API from an iPhone (mostly because I had to scrape all this back out of my lizard brain this week, and while it’s straightforward, there are a few step)

1. Grab a proxy, I use [Charles](http://www.charlesproxy.com/), but [Burp](http://portswigger.net/burp/proxy.html) works just as well and is free.
2. On a wifi network, fire up the proxy and enable SSL proxying.
3. Connect to a secure site with a browser via the proxy. (Charles will setup proxying for Firefox automatically)
4. Using Firefox, drill into Page Info &gt; Security &gt; View Certificate &gt; Details and export the CA certificate, which will be the intermediate proxy’s root cert. (e.g. with Charles it will be CharlesProxySSLProxying.cer) (YMMV with different proxies, and different browsers)
5. Upload the root cert somewhere you can hit with mobile Safari from your phone
6. Browse there with your phone, and add the cert.
7. Throw your phone into “Airplane Mode”, re-enable wifi, connect to the same network your proxy is running on, in the “Choose a Network” menu, drill down and setup Manual proxying pointing at your laptops IP address, and port 8888 if you’re running Charles or 8080 if you’re running Burp (or whatever else your proxy is running at)
8. Fire up the iPhone app with the API you’re interested in, and sit back and watch the bits flow.

(Reading over this again this morning I noticed I just assumed SSL, my data points suggest that’s a reasonable assumption both as SSL is easy, and as FBOAuth becomes more common, but obviously if the API you’re looking at isn’t running over SSL, skip steps 2-7.)