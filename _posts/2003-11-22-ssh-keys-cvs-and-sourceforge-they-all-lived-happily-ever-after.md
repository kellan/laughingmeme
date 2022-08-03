---
id: 668
title: 'SSH keys, CVS, and Sourceforge:  They All Lived Happily Ever After'
date: '2003-11-22T14:40:52+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=668'
permalink: /2003/11/22/ssh-keys-cvs-and-sourceforge-they-all-lived-happily-ever-after/
typo_id:
    - '666'
mt_id:
    - '1473'
link_related:
    - ''
raw_content:
    - "<p>\nHallelujah!  After nearly 6 months of being locked out of the <a href=\\\"http://sourceforge.net\\\">Sourceforge</a> CVS server, I\\'m officially a functional member of society again, with a working DSA key.\n</p>\n<p>\nSometime last June I uploaded an SSH key to the Sourceforge CVS servers.  It somehow got corrupted.  Then I spent the next 2 months trying to convince Sourceforge to remove it so I could at least revert to logging in using a password.    Apparently the only solution was to upload a new key over top of the existing one.  However this didn\\'t work.  I\\'ve been re-trying this technique on a montly to semi-monthly basis ever since.  And today it worked.\n</p>\n\n<p>\n<h3>CVS Troubleshooting</h3>\nHave you ever gone through this dreaded little dance?\n<blockquote>\n<pre>\n&gt; cvs update\nConnection closed by <em>some ip address</em>\ncvs [update aborted]: end of file from server (consult above messages if any)\n</pre>\n</blockquote>\nA bit short on diagnostic information isn\\'t it?  To give CVS the benefit of the doubt about its seemingly uneccessary terseness, remember that CVS checkouts over SSH are kind of a last minute hack, a bag on the side of a program developed for an earlier, more trusting era.  In my unfortunately too common expirence this means one of two things.\n<ol>\n<li>You\\'ve forgotten to set the environment variable <code>CVS_RSH</code> to <code>ssh</code> (e.g. <code>export CVS_RSH=ssh</code>).  This enviornment vairable tells CVS that when it sees :ext: as the auth protocol to use SSH.  See <a href=\\\"http://cvsbook.red-bean.com/cvsbook.html#Accessing_A_Repository\\\">Accessing A Repository</a></li>\n<li>You\\'ve successuly setup CVS to use SSH, and now you\\'re trying to use SSH keys, and something is going wrong. (for example you uploaded your public key through a web app that inexplicably mangled it)</li>\n</ol>\n</p>"
---

Hallelujah! After nearly 6 months of being locked out of the [Sourceforge](http://sourceforge.net) CVS server, I’m officially a functional member of society again, with a working DSA key.

Sometime last June I uploaded an SSH key to the Sourceforge CVS servers. It somehow got corrupted. Then I spent the next 2 months trying to convince Sourceforge to remove it so I could at least revert to logging in using a password. Apparently the only solution was to upload a new key over top of the existing one. However this didn’t work. I’ve been re-trying this technique on a montly to semi-monthly basis ever since. And today it worked.

### CVS Troubleshooting

Have you ever gone through this dreaded little dance? > ```
> 
> > cvs update
> Connection closed by <em>some ip address</em>
> cvs [update aborted]: end of file from server (consult above messages if any)
> ```

A bit short on diagnostic information isn’t it? To give CVS the benefit of the doubt about its seemingly uneccessary terseness, remember that CVS checkouts over SSH are kind of a last minute hack, a bag on the side of a program developed for an earlier, more trusting era. In my unfortunately too common expirence this means one of two things. 1. You’ve forgotten to set the environment variable `CVS_RSH` to `ssh` (e.g. `export CVS_RSH=ssh`). This enviornment vairable tells CVS that when it sees :ext: as the auth protocol to use SSH. See [Accessing A Repository](http://cvsbook.red-bean.com/cvsbook.html#Accessing_A_Repository)
2. You’ve successuly setup CVS to use SSH, and now you’re trying to use SSH keys, and something is going wrong. (for example you uploaded your public key through a web app that inexplicably mangled it)