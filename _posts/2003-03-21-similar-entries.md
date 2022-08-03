---
id: 368
title: 'Similar Entries'
date: '2003-03-21T18:42:05+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=368'
permalink: /2003/03/21/similar-entries/
typo_id:
    - '366'
mt_id:
    - '547'
link_related:
    - ''
raw_content:
    - "<p> \nWay back in the frozen, blighted wasteland that was January this year, I\nwas playing with building a \\\"Similar Pages\\\" functionality to be part of the\nproposed IMC open editing/annotations project, in the hopes of getting around\nthe much noted fact that  <a\nhref=\\\"http://www.well.com/~doctorow/metacrap.htm\\\">people suck at metadata</a>.\nIn the process I discovered my Linear Algebra is more then a little rusty. </p>\n<p> The great (and sometimes immensely frustrating) part of the web is often if\nyou wait long enough, someone else will do all the hard work.  And so it was. \nWhen I finally got around to reading Maciej Ceglowski\\'s (lead troublemaker in\nthe <acronym title=\\\"latent semantic indexing\\\">LSI</acronym> revolution) article,  <a\nhref=\\\"http://www.perl.com/lpt/a/2003/02/19/engine.html\\\">Building a Vector Space\nSearch Engine in Perl</a> I found all my work had been done for me, and laid out\nin a clean Perl module.\n</p>\n<p>\n<h3>Blog as test bed</h3>\nWell an open editing server is still an idea on low simmer, but I\\'ve got a blog,\nso LM (and all you folks) are now the guinea pig.  Please check the individual\nentry archives to see what I\\'m talking about.  \n</p>\n<p>\n<h3>Other options</h3>\nThere have been several <a href=\\\"http://www.kalsey.com/2002/07/related_entries_plugin/\\\">Related\nEntries</a> plugins released for Moveable Type, but I never found these very\nuseful as they: didn\\'t match how I use categories, or would have required me\ngoing back and adding keywords to every entry.  Besides they involved not a\nsingle matrix transformation.\n</p>\n<p>\n<h3>Hacking</h3>\nI love object-oriented programming.  Using Maciej\\'s \n<a\nhef=\\\"http://www.perl.com/2003/02/19/examples/VectorSpace.pm\\\">Search::VectorSpace</a> with MT\nwas almost as simple as subclassing in, and overriding <code>get_words()</code>.\n(In the end I had to make some minor tweaks to <code>search()</code> as well)\n 40 minutes and 40 lines of code later I was happily building vectors of MT\n entries, and calculating similarities.  Building a script to call my new\n Search::VectorSpace::MT took significantly longer :)\n</p>\n<p>\n<h3>Next Steps</h3>\nI wouldn\\'t call the code release ready.  Already I\\'m noticing some problems,\nlike I should be stripping HTML before calculating similarity. (should have been\nobvious)  Also I currently haven\\'t jumped through the hoops to make this a\nMoveable Type plugin, though I think maybe a cron\\'ed crawler, plus some liberal\nuse of \n<a\nhref=\\\"http://www.movabletype.org/docs/mtapi_mt_plugindata.html\\\">MT::PluginData</a> might be the best way to go.  In the mean time I need to\ntweak it a little bit, find the right threshold, figure out the best way to\nrespect the metadata I <b>do</b> have, etc, etc.  If you see any particular bad,\nor particular good results, let me know.  Thanks.\n</p>\n<p>\n<b>update</b>[2003/03/22]:  yeah, its not working very well.  i think i need to play with term weighting, that and strip that HTML.\n</p>"
tags:
    - discovery
    - mt
    - related
---

 Way back in the frozen, blighted wasteland that was January this year, I was playing with building a “Similar Pages” functionality to be part of the proposed IMC open editing/annotations project, in the hopes of getting around the much noted fact that [people suck at metadata](http://www.well.com/~doctorow/metacrap.htm). In the process I discovered my Linear Algebra is more then a little rusty.

 The great (and sometimes immensely frustrating) part of the web is often if you wait long enough, someone else will do all the hard work. And so it was. When I finally got around to reading Maciej Ceglowski’s (lead troublemaker in the <acronym title="latent semantic indexing">LSI</acronym> revolution) article, [Building a Vector Space Search Engine in Perl](http://www.perl.com/lpt/a/2003/02/19/engine.html) I found all my work had been done for me, and laid out in a clean Perl module.

### Blog as test bed

Well an open editing server is still an idea on low simmer, but I’ve got a blog, so LM (and all you folks) are now the guinea pig. Please check the individual entry archives to see what I’m talking about.  
### Other options

There have been several [Related Entries](http://www.kalsey.com/2002/07/related_entries_plugin/) plugins released for Moveable Type, but I never found these very useful as they: didn’t match how I use categories, or would have required me going back and adding keywords to every entry. Besides they involved not a single matrix transformation. ### Hacking

I love object-oriented programming. Using Maciej’s <a hef="http://www.perl.com/2003/02/19/examples/VectorSpace.pm">Search::VectorSpace</a> with MT was almost as simple as subclassing in, and overriding `get_words()`. (In the end I had to make some minor tweaks to `search()` as well) 40 minutes and 40 lines of code later I was happily building vectors of MT entries, and calculating similarities. Building a script to call my new Search::VectorSpace::MT took significantly longer ![:)](http://lm.local/wp-includes/images/smilies/simple-smile.png)### Next Steps

I wouldn’t call the code release ready. Already I’m noticing some problems, like I should be stripping HTML before calculating similarity. (should have been obvious) Also I currently haven’t jumped through the hoops to make this a Moveable Type plugin, though I think maybe a cron’ed crawler, plus some liberal use of [MT::PluginData](http://www.movabletype.org/docs/mtapi_mt_plugindata.html) might be the best way to go. In the mean time I need to tweak it a little bit, find the right threshold, figure out the best way to respect the metadata I **do** have, etc, etc. If you see any particular bad, or particular good results, let me know. Thanks. **update**\[2003/03/22\]: yeah, its not working very well. i think i need to play with term weighting, that and strip that HTML.