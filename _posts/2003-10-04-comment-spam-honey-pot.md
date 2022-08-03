---
id: 618
title: 'Comment Spam Honey Pot'
date: '2003-10-04T23:39:35+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=618'
permalink: /2003/10/04/comment-spam-honey-pot/
typo_id:
    - '616'
mt_id:
    - '1282'
link_related:
    - ''
raw_content:
    - "<p>\nI tried Burning Bird\\'s <a href=\\\"http://weblog.burningbird.net/fires/000638.htm\\\">Quick Fix</a> for fighting comment spam.   No luck.  In the long term I\\'d really like an implementation of Simon\\'s <a href=\\\"http://simon.incutio.com/archive/2003/09/02/blacklisting\\\">URL blacklists</a> for MT, one without the overhead of <a href=\\\"http://www.jayallen.org/journey/2003/09/killing_comment_spam_dead/\\\">Jay\\'s implementation</a> (which struggles valiantly to avoid modifying any of MT\\'s code).  In the meantime I\\'ve got one entry which attracts most of my comment spam, and I\\'m going to turn it into a honey pot/tar pit style trap.\n</p>\n\n<p>\n<a href=\\\"http://laughingmeme.org/archives/000757.html\\\">Media Consolidation</a> attracts a high number of spam comments(presumably the first one brought more, and even though I\\'ve deleted them, they are still in Google\\'s cache of the page)  A significant percentage of all my spam is directed at that entry.  So I wrote a super quick, and dirty Perl script designed to be run out of cron that looks at anyone who has posted a comment to that entry, and bans their IP.  Supply it with a list of entry ids, and a list of white listed IP address, and the script should handle the rest.  Currently it prints a note about banning an IP to stdout, which will cause cron to send you a note, you can comment this out if you like.  \n</p>\n<p>\nWithout further ado, <a href=\\\"/mt_honeypot.pl.txt\\\">mt_honeypot.pl</a>\n</p>\n<p>\nPresented \\'As Is\\'.\n</p>\n<p>\n<h3>Working with Squid</h3>\nBtw., if anyone else on Earth is running a squid accelerator on their blogging box, then you\\'ll need to path MT to recognize the appropiate remote ip.  I did this by replacing MT::App::remote_ip with this remote ip impl\n<pre>\nsub remote_ip {\n    my $app = shift;\n    if ( $ENV{HTTP_X_FORWARDED_FOR} ) {\n\treturn $ENV{HTTP_X_FORWARDED_FOR};\n    }\n    elsif ( $ENV{MOD_PERL} ) {\n\treturn $app->{apache}->connection->remote_ip;\n    }\n    else {\n\treturn $ENV{REMOTE_ADDR};\n    }\n}\n</pre>\n</p>"
---

I tried Burning Bird’s [Quick Fix](http://weblog.burningbird.net/fires/000638.htm) for fighting comment spam. No luck. In the long term I’d really like an implementation of Simon’s [URL blacklists](http://simon.incutio.com/archive/2003/09/02/blacklisting) for MT, one without the overhead of [Jay’s implementation](http://www.jayallen.org/journey/2003/09/killing_comment_spam_dead/) (which struggles valiantly to avoid modifying any of MT’s code). In the meantime I’ve got one entry which attracts most of my comment spam, and I’m going to turn it into a honey pot/tar pit style trap.

[Media Consolidation](http://laughingmeme.org/archives/000757.html) attracts a high number of spam comments(presumably the first one brought more, and even though I’ve deleted them, they are still in Google’s cache of the page) A significant percentage of all my spam is directed at that entry. So I wrote a super quick, and dirty Perl script designed to be run out of cron that looks at anyone who has posted a comment to that entry, and bans their IP. Supply it with a list of entry ids, and a list of white listed IP address, and the script should handle the rest. Currently it prints a note about banning an IP to stdout, which will cause cron to send you a note, you can comment this out if you like.

Without further ado, [mt*honeypot.pl*](/mt_honeypot.pl.txt)

Presented ‘As Is’.

### Working with Squid

Btw., if anyone else on Earth is running a squid accelerator on their blogging box, then you’ll need to path MT to recognize the appropiate remote ip. I did this by replacing MT::App::remoteip with this remote ip impl ```

sub remote<em>ip {
    my $app = shift;
    if ( $ENV{HTTP</em>X<em>FORWARDED</em>FOR} ) {
    return $ENV{HTTP<em>X</em>FORWARDED<em>FOR};
    }
    elsif ( $ENV{MOD</em>PERL} ) {
    return $app->{apache}->connection->remote<em>ip;
    }
    else {
    return $ENV{REMOTE</em>ADDR};
    }
}
```