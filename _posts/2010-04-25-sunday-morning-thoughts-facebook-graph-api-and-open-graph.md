---
id: 4552
title: 'Sunday Morning Thoughts: Facebook, Graph API, and Open Graph'
date: '2010-04-25T08:01:25+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4552'
permalink: /2010/04/25/sunday-morning-thoughts-facebook-graph-api-and-open-graph/
categories:
    - Uncategorized
---

I don’t do the pundit thing. I don’t claim to already understand everything that [Facebook’s announcements this week](http://blog.facebook.com/blog.php?post=383404517130) mean.

They were certainly interesting, and breath taking in potential scope. They also rely heavily on the weight of FB’s 500 million monthly engaged users to make attractive their boil-the-oceans approach to the semantic web. If something were to happen to those engaged users numbers ….

A friend I was with chatting regarding the lack of location/geo announcements at [F8](http://apps.facebook.com/feightlive/) said, “Well, they gave [Foursquare](http://foursquare.com) a 6 month reprieve.” Which maybe be true, but more interestingly, I’m not sure anyone got more then a 6 months reprieve to figure out what this all means for them.

A couple of random things I’ve been thinking about. More to come surely.

### View Source Gets More Interesting

If you view source on [Open Graph Protocol page](http://opengraphprotocol.org/) you’ll see the rather tepid sets of fixed descriptors currently available from the centrally planned vocabulary of Facebook’s Open Graph Protocol.

You’ll also see an `fb:admins` tag with the value `706023` that we can [plug into the Graph API](http://graph.facebook.com/706023).

```
{
  "id": "706023",
  "name": "Mark Kinsey",
  "first_name": "Mark",
  "last_name": "Kinsey"
}

```

[Authorize](http://developers.facebook.com/docs/api#authorization), and you get a lot more info. (certainly enough to determine that yes, this is **that** Mark Kinsey, Open Graph’s product manager, so no surprises there!)

Thinking about the various attempts to claim ownership of websites over the years, I think the last one that I implemented was [Technorati’s](http://technorati.com/) and for the fiddliness of placing a badge on my site, I never got much value.

As someone’s who thinks about the role of identity on the Internet, it’s interesting to see these strong identity claims. As a pragmatist it looks like most web pages will be claimed by organizations not individuals. And as a developer on the “Open Web”, I can’t help but compare and contrast this approach versus approaches like [Web Finger](http://webfinger.org) and the [Social Graph API](http://code.google.com/apis/socialgraph/).

As a publisher it’s mildly interesting right now, a non-intrusive vanity plate that acts as hook into a well thought out API. This changes when the promised “coming soon” update to [streams.publish](http://developers.facebook.com/docs/reference/rest/stream.publish) lands, giving me access to the stream of anyone who has a relationship with the objects I own. Changes a lot. At a minimum this is the much discussed, historically elusive, RSS for the masses.

### UGC and Ownership

<acronynm title="User generated content">UGC is one of the uglier acronym ever to take the Yahoo (and the wider Valley) by storm. It’s banned from [Flickr](http://flickr.com). At Flickr, we’ve always maintained we don’t have “users” extruding some waste-like byproduct called “content”. Rather we have members and/or photographers who take [photos](http://flickr.com/photos/) (and organize photos, annotate photos, collect photos, and comment on photos), and grant us a very limited license to display them.</acronynm>

You see, they’re **their** photos.

Which means my first instinct is of course to publish the photographer’s Facebook ID as the owner of Flickr’s photo pages. Something tells me the world isn’t quite ready for that.

### Graph API

The [Graph API](http://graph.facebook.com) is nice work. Simple, clean, guessable URIs, plain-old-JSON-over-HTTP, graceful degradation for unauthorized experiences, well documented.

The [introspection](http://developers.facebook.com/docs/api#introspection) allows for a hypertextual exploration of objects in the system. I’m not sure I’ve **ever** seen a useful, attractive API which also supported hypertext. It might not make the high religion REST acolytes happy, but to my eyes it’s beautiful.

A great compromise of simplicity, power, expressiveness, and future extensibility I’ve ever seen. And it takes the entire Web as it’s potential subject matter. That’s a gift. I, for one, am looking forward to playing with it.

(and I says this as the sometimes eager, sometimes cringing custodian of [one of the most popular APIs on the Web](http://flickr.com/services/api/).)

### Why Centrally Managed Unique IDs?

We’ve got a nice REST-ish API that advertises the ability to operate on the World-Wide-Web-Itself-As-A-Social-Object. Yeehah!

One thing I’m genuinely puzzled by though is why the need for a centralized broker of unique IDs? To instantiate an object in the open graph you first need to provision a unique ID for it by calling the [Graph](http://graph.facebook.com) endpoint like so:

[`https://graph.facebook.com/?ids=http://laughingmeme.org/`](https://graph.facebook.com/?ids=http://laughingmeme.org/)

… though the above call just works as an echo service, so now I’m confused.

But their example at least works

```
`https://graph.facebook.com/?ids=http://www.imdb.com/title/tt0117500/`

{
  "114324145263104": {
    "id": "114324145263104",
    "name": "The Rock (1996)",
    "picture": "http://profile.ak.fbcdn.net/hprofile-ak-sf2p/hs252.snc3/23275_114324145263104_6494_s.jpg",
    "link": "http://www.imdb.com/title/tt0117500/",
    "category": "Tv show",
    "fan_count": 114
   }
}

```

(N.B: leave off that trailing slash, and you get a different resource)

Why not simply use the URIs **as** the unique identifiers?

When you’re designing a complex system, strategically adding <acronym title="Single points of failure">SPOFs</acronym> is how you make intractable problems tractable. But I am struggling to see the advantages of a centralized ID broker converting URIs to IDs over simply using the URIs? It introduces a new single point of failure (technical/social/political) into the mix, with limited upsides — at least that are obvious to me.

Which is not to say the upside doesn’t exist. It isn’t like the SemWeb folks didn’t have **time** to get this whole open graph system up and running on URIs. Is there something magical about large unique integers that grease our ability to operate? Or is it an unfortunate, and potentially damaging wart in the design that people will overlook in their stampede to access the hordes?

Someone help me out here?

### Route Your Value Over My Wires

Let’s imagine a future in which network neutrality is a solved issue. In this future the providers of the pipes can either charge you to route traffic over their wires, or they can give it away (or even pay you!) to use them on the theory that they can extract sufficient value from watching the traffic flow by. This is business Google is in right now. This is also [bit.ly’s](http://bit.ly) business.

And this is the business that Facebook is in a position to own.

Setting aside for now whether Facebook is trying to get into the name broker business (a profitable, but sketchy one), you can imagine being the central ID broker for URLs-which-are-interesting allows for at least **one really neat optimization**. If you want to launch a search engine, for example, you could rack 1+ million machines and snapshot the web daily and try to intuit meaning from what you find. Or you could cheat.

Imagine instead you’ve got curated set of pages which at least *one* person cares about to start your crawl. Did you get a look at that [insane visualization of Google’s server](http://gizmodo.com/5517041/googles-insane-number-of-servers-visualized) the other day? If you asked me to build that, I spend a lot of time thinking about how to cheat.

### Central IDs, last thoughts

The routing value over the FB pipes is just a story I’m telling myself. Maybe IDs are magic. Maybe they’re just so Facebook can get better compression in their MySQL indexes. I don’t know. But at a gut level it feels wrong, delicate, and at a cross purposes with the Web. (also as an optimization on the way to building social-search-for-real-this-time, you still don’t avoid the spammers with this one, sorry)

A comforting thought for years has been that Google can’t really afford to damage the Web, and so even their shortest term thinking had a way of working itself out. I wonder if Facebook can?

### Is the Open Graph Open Enough?

Lots of teeth gnashing regarding the openness of the [Open Graph Protocol](http://opengraphprotocol.org). It certainly isn’t **less** open then industry collusion like [XAuth](http://xauth.org), or even [Open Like](http://openlike.org/).

For me the openness flounders on the fairly arbitrary and limited range of object types and verbs available. And those centralized IDs which aren’t technically part of the protocol, but do immediately cast a very long, dark shadow over the space where interesting alternatives and an ecosystem could grow.

It will be argued that it only makes sense to launch with a limited vocabulary, and there is of course [a mailing list](http://groups.google.com/group/open-graph-protocol) where you are welcome to come and propose, and argue for your unique, snowflake of an extension.

These Open\* projects always have a mailing list. (or rather a Google Group). And if the value you can extract by prematurely paving cowpaths to your particular mousetrap is high enough I wish you all luck. That still isn’t a model of open. (or perhaps it’s a model of pure openness without any of the culturally evolved techniques for dealing with sociopaths)

The Web **has** a model for openness. Or rather it **is** a model for openness. Why a small set of English-like strings to describe your vocabulary? Why not URIs to describe object-types, and verbs? It can’t be because namespaces are too hard this time. After all Open Graph is using [RDFa for goodness sakes](http://twitter.com/kellan/status/1401827568)! (I think that’s my most popular Tweet ever btw) It’s perfectly reasonable to say that Facebook will never consume an object type, or execute a verb that isn’t in their namespace, or on their short whitelist. But if we’re going to argue about whether or not it’s **open**, can we at least look to a working model of openness. One that works so well we ignore it while our conversation flows across it?

Which of course begs the question, how did we managed to leave something as valuable as the Open Graph just sitting there so long that eventually someone just **had** to pick it up and try a semi-centralized implementation, just to see what the upside looked like?

Still it **is** an **interesting** initial set. If you can’t immediately imagine building services on top of it you aren’t thinking very hard about it. And the lovely Graph API makes a number of projects very straightforward. (I’ll admit I’m quietly mourning the death of the technical challenges of handful of sketched projects I’ve been meaning to get to for several years, none of which are fundamentally interesting anymore)

Open-ness aside, there is an inherently unstable, and capricious nature to maintaining strong centrally planned vocabularies. (see: `tagging`) The documented objects, connection objects, and Open Graph object types are already inexplicably out of sync.

### Open Social Graph(s)

For the folks alarmed by Facebook’s announcement this week, as long as user acquisition in social networks is a zero-sum game the value that is extractable will always be highly asymmetrical. The conversation about federated social networks is the conversation you’re looking for. Otherwise you’re just making noise.