---
id: 701
title: 'Delete Comment Spam by Mail'
date: '2004-01-09T10:47:01+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=701'
permalink: /2004/01/09/delete-comment-spam-by-mail/
typo_id:
    - '699'
mt_id:
    - '1620'
link_related:
    - ''
raw_content:
    - "<p>\nA particularly profligate spammer (with an odd habit of spamming me with URLs that resolve to 127.0.0.1), plus the growing awareness that I was falling down on my maintenance routines of deleting spam comments and blacklisting URLs, pushed me to write a new script last night, one to which I can forward the \\'New Comment Posted\\' notifications for spam comments, and have it blacklist the URLs, delete the comment, and rebuild the entry. (ideally would also blacklist the IP)\n</p>\n<p>\nAn aside:  this was my first time using <a href=\\\"http://search.cpan.org/dist/Email-Simple\\\">Email::Simple</a> from the Perl Email Project (no website?) as suggested to me by <a href=\\\"http://aaronland.info\\\">Aaron</a> many months ago, and it lived up to its name - it was simple.\n</p>\n\n<p>\nThat said the rest of this script, while quick and dirty (and sure to be a candidate for Kellan\\'s First Law of Blogging About Code: <em>When using a sufficiently expressive programming language it should be faster to write the code then explain it in a blog entry.</em>) is not simple install, see MT-Blacklist for that.\n</p>\n<p>\nThe trickiest part was getting the script to run with enough permissions to be able to update the blacklist, and overwrite an individual archive.  I wanted to be able to just add a line like <code>die-spammer: |/path/to/comment-spam.pl</code> to my aliases file, but Postfix, in its wisdom, was running my script as nobody.  Then I tried setuid\\'ing the script (with my sysadmin\\'s bleary permission, the 3 hour difference means I can hit him with these questions on his way to bed), but Postfix again, in its wisdom, blocked me.  So I\\'m calling it from procmail with the following rule:\n<pre>\n:0f: comment-spam.lock\n* To: die-spammer\n| /path/to/comment-spam.pl\n</pre>\nWhich is unfortunately a \\\"non-delivering\\\" rule, which means I have to add a second rule to /dev/null the messages.\n</p>\n<p>\nThe other slightly annoying problem is <code>MT::App::Comments::post()</code> is a single monolithic method, with neither methods, nor a template for constructing the notification emails.  So to add the comment ID to the notification emails I had to copy over the entire <code>post()</code> method. (I should check if Jay has a solution to this)\n</p>\n<p>\nAnyone interested, here is the script: <a href=\\\"/comment-spam.pl.txt\\\">comment-spam.pl</a>.  Ideally it should probably check the from address, as some sort of safe guard.\n</p>\n<p>\nAnd here is the patch to MT::App::Comments:\n<pre>\n*** lib/MT/App/Comments.pm Sun Feb 23 02:25:56 2003\n--- spambad/MT/App/Comments.pm        Tue Jan  6 12:17:58 2004\n***************\n*** 146,149 ****\n--- 146,150 ----\n              $body = Text::Wrap::wrap(\\'\\', \\'\\', $body) . \\\"\\\\n$link_url\\\\n\\\\n\\\" .\n                $app-&gt;translate(\\'IP Address:\\') . \\' \\' . $comment-&gt;ip . \\\"\\\\n\\\" .\n+               $app-&gt;translate(\\'Comment ID:\\') . \\' \\' . $comment-&gt;id . \\\"\\\\n\\\" .\n                $app-&gt;translate(\\'Name:\\') . \\' \\' . $comment-&gt;author . \\\"\\\\n\\\" .\n                $app-&gt;translate(\\'Email Address:\\') . \\' \\' . $comment-&gt;email . \\\"\\\\n\\\" .\n\n</pre>\n</p>"
---

A particularly profligate spammer (with an odd habit of spamming me with URLs that resolve to 127.0.0.1), plus the growing awareness that I was falling down on my maintenance routines of deleting spam comments and blacklisting URLs, pushed me to write a new script last night, one to which I can forward the ‘New Comment Posted’ notifications for spam comments, and have it blacklist the URLs, delete the comment, and rebuild the entry. (ideally would also blacklist the IP)

An aside: this was my first time using [Email::Simple](http://search.cpan.org/dist/Email-Simple) from the Perl Email Project (no website?) as suggested to me by [Aaron](http://aaronland.info) many months ago, and it lived up to its name – it was simple.

That said the rest of this script, while quick and dirty (and sure to be a candidate for Kellan’s First Law of Blogging About Code: *When using a sufficiently expressive programming language it should be faster to write the code then explain it in a blog entry.*) is not simple install, see MT-Blacklist for that.

The trickiest part was getting the script to run with enough permissions to be able to update the blacklist, and overwrite an individual archive. I wanted to be able to just add a line like `die-spammer: |/path/to/comment-spam.pl` to my aliases file, but Postfix, in its wisdom, was running my script as nobody. Then I tried setuid’ing the script (with my sysadmin’s bleary permission, the 3 hour difference means I can hit him with these questions on his way to bed), but Postfix again, in its wisdom, blocked me. So I’m calling it from procmail with the following rule:

```

:0f: comment-spam.lock
* To: die-spammer
| /path/to/comment-spam.pl
```

Which is unfortunately a “non-delivering” rule, which means I have to add a second rule to /dev/null the messages. The other slightly annoying problem is `MT::App::Comments::post()` is a single monolithic method, with neither methods, nor a template for constructing the notification emails. So to add the comment ID to the notification emails I had to copy over the entire `post()` method. (I should check if Jay has a solution to this)

Anyone interested, here is the script: [comment-spam.pl](/comment-spam.pl.txt). Ideally it should probably check the from address, as some sort of safe guard.

And here is the patch to MT::App::Comments:

```

*** lib/MT/App/Comments.pm Sun Feb 23 02:25:56 2003
--- spambad/MT/App/Comments.pm        Tue Jan  6 12:17:58 2004

<hr></hr>

<p>*** 146,149 ****
--- 146,150 ----
              $body = Text::Wrap::wrap('', '', $body) . "\n$link_url\n\n" .
                $app->translate('IP Address:') . ' ' . $comment->ip . "\n" .
+               $app->translate('Comment ID:') . ' ' . $comment->id . "\n" .
                $app->translate('Name:') . ' ' . $comment->author . "\n" .
                $app->translate('Email Address:') . ' ' . $comment->email . "\n" .</p>

<p></p>
```