---
id: 4760
title: 'WifiMug.org data and doing the right thing'
date: '2011-01-05T17:58:09+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4760'
permalink: /2011/01/05/wifimug-org-data-doing-the-right-thing-more-minimal-competence/
categories:
    - Uncategorized
tags:
    - community
    - data
    - 'do the right thing'
    - wifimug
---

[WifiMug.org](http://wifimug.org) (“Caffeinated and Unstrung”) was a moderately successful community collaboration \[I built and ran\](http://laughingmeme.org/tag/wifimug/) to catalog good coffee shops to work out of, originally and most successfully in Seattle, then spread to Vancouver, Portland, Chicago, Boston, and New York.

It was also an experiment in extracting structured data from semi-structured, free form wiki like data entry.

\[I moved away\](http://laughingmeme.org/2004/11/23/moving-back-to-boston/), and the site kept running itself. Eventually the spammers overwhelmed the community and I had to shut it down. I feel bad about this. Bringing back (and rewriting) WifiMug is on the todo list, it’s on the given-the-ability-to-freeze-time todo list. (by far the longest of my todo lists)

So I spent 15 minutes attempting to do the right thing, and all the data (and all the spam) is available for download under a \[Creative Commons Attribution-ShareAlike license\](http://creativecommons.org/licenses/by-sa/3.0/).

The \[dump\](http://wifimug.org/data/) contains the following directories per city:

- `database` contains the raw text of the wiki pages that represented each of the cafes (and the various meta pages).
- `metadata` contains some of the structured data, per page
- `rcs` the history of each page. (yes \[rcs\](http://www.gnu.org/software/rcs/))

Ideally I’d do more. Ideally I’d scrub the data, port it to some sane format, tease out the implicit metadata encoded in the markup, attribute all of the various community members, etc. But I’m trying to not let the perfect be the enemy of the ok. This is a \[minimal competence\](http://laughingmeme.org/2010/05/18/minimal-competence-data-access-data-ownership-and-sharecropping/) thing.

And ideally we’d should be able to hope and expect that \[Yahoo!\](http://yfrog.com/h3z89p) would do something like this with the infinitely more important and influential \[del.icio.us\](http://del.icio.us) data set — dedicate a few weeks or months of time to preserving one of the greatest new libraries of our time, possibly donating it to \[Archive.org\](http://archive.org) or the \[LoC\](http://www.loc.gov). But nothing makes you uncomfortable like holding Y! to a standard you aren’t personally living up to.

\[Get the data\](http://wifimug.org/data/).

All done/written under the influence of 30k feet and 10 minutes of reflection, treat accordingly.

ps. I almost got all of this into 140 characters, but failed. I hate the way blog posts feel so flabby and fluffy after the compressed kinetic energy of a tweet. I mean \[Anil makes me feel all noble doing it\](http://dashes.com/anil/2011/01/if-you-didnt-blog-it-it-didnt-happen.html), but I miss my creative restrictions.