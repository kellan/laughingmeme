---
id: 28
title: 'Replacing Mozilla&#8217;s Throbber on OSX'
date: '2002-05-13T12:49:57+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=28'
permalink: /2002/05/13/replacing-mozillas-throbber-on-osx/
typo_id:
    - '26'
mt_id:
    - '24'
link_related:
    - ''
raw_content:
    - "A complete reformatting of the disk, and several fresh installs later my mom\\'s iBook is again working.  (though it\r\nseemed touch and go for a while whilst installing The Sims)\r\n<p>\r\nAnd I took the opportunity to upgrade her to Mozilla versus the default installed IE 5.1.  This apparently was a bit of a mistake.\r\nI quickly got a call saying that while she liked Mozilla the throbber (my word not hers) gave her the creeps.  Something about the\r\nway the <em>M</em> disolved into scales just unnerved her.\r\n<p>\r\nSo here I am sitting back in front of the iBook futzing.  It was sooo easy to change the throbber on Galeon, how hard can this be.\r\n<ol>\r\n<li>Find an alternative throbber, like <a href=\\\"http://www.hmetzger.de/zips/throbber.zip\\\">the old Netscape one</a>\r\n<li>Edit userChrome.css to set the busy, and default states\r\n<ul>\r\n<li>its in Macintosh HD::Users::<em>username</em>::Library::Mozilla::Profiles::<em>default</em>::<em>random junk</em>::chrome\r\n<li>you can copy a template from Mozilla::US::chrome::userChrome-example.css\r\n<li>add the proper XUL statements, with the above throbber they are:\r\n<blockquote><pre>\r\n#navigator-throbber\r\n{\r\nlist-style-image : url(\\\"animthrob_single.gif\\\") !important;\r\n}\r\n#navigator-throbber[busy=\\\"true\\\"]\r\n{\r\nlist-style-image : url(\\\"animthrob.gif\\\") !important;\r\n}\r\n</pre></blockquote>\r\n<li>if you are using the TextEdit application\r\n<ul>\r\n<li>swear at it loudly\r\n<li>then choose \\\"Make Plain Text\\\" from the Format menu so as to not save the file in Rich Text Format\r\n<li>promise yourself that you\\'ll install BBEdit\r\n</ul>\r\n</ul>\r\n<li>restart and perhaps, cross your fingers, pray, slaughter chickens, or whatever works for you.\r\n</ul>\r\n<p>\r\nAnybody know a good source for alternative <a href=\\\"http://www.mozilla.org\\\">Mozilla</a> throbbers?"
---

A complete reformatting of the disk, and several fresh installs later my mom’s iBook is again working. (though it seemed touch and go for a while whilst installing The Sims)

And I took the opportunity to upgrade her to Mozilla versus the default installed IE 5.1. This apparently was a bit of a mistake. I quickly got a call saying that while she liked Mozilla the throbber (my word not hers) gave her the creeps. Something about the way the *M* disolved into scales just unnerved her.

So here I am sitting back in front of the iBook futzing. It was sooo easy to change the throbber on Galeon, how hard can this be.

1. Find an alternative throbber, like [the old Netscape one](http://www.hmetzger.de/zips/throbber.zip)
2. Edit userChrome.css to set the busy, and default states 
    - its in Macintosh HD::Users::*username*::Library::Mozilla::Profiles::*default*::*random junk*::chrome
    - you can copy a template from Mozilla::US::chrome::userChrome-example.css
    - add the proper XUL statements, with the above throbber they are: > ```
        > 
        > 
        > <h1>navigator-throbber</h1>
        > 
        > <p>{
        > list-style-image : url("animthrob_single.gif") !important;
        > }</p>
        > 
        > <h1>navigator-throbber[busy="true"]</h1>
        > 
        > <p>{
        > list-style-image : url("animthrob.gif") !important;
        > }
        > </p>
        > ```
    - if you are using the TextEdit application 
        - swear at it loudly
        - then choose “Make Plain Text” from the Format menu so as to not save the file in Rich Text Format
        - promise yourself that you’ll install BBEdit
3. restart and perhaps, cross your fingers, pray, slaughter chickens, or whatever works for you. Anybody know a good source for alternative [Mozilla](http://www.mozilla.org) throbbers?