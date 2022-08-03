---
id: 3676
title: 'FOO: Crowdvine, iCalico, Pathable, a Study in Collusion'
date: '2007-07-11T22:10:36+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/07/11/foo-crowdvine-icalico-pathable-a-study-in-collusion/'
permalink: /2007/07/11/foo-crowdvine-icalico-pathable-a-study-in-collusion/
categories:
    - Uncategorized
tags:
    - calendaring
    - 'casual privacy'
    - collaboration
    - collusion
    - conferences
    - crowdvine
    - foo
    - icalico
    - oauth
    - 'tony stubblebine'
    - 'web services'
    - web2.0
---

I didn’t make it to FOO this year, but I did send software in my stead, and its nice to hear that folks liked it.

We slaved \[iCalico\](http://www.google.com/search?q=icalico) to \[Crowdvine\](http://crowdvine.com) to add a social networking layer, a network that was walked, mapped, and color coded by the \[Pathable\](http://pathable.com/) folks.

Tony has a nice \[report back on it\](http://www.stubbleblog.com/archives/2007/07/social\_conferen.html), as does \[Shelly from Pathable\](http://wagglelabs.com/2007/7/6/waggle-labs-at-foo-camp) (6 weeks aka a couple of late nights). And Scott Berkun (who owes me a copy of “Art of Project Management”!) said \[super nice things\](http://www.scottberkun.com/blog/2007/more-social-software-crowdvine-pathable/).

### Collusion Patterns

So how do you do that — stitch together 3 different sites to provide a unified experience? Visions of APIs, Internet scale SSO, and messaging layers spring to mind. Or more likely hash and slash patches, jury rigged shunts, juggled install directories.

We did the dumb easy thing, and I’m surprised more people don’t do it.

1. Crowdvine.com sets a cookie `collusion`. This cookie contains the data we needed to display the logged in view of iCalico. (you’re nickname and optional your URL). In addition it contained a md5 hash of the concatted data, plus sekret known only to Tony and myself.
2. If we find the cookie `collusion`, we load the described user from the database, or create it on the fly behind the scenes.
3. There is no step 3.

Amazingly useful, trivially simple, ultimately flexible. Niche sites are great, but you need techniques for stitching them together before they can realize their potential as pieces of an ecosystem. I don’t necessarily **expect** to see this kind of integration become more common, but I think it would be great if it did. (and in the name of transparency disposable apps are **huge** enablers, disposable sites/apps is another pattern I’m puzzled we don’t see more of — its as if we more inclined to converse bits then landfill)

**update:** Whoops, it was pointed out there was a step 3, or rather a step 1.5: use CNAMEs to point to individual components on sub-domains.