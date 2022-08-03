---
id: 688
title: 'PHP Tools and Practices?'
date: '2003-12-21T11:23:49+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=688'
permalink: /2003/12/21/php-tools-and-practices/
typo_id:
    - '686'
mt_id:
    - '1561'
link_related:
    - ''
raw_content:
    - "<p>\nI\\'m pleased to announce that mine will soon be the questionable task of building moderately large complex applications in PHP.  The arguments of development time, and more compelling accessibility to the NGO dev community won against the arguments that PHP is unsuited for large scale development, and unexpectedly bumped \\\"Install Java and Eclipse\\\" from my todo list.\n</p>\n<p>\nThe dual challenges of pushing PHP beyond its traditional domain, and helping ColdFusion programmers make the transition is bringing up a  \n number of questions.  Any answers, or tips are always appreciated.\n</p>\n<p>\n<h3>Migrating Windows/ColdFusion developers</h3>\nI need to recommend a development environment for Windows based developers who are use to ColdFusion development, in Dreamweaver/ColdFusion Studio.\n<ul>\n<li>PHP and HTML aware Windows editor/IDE?</li>\n<li>one with \\\"code insight\\\"; prompts for completion of tags and functions while typing, hover for documentation and call signatures of functions. (I\\'ve been told calling it \\\"code insight\\\" shows I\\'ve spent too much time using Borland products.  What can I say, they\\'re based a short distances from my childhood home.  This feature also sometimes referred to as code completion or tool tips)</li>\n</ul>\n</p>\n<p>\n<h3>Install PHP/Apache/MySQL?</h3>\nI remember people telling me about Windows installers that handle setting up triumvirate automatically.\n</p>\n<p>\n<h3>ColdFusion Feature Parity</h3>\nColdFusion has two (and only two as far as I can tell) good features.\n<ol>\n<li>Debugging output - in debugging mode ColdFusion prints out:\n  <ul>  \n     <li>the values of environment variables, cookies, session etc</li>\n     <li>all the SQL queries and their execution times to create that page.</li>\n  </ul>\n  Is there a way to do this in PHP?  Some tool that does this?\n</li>\n<li>Documentation browser - CF has a built in little app for producing Javadoc like HTML output.  I know PHP has a number of similar options, what do people recommend?</li>\n</ol>\n</p> \n<p>\n<h3>Interactive Debugging</h3>\nA feature ColdFusion is sorely lacking (among many) is a decent interactive debugger.  I know there several PHP options.  Do people recommend one?  Free is not a requirement.\n</p>\n<p>\n<h3>Pear and Technology Choices</h3>\nThe current proposed platform is Apache 2.x, Mysql 4.x, PHP 4.3.x, <a href=\\\"http://smarty.php.net/\\\">Smarty</a>, and <a href=\\\"http://pear.php.net\\\">PEAR</a>.  From PEAR we\\'re looking at PEAR::DB (obviously), <a href=\\\"http://pear.php.net/package/HTML_QuickForm\\\">QuickForm</a> (has anyone used this?), and using the PEAR coding conventions and core.   What else?  Any good libraries/modules that you\\'ve used?\n</p>\n<p>\n<h3>Smarty and PHP Profiling</h3>\nSmarty has a bad rap as being slow, and a memory hog.  Is it really that bad?  Any idea how to profile PHP usage?  (something like Perl dproff?)\n</p>\n<p>\nThere is also the question of appropriate PHP design patterns, but I\\'ll hold off on that question until I\\'ve got my getting starteds dealt with.\n</p>"
---

I’m pleased to announce that mine will soon be the questionable task of building moderately large complex applications in PHP. The arguments of development time, and more compelling accessibility to the NGO dev community won against the arguments that PHP is unsuited for large scale development, and unexpectedly bumped “Install Java and Eclipse” from my todo list.

The dual challenges of pushing PHP beyond its traditional domain, and helping ColdFusion programmers make the transition is bringing up a  
 number of questions. Any answers, or tips are always appreciated.

### Migrating Windows/ColdFusion developers

I need to recommend a development environment for Windows based developers who are use to ColdFusion development, in Dreamweaver/ColdFusion Studio. - PHP and HTML aware Windows editor/IDE?
- one with “code insight”; prompts for completion of tags and functions while typing, hover for documentation and call signatures of functions. (I’ve been told calling it “code insight” shows I’ve spent too much time using Borland products. What can I say, they’re based a short distances from my childhood home. This feature also sometimes referred to as code completion or tool tips)

### Install PHP/Apache/MySQL?

I remember people telling me about Windows installers that handle setting up triumvirate automatically. ### ColdFusion Feature Parity

ColdFusion has two (and only two as far as I can tell) good features. 1. Debugging output – in debugging mode ColdFusion prints out:   
    
    - the values of environment variables, cookies, session etc
    - all the SQL queries and their execution times to create that page.
     
     Is there a way to do this in PHP? Some tool that does this?
2. Documentation browser – CF has a built in little app for producing Javadoc like HTML output. I know PHP has a number of similar options, what do people recommend?

### Interactive Debugging

A feature ColdFusion is sorely lacking (among many) is a decent interactive debugger. I know there several PHP options. Do people recommend one? Free is not a requirement. ### Pear and Technology Choices

The current proposed platform is Apache 2.x, Mysql 4.x, PHP 4.3.x, [Smarty](http://smarty.php.net/), and [PEAR](http://pear.php.net). From PEAR we’re looking at PEAR::DB (obviously), [QuickForm](http://pear.php.net/package/HTML_QuickForm) (has anyone used this?), and using the PEAR coding conventions and core. What else? Any good libraries/modules that you’ve used? ### Smarty and PHP Profiling

Smarty has a bad rap as being slow, and a memory hog. Is it really that bad? Any idea how to profile PHP usage? (something like Perl dproff?) There is also the question of appropriate PHP design patterns, but I’ll hold off on that question until I’ve got my getting starteds dealt with.