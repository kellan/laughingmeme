---
id: 783
title: 'Installing Maypole (in progress)'
date: '2004-03-27T15:24:10+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=783'
permalink: /2004/03/27/installing-maypole-in-progress/
typo_id:
    - '781'
mt_id:
    - '1898'
link_related:
    - ''
raw_content:
    - "<p>\nI\\'ve started playing a little bit with <a href=\\\"http://maypole.simon-cozens.org/\\\">Maypole</a>, described ambitiously (not to mention \t ambiguously, and ambivalently) as \\\"Struts for Perl\\\".  I\\'ve run into some trouble getting it working (multiple trips to the debugger), partially because its still under heavy development (and most of this info will be irrelevant by the time you read it), partially because it heavily  leverages the hard core, <a href=\\\"http://www.perl.com/pub/a/2003/07/15/nocode.html\\\">write no code</a>, magical end of CPAN, and partially because I\\'m installing it onto a totally vanilla system, and that means I have to install <b>a lot</b> of modules. (not a criticism)\n</p>\n<p>\nI\\'m trying to get Maypole, running under <a href=\\\"http://perl.apache.org\\\">mod_perl</a> (its native environment, though there is also a <a href=\\\"http://lists.netthink.co.uk/pipermail/maypole/2004-March/000018.html\\\">CGI::Maypole</a> in early stages), and get the sample app, <a href=\\\"http://maypole.simon-cozens.org/doc/beerdb.html\\\">BeerDB</a> running.  Basic documentation (which took me a little while to track down) is in the <a href=\\\"http://search.cpan.org/dist/Maypole/lib/Apache/MVC.pm\\\">POD for Apache::MVC</a>, and on the <a href=\\\"http://maypole.simon-cozens.org/doc/beerdb.html\\\">BeerDB page</a> (which also contains the database schema)\n</p>\n<p>\nBesides <code>cpan&gt; install Maypole</code> you\\'ll also need to create the database and tables, edit BeerDB.pm with proper URL, and database connect info (mine looks like <code>BeerDB-&gt;setup(\\\"dbi:mysql:beerdb\\\", $user, $pass);</code>), and copy the factory, and custom template directories to the proper location under your docroot.\n</p>\n<p>\n<h3>Errors</h3>\n\nSome errors I ran into and their solutions. \n\n<ul>\n\n<li><p><code>This is an abstract method at Maypole/Model/Base.pm line 108.</code></p><p>This means Maypole::Model::CDBI is failing to be instantiated, but the error is being suppressed by <a href=\\\"http://search.cpan.org/author/MSCHWERN/UNIVERSAL-exports-0.03/lib/UNIVERSAL/require.pm\\\">UNIVERSAL::require</a> (fixed in 1.3).  In my case I needed to install <a href=\\\"http://search.cpan.org/dist/Class-DBI-AsForm/\\\">Class::DBI::AsForm</a>.</p></li>\n\n<li><p><code>Can\\'t locate object method \\\"set_db\\\" via package \\\"BeerDB::Beer\\\" at Class/DBI/Loader/mysql.pm</code></p><p>A <a href=\\\"http://wiki.simon-cozens.org/index.cgi?InstallationIssues\\\">documented problem</a>, which I unfortunately didn\\'t find in time.  Means Class::DBI::Loader needs you to install <a href=\\\"http://search.cpan.org/dist/Class-DBI-mysql\\\">Class::DBI::mysql</a>.</p></li>\n\n<li><p>All the code seems to be working, but no HTML is displayed.</p>\n<p>First make sure you\\'re going to an explicit action (like /beerdb/brewery/list), I don\\'t know if there are supposed to be default behaviours, but they aren\\'t working for me.  If you are requesting an explicit action, check the factory/header template (and replace the second &lt;TITLE&gt; tag with a &lt;/title&gt; tag)</p></li>\n\n<li><p><code>plugin error - Class: plugin not found at Maypole/View/TT.pm line 73. </code></p><p>\nInstall <a href=\\\"http://search.cpan.org/dist/Template-Plugin-Class/\\\">Template::Plugin::Class</a>\n</p>\n</li>\n\n</ul>\n\n</p>\n<p>\n<h3>Tip</h3>\nYou can quickly improve the look of the default templates by copying <a href=\\\"http://flox.simon-cozens.org/flox.css\\\">flox.css</a> to \\\"beerdb.css\\\", and editing your header template to use it.\n</p>\n<p>\n<h3>Some Data</h3>\nHere is some data to jump start you (I assumed the handpump table is used to represent beers a pub has on tap)\n<blockquote>\ninsert into brewery (name,url) values (\\'Elysian Brewing Company\\', \\'http://www.elysianbrewing.com/\\');\ninsert into pub (name,url,notes) values (\\'Tangletown\\',\\'\\',\\'2106 N 55th St\\');\ninsert into style (name) values (\\'IPA\\');\ninsert into style (name) values (\\'Pilsner\\');\ninsert into beer (name, brewery, style) values (\\'Elysian Fields\\', 1, 1);\ninsert into beer (name, brewery, style) values (\\'Zephyrus\\', 1, 2);\ninsert into handpump (beer,pub) values (1,1);\ninsert into handpump (beer,pub) values (2,1)\n</blockquote>\n</p>\n<p>\nHow is the actual framework?  I don\\'t know yet, but I feel like I\\'m getting closer to finding out.\n</p>"
---

I’ve started playing a little bit with [Maypole](http://maypole.simon-cozens.org/), described ambitiously (not to mention ambiguously, and ambivalently) as “Struts for Perl”. I’ve run into some trouble getting it working (multiple trips to the debugger), partially because its still under heavy development (and most of this info will be irrelevant by the time you read it), partially because it heavily leverages the hard core, [write no code](http://www.perl.com/pub/a/2003/07/15/nocode.html), magical end of CPAN, and partially because I’m installing it onto a totally vanilla system, and that means I have to install **a lot** of modules. (not a criticism)

I’m trying to get Maypole, running under [mod\_perl](http://perl.apache.org) (its native environment, though there is also a [CGI::Maypole](http://lists.netthink.co.uk/pipermail/maypole/2004-March/000018.html) in early stages), and get the sample app, [BeerDB](http://maypole.simon-cozens.org/doc/beerdb.html) running. Basic documentation (which took me a little while to track down) is in the [POD for Apache::MVC](http://search.cpan.org/dist/Maypole/lib/Apache/MVC.pm), and on the [BeerDB page](http://maypole.simon-cozens.org/doc/beerdb.html) (which also contains the database schema)

Besides `cpan> install Maypole` you’ll also need to create the database and tables, edit BeerDB.pm with proper URL, and database connect info (mine looks like `BeerDB->setup("dbi:mysql:beerdb", $user, $pass);`), and copy the factory, and custom template directories to the proper location under your docroot.

### Errors

Some errors I ran into and their solutions.

- `This is an abstract method at Maypole/Model/Base.pm line 108.`
    
    This means Maypole::Model::CDBI is failing to be instantiated, but the error is being suppressed by [UNIVERSAL::require](http://search.cpan.org/author/MSCHWERN/UNIVERSAL-exports-0.03/lib/UNIVERSAL/require.pm) (fixed in 1.3). In my case I needed to install [Class::DBI::AsForm](http://search.cpan.org/dist/Class-DBI-AsForm/).
- `Can't locate object method "set_db" via package "BeerDB::Beer" at Class/DBI/Loader/mysql.pm`
    
    A [documented problem](http://wiki.simon-cozens.org/index.cgi?InstallationIssues), which I unfortunately didn’t find in time. Means Class::DBI::Loader needs you to install [Class::DBI::mysql](http://search.cpan.org/dist/Class-DBI-mysql).
- All the code seems to be working, but no HTML is displayed.
    
    First make sure you’re going to an explicit action (like /beerdb/brewery/list), I don’t know if there are supposed to be default behaviours, but they aren’t working for me. If you are requesting an explicit action, check the factory/header template (and replace the second &lt;TITLE&gt; tag with a &lt;/title&gt; tag)
- `plugin error - Class: plugin not found at Maypole/View/TT.pm line 73. `
    
    Install [Template::Plugin::Class](http://search.cpan.org/dist/Template-Plugin-Class/)

### Tip

You can quickly improve the look of the default templates by copying [flox.css](http://flox.simon-cozens.org/flox.css) to “beerdb.css”, and editing your header template to use it. ### Some Data

Here is some data to jump start you (I assumed the handpump table is used to represent beers a pub has on tap) > insert into brewery (name,url) values (‘Elysian Brewing Company’, ‘http://www.elysianbrewing.com/’); insert into pub (name,url,notes) values (‘Tangletown’,”,’2106 N 55th St’); insert into style (name) values (‘IPA’); insert into style (name) values (‘Pilsner’); insert into beer (name, brewery, style) values (‘Elysian Fields’, 1, 1); insert into beer (name, brewery, style) values (‘Zephyrus’, 1, 2); insert into handpump (beer,pub) values (1,1); insert into handpump (beer,pub) values (2,1)

How is the actual framework? I don’t know yet, but I feel like I’m getting closer to finding out.