---
id: 839
title: 'Apple Can&#8217;t Read Its Own Data Formats'
date: '2004-06-12T13:34:28+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=839'
permalink: /2004/06/12/apple-cant-read-its-own-data-formats/
typo_id:
    - '837'
mt_id:
    - '2107'
link_related:
    - ''
raw_content:
    - "So begins the ugly and painful process of restoring from partial backups.  Most (alas not all) of my code and writing were in CVS so that was easy.  The thing which is really killing me is iTunes and iPhoto.\n<h3>iTunes</h3>I wanted to restore iTunes from my music at work (and in the meantime finally updating my home music with my more extensively rated work collection), however iTunes had trouble copying over the metadata from Windows to Mac, and all I got was the music.  I tried a few times copying over the XML file, but it seems that iTunes isn\\'t smart enough to do a timestamp comparison on the 2 versions of the metadata (binary and XML), nor is it smart enough to restore the binary version from the XML if the binary is removed.  Its supremely annoying that there isn\\'t an easy way to sync the metadata between iTunes installs, but its disheartening to see Apple to be so utterly clueless about its own data formats.  Rocket science this ain\\'t.\n\n<h3>iPhoto</h3>However iTunes was just the warm up.  Next I tried to restore my photos into iPhoto.  When I did my backup I copied the entire iPhoto library intact to a DVD, including all of Apple\\'s data files.  When I tried to re-import this directory iPhoto seemed utterly unaware that it might be able to do something smart this all this metadata written down by a previous incarnation of itself, and blithely imported every JPG it found, including the all the thumbnails, and all the symlinks from each of the albums, resulting in 3-4 fold duplication of the photos before I killed it.\n\nI could probably just copy the iPhoto library folder over rather then importing it, except I\\'ve already downloaded my photos from the trip and been playing with the enhanced keyword and \\\"Smart Album\\\" functionality.\n\nIf iTunes was annoying, this is stunning, someone in quality control over in Cupertino is asleep at the wheel.  It isn\\'t like this is a problem unique to me, afterall they <b>knew</b> that people were keeping multiple iPhoto libraries due to earlier versions of iPhoto\\'s abysmal perfomance, in fact that is what iPhoto 4 was released to solve.  Not including a way to merge libraries is inexcusable.\n\n<h3>iPhoto Keyword Widget</h3>And one last nitpick, the person who designed the keyword selector should be fired, or at least locked in a room with the Apple Human User Interface Guidelines.  It is, by far, one of the worst widgets I\\'ve seen on a Mac application.  Most frustrating is the total lack of a way to edit an existing keyword (hint: the proper way to support this would be just like editing a file name, click and hover)\n\nThis stuff isn\\'t hard, and these kind of slips make me think Apple is losing its edge.  Unimpressed."
---

So begins the ugly and painful process of restoring from partial backups. Most (alas not all) of my code and writing were in CVS so that was easy. The thing which is really killing me is iTunes and iPhoto.

### iTunes

I wanted to restore iTunes from my music at work (and in the meantime finally updating my home music with my more extensively rated work collection), however iTunes had trouble copying over the metadata from Windows to Mac, and all I got was the music. I tried a few times copying over the XML file, but it seems that iTunes isn’t smart enough to do a timestamp comparison on the 2 versions of the metadata (binary and XML), nor is it smart enough to restore the binary version from the XML if the binary is removed. Its supremely annoying that there isn’t an easy way to sync the metadata between iTunes installs, but its disheartening to see Apple to be so utterly clueless about its own data formats. Rocket science this ain’t. ### iPhoto

However iTunes was just the warm up. Next I tried to restore my photos into iPhoto. When I did my backup I copied the entire iPhoto library intact to a DVD, including all of Apple’s data files. When I tried to re-import this directory iPhoto seemed utterly unaware that it might be able to do something smart this all this metadata written down by a previous incarnation of itself, and blithely imported every JPG it found, including the all the thumbnails, and all the symlinks from each of the albums, resulting in 3-4 fold duplication of the photos before I killed it. I could probably just copy the iPhoto library folder over rather then importing it, except I’ve already downloaded my photos from the trip and been playing with the enhanced keyword and “Smart Album” functionality.

If iTunes was annoying, this is stunning, someone in quality control over in Cupertino is asleep at the wheel. It isn’t like this is a problem unique to me, afterall they **knew** that people were keeping multiple iPhoto libraries due to earlier versions of iPhoto’s abysmal perfomance, in fact that is what iPhoto 4 was released to solve. Not including a way to merge libraries is inexcusable.

### iPhoto Keyword Widget

And one last nitpick, the person who designed the keyword selector should be fired, or at least locked in a room with the Apple Human User Interface Guidelines. It is, by far, one of the worst widgets I’ve seen on a Mac application. Most frustrating is the total lack of a way to edit an existing keyword (hint: the proper way to support this would be just like editing a file name, click and hover) This stuff isn’t hard, and these kind of slips make me think Apple is losing its edge. Unimpressed.