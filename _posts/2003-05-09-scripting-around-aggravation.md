---
id: 429
title: 'Scripting Around Aggravation'
date: '2003-05-09T22:53:35+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=429'
permalink: /2003/05/09/scripting-around-aggravation/
typo_id:
    - '427'
mt_id:
    - '728'
link_related:
    - ''
raw_content:
    - "<p>\r\n<h3>IMC Archives:  From Bad to Useless</h3>\r\nContemplating the minor disaster area which is the \r\n<a href=\\\"http://lists.indymedia.org\\\">IMC mail archives</a> from the\r\nlast few weeks (when we had to turn off <a\r\nhref=\\\"http://spamassassin.org\\\">Spamassassin</a> as it was killing the\r\nserver) I had an idea for 2 related scripts using <a\r\nhref=\\\"http://search.cpan.org/author/KJOHNSON/MailFolder-0.07/\\\">Mail::Folder::Mbox</a>\r\n</p>\r\n<p>\r\n<h3>An Idea</h3>\r\nThey both revolve around the <a href=\\\"http://www.list.org\\\">Mailman</a> archiver\\'s (pipermail) fragility. \r\nMailman stores archive of a list as an mbox file. Pipermail then crawls that\r\nmbox and generates archive urls based on the position of a given message in an\r\nmbox.  If you want to delete a message, say one containing sensitive\r\ninformation you have to be very very careful to leave a dummy message in place\r\nor you break all the URLs pointing to the archive.  \r\n</p>\r\n<p>\r\n<h3>The Scripts</h3>\r\n<ul>\r\n<li><code>message_delete</code> - Instead of editting the mboxes by hand, pass in message\r\nposition, or message id, and this replaces the targetted message with a dummy\r\nmessage.  I don\\'t know why I didn\\'t write this years ago.</li>\r\n<li>\r\n<code>spam_crawl</code> - Crawls through an mbox, piping messages to Spamassassin, and\r\nreplacing any message flagged as spam with a dummy message.  Doesn\\'t entirely\r\nsolve the signal to noise problem as one doesn\\'t dare actually delete all those\r\nspam messages, but if every piece of spam had the same quiet subject line in the\r\narchive then one\\'s brain could relatively quickly learn to skim over them. \r\nMight also be possible to play tricks with dates, moving all the spam messages\r\nto the beginning or end of a month, but that makes me nervous.</li>\r\n</ul>\r\n</p>\r\n<p>\r\nLargely a note to self, as now I need to go to sleep.\r\n</p>"
---

### IMC Archives: From Bad to Useless

Contemplating the minor disaster area which is the [IMC mail archives](http://lists.indymedia.org) from the last few weeks (when we had to turn off [Spamassassin](http://spamassassin.org) as it was killing the server) I had an idea for 2 related scripts using [Mail::Folder::Mbox](http://search.cpan.org/author/KJOHNSON/MailFolder-0.07/)### An Idea

They both revolve around the [Mailman](http://www.list.org) archiver’s (pipermail) fragility. Mailman stores archive of a list as an mbox file. Pipermail then crawls that mbox and generates archive urls based on the position of a given message in an mbox. If you want to delete a message, say one containing sensitive information you have to be very very careful to leave a dummy message in place or you break all the URLs pointing to the archive.  
### The Scripts

- `message<em>delete</em>` – Instead of editting the mboxes by hand, pass in message position, or message id, and this replaces the targetted message with a dummy message. I don’t know why I didn’t write this years ago.
- `spamcrawl` – Crawls through an mbox, piping messages to Spamassassin, and replacing any message flagged as spam with a dummy message. Doesn’t entirely solve the signal to noise problem as one doesn’t dare actually delete all those spam messages, but if every piece of spam had the same quiet subject line in the archive then one’s brain could relatively quickly learn to skim over them. Might also be possible to play tricks with dates, moving all the spam messages to the beginning or end of a month, but that makes me nervous.

Largely a note to self, as now I need to go to sleep.