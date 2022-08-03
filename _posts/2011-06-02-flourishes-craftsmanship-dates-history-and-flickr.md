---
id: 4890
title: 'Flourishes, Craftsmanship, Dates, History, and Flickr'
date: '2011-06-02T15:40:56+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4890'
permalink: /2011/06/02/flourishes-craftsmanship-dates-history-and-flickr/
categories:
    - Uncategorized
---

\[William Morris\](http://en.wikipedia.org/wiki/William*Morris) was an important figure in my house growing up. Mostly because he was one of my grandmother’s muses (growing up as she did in Southern California surrounded by the work he inspired in the \[California Craftsmen\](http://en.wikipedia.org/wiki/American*Craftsman), e.g. the sublime \[Gamble House\](http://www.gamblehouse.org/)). And we had the best picture books of his works lying around the house. (the fact that he was also a socialist and anarchist as well as a successful aesthetic theoretician and artist helped later)

Which is all apropos of very little except my thinking about why I’m so sympathetic to the design philosophy of what I call “flourishes.” Flourishes, as I think of them, are the elements you add to a design not because they are necessary or straightforward, but because they’re often hard and interesting, and their inclusion speaks of a better world than the one we live in. That’s core to my personal definition of craftsmanship.

Which again is apropos of nearly nothing, except it’s on my mind as I think about this blog post, which is mostly about dates and Flickr. (and to a lesser extent craftsmanship)

### I like shoeboxes

I think dates are important. I think history is important too. I’m a self described calendar dork. And I fret about the warm bath of now-ness we seem to be currently living in; real time a synonym for ephemerality and disposability. If there is anything this culture needs less of, it is disposability. I sometimes claim this will be the great era of forgetting, an entire generation’s learnings/thoughts/beliefs as if \[writ in water\](http://en.wikipedia.org/wiki/John\_Keats). Which is suppose why I \[twitched a bit\](https://twitter.com/#!/kellan/status/71605600282353664) about \[Jason’s perfectly valid critique of the current state of sociality on Flickr\](http://kottke.org/11/05/the-most-important-page-on-flickr), namely that it’s stagnated.

So I wanted to talk a bit about the date handling flourishes in Flickr. (I worked on nearly none of this, and much of it was already in place by the time I joined.)

### Upload dates vs Taken dates

[![[Blue grotto, Capri Island, Italy] (LOC)](http://farm5.static.flickr.com/4018/4712018396_0b6052d407.jpg)](http://www.flickr.com/photos/library_of_congress/4712018396/ "[Blue grotto, Capri Island, Italy] (LOC) by The Library of Congress, on Flickr")

The date you uploaded a photo to Flickr is stored in epoch seconds, and can’t be earlier then the date you joined Flickr.

The date your photos was taken is stored in a MySQL datetime technically giving you the ability to label your photo as being taken solidly 800+ years before anything most of us would describe as the invention of photography. Which is a little silly. But I do love this photo of the \[Blue grotto, Capri Island, Italy taken in 1890\](http://www.flickr.com/photos/library*of*congress/4712018396/). (in fact you can see \[all your favorite photos taken before 1900\](http://www.flickr.com/search/?&amp;d=taken–19000101&amp;ss=2&amp;ct=6&amp;mt=all&amp;w=faves&amp;adv=1), I have four)

Fundamentally this split between system activity time, and human editable creation date models a world where the people who use your software do something other than use your software. You have to decide how you feel about admitting that possibility.

### Circa dates, and date granularity

If you visit most photo pages the date does the semi-standard human friendly date thing aka if the photo was taken recently it will say “taken 18 minutes ago”, otherwise it will say “taken on August 10, 2008”.

But if you visited that Blue Grotto photo you’ll notice the date is listed as “This photo was taken some time in 1890.” That’s date granularity. Flickr taken dates come in \[4 levels of granularity\](http://www.flickr.com/services/api/misc.dates.html), exact, year-month, year, and circa.

What’s circa? Circa is a flourish. Circa is the sort of feature you only get when you care about the craftsmanship. You can checkout the \[George Eastman House archives, circa 1860\](http://www.flickr.com/photos/george*eastman*house/archives/circa/1860/). Those photos were all taken in 1860 plus or minus 5 years.

Computers demand exactitudes by default, but it’s a laziness of which we are collectively guiltily that we’ve traded a few programmer and compute cycles for a rich and nuanced societal understanding of time.

### Archives

It should probably go without saying, but if you want to understand the story arch of someone’s life (not just the this week’s episode), having \[access to browsable archives\](http://www.flickr.com/photos/kellan/archives/) is pretty key. The photos from friend page probably is the most neglected page based on it’s level importance, but the archive pages are the most neglected page on Flickr. Still they do the job.

(there’s a comparable page for places places, instead of dates, that never quite got launched, but you can sort of fake it with the \[personal map page\](http://www.flickr.com/photos/kellan/map))

Also, you know, just being able to jump back to a arbitrary page in history in the stream.

### Date ranges on sets

[![First Cup July 2, 2005](http://farm1.static.flickr.com/18/23137575_8e16c6debd.jpg)](http://www.flickr.com/photos/dogmilque/23137575/ "First Cup July 2, 2005 by dogmilque, on Flickr")

This is another flourish feature. One of my favorite.

Last Summer, Jazz and I made a \[2400 mile loop up through Nova Scotia\](http://www.flickr.com/photos/kellan/sets/72157624386832289/). On that page in a small grey font you’ll see a note telling you the photos are “from between 04 Jul 2010 &amp; 12 Jul 2010.” That tells a story. Immediate nostalgia. For me at least. Probably doesn’t do much for you. But that right there is my second favorite feature on Flickr. (the \[“You + X” pages\](http://laughingmeme.org/2010/11/13/you-and-%E2%80%A6/), being my first, or really just this page of \[Jazz and me\](http://www.flickr.com/photosof/kellan+curlyjazz) )

However on a more substantial set, like Steve Ford’s \[First Cups\](http://www.flickr.com/photos/dogmilque/sets/532968/) set, with 2036 pictures of his first cup of coffee each day for 6 years, the between dates allow you to jump around within the set and provide quick orientation.

This is a time linear navigation model, but date way markers are at least surfaced. (also this is in many ways a post-facto rationalization of the fact that sets weren’t originally paginated)

### Trending Tags

[![Marcha da Liberdade](http://farm6.static.flickr.com/5028/5770325658_16c1b255a4.jpg)](http://www.flickr.com/photos/panopticosp/5770325658/ "Marcha da Liberdade by marcel maia, on Flickr")

This is most hidden, and probably most experimental (that actually got launched). If you go to the \[global map\](http://www.flickr.com/map/), and click the House icon, you’ll be presented with a map of geolocalized trending topics (today’s include \[“folklife” in Seattle\](http://www.flickr.com/places/United+States/Washington/Seattle#folklife,recent), and \[“marchadaliberdade” in Sao Paulo, BR\](http://www.flickr.com/places/Brazil/Sao+Paulo/S%C3%A3o+Paulo/in-S%C3%A3o+Paulo#marchadaliberdade,recent)).

### Search + Dates

[![One time, at Radio Shack Computer Camp ...](http://farm4.static.flickr.com/3064/3062450183_10808533cc.jpg)](http://www.flickr.com/photos/stewart/3062450183/ "One time, at Radio Shack Computer Camp ... by Stewart, on Flickr")

Just having real search is considering something of a craftsman’s flourish these days, but assuming we’re executing at a level of competence that allows for search, adding dates as first class selectors to your search make it possible to have a page like \[all the photos from your contacts taken between 1980-1990\](http://www.flickr.com/search/?q=&amp;d=taken-19800102-19900101&amp;ss=2&amp;ct=6&amp;mt=all&amp;w=contacts&amp;adv=1).

### In conclusion

No conclusion. Just some design notes, in case you get inspired, you know, for next time.

*(nota bene: depending on how active you are on Flickr many of these search links might come up blank for you, I tend to use Flickr’s ability to scope searches to only things that are personally relevant to me, my favorites, my contacts, my photos, etc, your view of these links will be scoped to your personal world view. Whether or not I should be able to share my personalized view of the world publicly ala Twitter’s recently revived “With Friends” feature was heavily debated, but eventually was sacrificed on the altar of performance concerns in a system with rich privacy settings)*