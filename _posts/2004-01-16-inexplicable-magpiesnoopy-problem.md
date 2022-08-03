---
id: 706
title: 'Inexplicable Magpie/Snoopy Problem'
date: '2004-01-16T21:15:30+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=706'
permalink: /2004/01/16/inexplicable-magpiesnoopy-problem/
typo_id:
    - '704'
mt_id:
    - '1644'
link_related:
    - ''
raw_content:
    - "<p>\nI got a bug report against <a href=\\\"http://magpierss.sf.net\\\">Magpie</a> a couple of days ago.  A user was puzzled why the seemingly valid, perfectly ordinary url <a href=\\\"http://www.dr.dk/nyheder/html/nyheder/rss/\\\">http://www.dr.dk/nyheder/html/nyheder/rss/</a> was failing to parse.\n</p>\n<p>\nI spent a while confirming that <a href=\\\"http://snoopy.sf.net\\\">Snoopy</a> (both the Magpie patched version, and the recently release 1.01) was treating the entire document as if they were HTTP headers, and treating the body as blank.  I\\'ve spent a little while futzing with this tonight, but my motivation/energy on this is running pretty low.  Anyone feeling up to a spot of debugging?\n</p>\n<p>\n<b>update [17-jan-04]:</b>  Thank you <a href=\\\"http://philringnalda.com/blog/2004/01/yay_for_liberal_parsing.php\\\">Phil</a>!    The problem was, as I kind of suspected, with the CRLF terminators.  Seems the above host was returning \\\"\\\\n\\\" instead of \\\"\\\\r\\\\n\\\".  Having futzed around with trying to get curl, or wget, or lynx to dump the raw headers I was stumped about how to flag the problem.\n</p>\n<p>\nPhil used what he describes as, \\\"The most incredibly tacky debugger ever\\\", but looks great to me:\n<pre>\n str_replace(\\\"\\\\n\\\",\\\"|n|\\\",$snoopy->headers[9]);\n str_replace(\\\"\\\\r\\\",\\\"|r|\\\",$snoopy->headers[9]);\n</pre>\n(and it was the middle of the night no less)\n</p>\n<p>\n<h3>Solution</h3>\nSee comments for discussion, here is the patch:\n<pre>\n--- magpierss-0.5.2/extlib/Snoopy.class.inc     Wed Jun 25 19:34:48 2003\n+++ dev/magpierss/extlib/Snoopy.class.inc       Sat Jan 17 10:00:21 2004\n@@ -808,7 +808,8 @@\n                                return false;\n                        }\n \n-                       if($currentHeader == \\\"\\\\r\\\\n\\\")\n+//                     if($currentHeader == \\\"\\\\r\\\\n\\\")\n+                       if(preg_match(\\\"/^\\\\r?\\\\n$/\\\", $currentHeader) )\n                                break;\n \n\n</pre>\n</p>\n<p>\nI\\'m going back and forth on whether to do a point release with this (and whether to even apply it to Magpie), as it feels wrong to me to make a piece of code less correct.  I guess I\\'m a <a href=\\\"http://www.tbray.org/ongoing/When/200x/2004/01/16/DraconianHistory\\\">draconian</a>, not a <a href=\\\"http://diveintomark.org/archives/2004/01/16/draconianism\\\">tolerant</a>. (which comes as no surprise to anyone who knows me :)  Opinions?  And I\\'m still considering dumping Snoopy, if anyone wants to give feedback on that.\n</p>\n<p>\nThanks again Phil, like I said, it is rare and pleasant surprise to wake up in the morning with less problems then when you went to bed.\n</p>\n<p>\n<h3>Snoopy Alternatives (Dump the Beagle?)</h3>\n\nI\\'m really tempted to ditch <a href=\\\"http://snoopy.sf.net\\\">Snoopy</a> all together, as its dev cycles is abysmal (and they didn\\'t apply my patch! pout pout), and it includes a huge amount of HTML parsing code which is inappropriate in an HTTP library.\n</p>\n<p>\nOther options include:\n<ul>\n<li><a href=\\\"http://pear.php.net/package/HTTP_Request\\\">HTTP_Request</a> from PEAR, which looks promising.  Support for SSL (using OpenSSL instead of cURL), HTTP Authentication (Basic), gzip encoding, all fresh and out of the box.  Looks nice and clean.  And my Perl soul wants to support <a href=\\\"http://pear.php.net\\\">PEAR</a> on the idea that it\\'s like CPAN.  On the downside it introduces the PEAR dependency cascade which seems to be beyond the ability (either due to experience or hosting limitations) of many if not most of my users (or at least the ones I hear from).</li>\n<li>\nThe other option which I\\'ve explored before is <a href=\\\"http://scripts.incutio.com/httpclient/index.php\\\">HttpClient</a> from the excellent <a href=\\\"http://simon.incutio.com/\\\">Simon Willison</a>.   I suppose it\\'s a false sense of security to say \\\"hey, I like his blog, his code must be good\\\", but there you have you it.  And he is where I cribbed how to add gzip encoding support to Snoopy.  But his call syntax is awkward, and no SSL support, and I don\\'t think it\\'s an active project.  On the up side it is self contained; I could (presumably) drop the file into extlib (which standards for external library btw) in place of Snoopy, and be off to the races.\n</li>\n</ul>\nOne option would be to pack the entire PEAR dependency tree into extlib, but I\\'m unclear on how well that will work, and it will increase the the library size several fold, and probably cause some on version clashes to boot.  Another option would be to other two versions of Magpie, with and without dependencies included (MoveableType takes this approach).  Or lastly I could figure out how to fix bloody Snoopy.\n</p>\n<p>\nThoughts?\n</p>"
tags:
    - magpie
---

I got a bug report against [Magpie](http://magpierss.sf.net) a couple of days ago. A user was puzzled why the seemingly valid, perfectly ordinary url <http://www.dr.dk/nyheder/html/nyheder/rss/> was failing to parse.

I spent a while confirming that [Snoopy](http://snoopy.sf.net) (both the Magpie patched version, and the recently release 1.01) was treating the entire document as if they were HTTP headers, and treating the body as blank. I’ve spent a little while futzing with this tonight, but my motivation/energy on this is running pretty low. Anyone feeling up to a spot of debugging?

**update \[17-jan-04\]:** Thank you [Phil](http://philringnalda.com/blog/2004/01/yay_for_liberal_parsing.php)! The problem was, as I kind of suspected, with the CRLF terminators. Seems the above host was returning “\\n” instead of “\\r\\n”. Having futzed around with trying to get curl, or wget, or lynx to dump the raw headers I was stumped about how to flag the problem.

Phil used what he describes as, “The most incredibly tacky debugger ever”, but looks great to me:

```

 str<em>replace("\n","|n|",$snoopy->headers[9]);
 str</em>replace("\r","|r|",$snoopy->headers[9]);
```

(and it was the middle of the night no less) ### Solution

See comments for discussion, here is the patch: ```

--- magpierss-0.5.2/extlib/Snoopy.class.inc     Wed Jun 25 19:34:48 2003
+++ dev/magpierss/extlib/Snoopy.class.inc       Sat Jan 17 10:00:21 2004
@@ -808,7 +808,8 @@
                                return false;
                        }

```

- if($currentHeader == "\\r\\n") +// if($currentHeader == "\\r\\n")
- if(preg\_match("/^\\r?\\n$/", $currentHeader) ) break;

I’m going back and forth on whether to do a point release with this (and whether to even apply it to Magpie), as it feels wrong to me to make a piece of code less correct. I guess I’m a [draconian](http://www.tbray.org/ongoing/When/200x/2004/01/16/DraconianHistory), not a [tolerant](http://diveintomark.org/archives/2004/01/16/draconianism). (which comes as no surprise to anyone who knows me ![:)](http://lm.local/wp-includes/images/smilies/simple-smile.png) Opinions? And I’m still considering dumping Snoopy, if anyone wants to give feedback on that.

Thanks again Phil, like I said, it is rare and pleasant surprise to wake up in the morning with less problems then when you went to bed.

### Snoopy Alternatives (Dump the Beagle?)

I’m really tempted to ditch [Snoopy](http://snoopy.sf.net) all together, as its dev cycles is abysmal (and they didn’t apply my patch! pout pout), and it includes a huge amount of HTML parsing code which is inappropriate in an HTTP library.

Other options include:

- [HTTP\_Request](http://pear.php.net/package/HTTP_Request) from PEAR, which looks promising. Support for SSL (using OpenSSL instead of cURL), HTTP Authentication (Basic), gzip encoding, all fresh and out of the box. Looks nice and clean. And my Perl soul wants to support [PEAR](http://pear.php.net) on the idea that it’s like CPAN. On the downside it introduces the PEAR dependency cascade which seems to be beyond the ability (either due to experience or hosting limitations) of many if not most of my users (or at least the ones I hear from).
- The other option which I’ve explored before is [HttpClient](http://scripts.incutio.com/httpclient/index.php) from the excellent [Simon Willison](http://simon.incutio.com/). I suppose it’s a false sense of security to say “hey, I like his blog, his code must be good”, but there you have you it. And he is where I cribbed how to add gzip encoding support to Snoopy. But his call syntax is awkward, and no SSL support, and I don’t think it’s an active project. On the up side it is self contained; I could (presumably) drop the file into extlib (which standards for external library btw) in place of Snoopy, and be off to the races.

One option would be to pack the entire PEAR dependency tree into extlib, but I’m unclear on how well that will work, and it will increase the the library size several fold, and probably cause some on version clashes to boot. Another option would be to other two versions of Magpie, with and without dependencies included (MoveableType takes this approach). Or lastly I could figure out how to fix bloody Snoopy. Thoughts?