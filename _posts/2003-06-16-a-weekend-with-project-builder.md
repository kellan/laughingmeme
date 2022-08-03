---
id: 479
title: 'A Weekend with Project Builder'
date: '2003-06-16T16:38:14+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=479'
permalink: /2003/06/16/a-weekend-with-project-builder/
typo_id:
    - '477'
mt_id:
    - '874'
link_related:
    - ''
raw_content:
    - "<p>\r\nOn a tip from \r\n<a href=\\\"tuttlesvc.org\\\">Tom</a> I took \r\n<a href=\\\"http://developer.apple.com/tools/projectbuilder/\\\">Project Builder</a> for a spin this weekend to see if it would do as my new editor.  And I like it a lot.\r\n</p>\r\n<p>\r\n<h3>A Horror of IDEs</h3>\r\nI developed a certain antipathy to IDEs over the years, partially because I associate them with work, and partially because I associate them with coding in an un-agile language, like Java.  Working with Project Builder felt different, sure 95% of the features don\\'t apply to me, but it felt fast, and simple, and got out of my way, but in a \\\"I\\'m going to be standing right over, give a yell if you need anything\\\" kind of way.  Did I mention fast? (sidenote:  why can\\'t all Apple help load as fast as PB\\'s?)  \r\n</p>\r\n<p>\r\nOne major difference finally hit me, this is the first IDE I\\'ve used in years, *that wasn\\'t written in Java*, and it makes a world of difference.  The \r\n<a href=\\\"http://www.borland.com/jbuilder/\\\">JBuilders</a>, and \r\n<a href=\\\"www.netbeans.org/\\\">NetBeans</a>, and \r\n<a href=\\\"http://www.ibm.com/websphere\\\">Webspheres</a> of the world have taught me that IDEs are sluggish, and odd looking things.  Which has kept me from downloading \r\n<a href=\\\"http://www.eclipse.org/\\\">Eclipse</a> despite rave reviews.\r\n</p>\r\n<p>\r\nSo whats so great about it?  Well not much really.  Its just a responsive, clean editor, with a good file browser a feature which has become overwhelmingly essential on my 12in screen now that I don\\'t have virtual workspaces anymore.\r\n</p>\r\n<p>\r\n<h3>Adding to the Supported Languages</h3>\r\n\r\nbbum (who now works for Apple) seems to have released the inaugural 3rd party grammar, adding <a href=\\\"http://radio.weblogs.com/0100490/2002/12/20.html#a362\\\">Python support to Project Builder</a> (<a href=\\\"http://sourceforge.net/projects/pyobjc/\\\">download</a>\\\"), this was followed by <a href=\\\"http://www.tesugen.com/2002/12/20.html#rubylangspec\\\">Ruby support</a>, <a href=\\\"http://sourceforge.net/projects/phppbx/\\\">PHP</a>, and finally <a href=\\\"http://archive.develooper.com/macosx@perl.org/msg05339.html\\\">Perl</a>.  \r\n</p>\r\n<p>So far I\\'ve only used the PHP syntax which came with a nifty installer, but I had to open up PHP.pbfilespec and add .inc to the list of known extensions. (I was driven to go looking into all of this when PB refused to edit .inc files deferring that responsbility to BBedit).  \r\n</p>\r\n<p>\r\nLooking a little more closely at the Perl grammar, I\\'m not sure it is as well done as the one that PB comes with.  Ideally someone would expand on these to make PB understand constructs like <code>qq{}</code>, heredocs, and regexes.  Would also be great to have file, and project templates like thoses that h2xs (or <a href=\\\"http://use.perl.org/~gnat/journal/12884\\\">modulemaker</a>) generates with skeletal POD, and Makefile.PL.   Maybe I\\'ll get inspired. (though I\\'d like the format a little more completely documented before that point).\r\n</p>\r\n<p>\r\n<h3>A Hitch: CVS Not Working</h3>\r\n\r\nHowever the much hyped CVS integration is not working.  I haven\\'t done an indepth investigation but my instinct is that Project Builder is doing something dumb, try to load my CVSROOT out of my environment rather then just looking in the CVS directory of a project to figure out what to do.  Either that or its quietly failing to find pserver anywhere.  (who still uses pserver for anything other then anonymous access?)\r\n</p>\r\n<p>\r\n<h3>The Missing Documentation</h3>\r\nUnfortunately known of this is documented, its all been gleaned from looking at the files in <code>/System/Library/PrivateFrameworks/PBXCore.framework/</code>.  The other thing which is not documented is how the debugger works, and how to hook into that.  I saw an archived message suggesting you could get the documentation for all this with an NDA, but now I can\\'t find that.  \r\n</p>"
---

On a tip from [Tom](tuttlesvc.org) I took [Project Builder](http://developer.apple.com/tools/projectbuilder/) for a spin this weekend to see if it would do as my new editor. And I like it a lot.

### A Horror of IDEs

I developed a certain antipathy to IDEs over the years, partially because I associate them with work, and partially because I associate them with coding in an un-agile language, like Java. Working with Project Builder felt different, sure 95% of the features don’t apply to me, but it felt fast, and simple, and got out of my way, but in a “I’m going to be standing right over, give a yell if you need anything” kind of way. Did I mention fast? (sidenote: why can’t all Apple help load as fast as PB’s?)  
One major difference finally hit me, this is the first IDE I’ve used in years, *that wasn’t written in Java*, and it makes a world of difference. The [JBuilders](http://www.borland.com/jbuilder/), and [NetBeans](www.netbeans.org/), and [Webspheres](http://www.ibm.com/websphere) of the world have taught me that IDEs are sluggish, and odd looking things. Which has kept me from downloading [Eclipse](http://www.eclipse.org/) despite rave reviews.

So whats so great about it? Well not much really. Its just a responsive, clean editor, with a good file browser a feature which has become overwhelmingly essential on my 12in screen now that I don’t have virtual workspaces anymore.

### Adding to the Supported Languages

bbum (who now works for Apple) seems to have released the inaugural 3rd party grammar, adding [Python support to Project Builder](http://radio.weblogs.com/0100490/2002/12/20.html#a362) ([download](http://sourceforge.net/projects/pyobjc/)“), this was followed by [Ruby support](http://www.tesugen.com/2002/12/20.html#rubylangspec), [PHP](http://sourceforge.net/projects/phppbx/), and finally [Perl](http://archive.develooper.com/macosx@perl.org/msg05339.html).

So far I’ve only used the PHP syntax which came with a nifty installer, but I had to open up PHP.pbfilespec and add .inc to the list of known extensions. (I was driven to go looking into all of this when PB refused to edit .inc files deferring that responsbility to BBedit).

Looking a little more closely at the Perl grammar, I’m not sure it is as well done as the one that PB comes with. Ideally someone would expand on these to make PB understand constructs like `qq{}`, heredocs, and regexes. Would also be great to have file, and project templates like thoses that h2xs (or [modulemaker](http://use.perl.org/~gnat/journal/12884)) generates with skeletal POD, and Makefile.PL. Maybe I’ll get inspired. (though I’d like the format a little more completely documented before that point).

### A Hitch: CVS Not Working

However the much hyped CVS integration is not working. I haven’t done an indepth investigation but my instinct is that Project Builder is doing something dumb, try to load my CVSROOT out of my environment rather then just looking in the CVS directory of a project to figure out what to do. Either that or its quietly failing to find pserver anywhere. (who still uses pserver for anything other then anonymous access?)

### The Missing Documentation

Unfortunately known of this is documented, its all been gleaned from looking at the files in `/System/Library/PrivateFrameworks/PBXCore.framework/`. The other thing which is not documented is how the debugger works, and how to hook into that. I saw an archived message suggesting you could get the documentation for all this with an NDA, but now I can’t find that.  