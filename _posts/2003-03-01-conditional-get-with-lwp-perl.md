---
id: 346
title: 'Conditional GET with LWP & Perl'
date: '2003-03-01T19:16:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=346'
permalink: /2003/03/01/conditional-get-with-lwp-perl/
typo_id:
    - '344'
mt_id:
    - '479'
link_related:
    - ''
raw_content:
    - "<p>\r\nI was arguing recently that implementing a \r\n<a href=\\\"http://fishbowl.pastiche.org/archives/001132.html\\\">conditional GET</a> with\r\n<a href=\\\"http://search.cpan.org/dist/libwww-perl/\\\">LWP</a> is trivial and \r\nthere was no reason why someone wouldn\\'t support it.  I assumed there must \r\nbe a dozen examples of how to do this.  Afterall\r\nO\\'reilly has \\\"open sourced\\\" their \r\n<a href=\\\"http://www.oreilly.com/openbook/webclient/\\\">original LWP book</a>, \r\nthere is an \r\n<a href=\\\"http://www.perldoc.com/perl5.6/lib/lwpcook.html\\\">LWP cookbook</a>, and\r\nreams of \r\n<a href=\\\"http://search.cpan.org/dist/libwww-perl/lib/LWP.pm\\\">POD</a>.  \r\n</p>\r\n<p>\r\n<h3>No Such Luck</h3>\r\nWell a quick search didn\\'t turn up anything.  A more concerted one might have\r\nbut it was easier to write this example then keep searching.  If you\\'re looking\r\nfor more general info on Conditional GETs try Charles Miller\\'s \r\n<a href=\\\"http://fishbowl.pastiche.org/archives/001132.html\\\">HTTP Conditional Get for RSS Hackers</a>.  If you\\'re looking for an implementation\r\nin PHP, you might look in rss_fetch of my RSS parser/aggregator \r\n<a href=\\\"http://magpierss.sf.net\\\">Magpie</a>.\r\n<p>\r\n<h3>Conditional GET</h3>\r\nThe basic idea is,  when you request a file you remember the <code>ETag</code> and \r\n<code>Last-Modified</code> HTTP headers, passing\r\nthem along with your next request as \r\n<code>If-None-Match</code> and <code>If-Last-Modified</code>.  If the\r\nfile has changed then you\\'ll get the content as normal, if the file hasn\\'t changed you\\'ll get\r\na \\'304 Not Modified\\' header.\r\n</p>\r\n<p>\r\nThis is something of a toy example, but I try to be as correct as possible with\r\nit.  Noteable in its absence is doing anything with the file you\\'ve fetched.\r\n(for example parsing and storing an RSS feed)  Also I use a simple file to store\r\nETag and Last-Modified, you might want to use a different backend.  \r\n<a href=\\\"http://laughingmeme.org/archives/000479.html#more\\\">See the Code</a>\r\n</p>\r\n\n<p>\r\n<h3>Example Code</h3>\r\n<pre class=\\\"code\\\">\r\n\r\nuse LWP::UserAgent;\r\nuse HTTP::Request;\r\n\r\nmy $url = \\\"http://localhost/rss/laughingmeme.rdf\\\";\r\nmy $cache_file = \\'cache\\';\r\nmy %headers;\r\n\r\nif ( -e $cache_file ) {\r\n    open (CACHE, \\\"&lt; $cache_file\\\") or die \\\"Couldn\\'t open: $!\\\";\r\n    %headers = (\r\n        If_None_Match =&gt; &lt;CACHE&gt;,\r\n        If_Last_Modified =&gt; &lt;CACHE&gt;\r\n    );\r\n    close CACHE;\r\n}\r\n\r\nmy $ua = new LWP::UserAgent();\r\n$ua-&gt;agent(\\\"Conditionally Enabled v0.1\\\");\r\n\r\nmy $req = HTTP::Request-&gt;new( GET =&gt; $url );\r\n$req-&gt;header(%headers);\r\n\r\nmy $res = $ua-&gt;request($req);\r\nif ($res-&gt;is_success) {\r\n    print \\\"new!\\\\n\\\";\r\n    # save ETag & Last-Modified\r\n    open (CACHE, \\\"&gt; $cache_file\\\") or die \\\"Couldn\\'t open: $!\\\";\r\n    print CACHE $res-&gt;header(\\'ETag\\'), \\\"\\\\n\\\";\r\n    print CACHE $res-&gt;header(\\'Last-Modified\\'), \\\"\\\\n\\\";\r\n    close CACHE;\r\n}\r\nelsif ( $res-&gt;code() eq \\'304\\' ) {\r\n    print \\\"not modified, go to cache\\\\n\\\";\r\n    # do logic for RSS not modified\r\n}\r\nelse {\r\n    print \\\"fooey! somthing went wrong\\\\n\\\";\r\n}\r\n</pre>\r\n</p>"
tags:
    - Code
    - howto
    - http
    - perl
    - rss
    - xml
---

I was arguing recently that implementing a [conditional GET](http://fishbowl.pastiche.org/archives/001132.html) with [LWP](http://search.cpan.org/dist/libwww-perl/) is trivial and there was no reason why someone wouldn’t support it. I assumed there must be a dozen examples of how to do this. Afterall O’reilly has “open sourced” their [original LWP book](http://www.oreilly.com/openbook/webclient/), there is an [LWP cookbook](http://www.perldoc.com/perl5.6/lib/lwpcook.html), and reams of [POD](http://search.cpan.org/dist/libwww-perl/lib/LWP.pm).

### No Such Luck

Well a quick search didn’t turn up anything. A more concerted one might have but it was easier to write this example then keep searching. If you’re looking for more general info on Conditional GETs try Charles Miller’s [HTTP Conditional Get for RSS Hackers](http://fishbowl.pastiche.org/archives/001132.html). If you’re looking for an implementation in PHP, you might look in rss\_fetch of my RSS parser/aggregator [Magpie](http://magpierss.sf.net). ### Conditional GET

The basic idea is, when you request a file you remember the `ETag` and `Last-Modified` HTTP headers, passing them along with your next request as `If-None-Match` and `If-Last-Modified`. If the file has changed then you’ll get the content as normal, if the file hasn’t changed you’ll get a ‘304 Not Modified’ header. This is something of a toy example, but I try to be as correct as possible with it. Noteable in its absence is doing anything with the file you’ve fetched. (for example parsing and storing an RSS feed) Also I use a simple file to store ETag and Last-Modified, you might want to use a different backend.  
[See the Code](http://laughingmeme.org/archives/000479.html#more)

### Example Code

```
<pre class="code">

use LWP::UserAgent;
use HTTP::Request;

my $url = "http://localhost/rss/laughingmeme.rdf";
my $cache_file = 'cache';
my %headers;

if ( -e $cache_file ) {
    open (CACHE, "< $cache_file") or die "Couldn't open: $!";
    %headers = (
        If_None_Match => <CACHE>,
        If_Last_Modified => <CACHE>
    );
    close CACHE;
}

my $ua = new LWP::UserAgent();
$ua->agent("Conditionally Enabled v0.1");

my $req = HTTP::Request->new( GET => $url );
$req->header(%headers);

my $res = $ua->request($req);
if ($res->is_success) {
    print "new!\n";
    # save ETag & Last-Modified
    open (CACHE, "> $cache_file") or die "Couldn't open: $!";
    print CACHE $res->header('ETag'), "\n";
    print CACHE $res->header('Last-Modified'), "\n";
    close CACHE;
}
elsif ( $res->code() eq '304' ) {
    print "not modified, go to cache\n";
    # do logic for RSS not modified
}
else {
    print "fooey! somthing went wrong\n";
}
```