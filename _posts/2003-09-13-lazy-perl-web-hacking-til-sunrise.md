---
id: 583
title: 'Lazy Perl Web Hacking til Sunrise'
date: '2003-09-13T07:13:18+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=583'
permalink: /2003/09/13/lazy-perl-web-hacking-til-sunrise/
typo_id:
    - '581'
mt_id:
    - '1196'
link_related:
    - ''
raw_content:
    - "<p>\nInterestingly enough (at least to me), it was <a href=\\\"http://laughingmeme.org/archives/000154.html\\\">a year ago Wednesday</a> that I was sitting up, listening to the rain pound on a <a href=\\\"http://laughingmeme.org/archives/000174.html\\\">Pacific Northwestern roof</a>, reviewing the disorganized state of Perl web development.  Then, unlike now, grand visions of vast OO architectures, transparent caches, and a re-vamped <a href=\\\"http://protest.net\\\">Protest.net</a> danced in my head.  Tonight I\\'m just hacking a personal project because I can\\'t sleep.\n</p>\n<p>\nI made my peace with <a href=\\\"http://search.cpan.org/dist/Class-DBI\\\">Class::DBI</a> tonight, or at least until I find something else about it that boggles, confuses, and frustrates me.  It takes a real leap of faith, and a cast iron \\\"La la la, I\\'m pretending its not there\\\" outlook to switch from writing carefully hand crafted SQL, with delicate multi-table (inner|outer|left|cross|hectic) joins, to letting <acronym title=\\\"Class::DBI\\\">CDBI</acronym> do its relatively naive (by design) thing.  I recommend turning on the MySQL query log just to get a sense of how it <acronym title=\\\"Class::DBI\\\">CDBI</acronym> works, useful while you\\'re still trying to understand the syntax, and to do what limited tuning is allowed through the interface. (still a novice admittedly)  And then turn it off, and try to forget what you saw, helps if you\\'re the type to repress scarring memories.\n</p>\n<p>\n<h3>FormBuilder, Not Quite the Missing Link</h3>\nSo I\\'ve got <a href=\\\"http://search.cpan.org/dist/Class-DBI\\\">Class::DBI</a>, and <a href=\\\"http://template-toolkit.org\\\">Template Toolkit</a> is a shoe in, I feel like <a href=\\\"http://formbuilder.org\\\">CGI::FormBuilder</a> is the last piece of the puzzle, to making really lazy (in the best possible sense of the word) Perl web applications.  But....\n</p>\n<p>\n<h3>Lets Talk Features</h3>\n<a href=\\\"http://formbuilder.org\\\">CGI::FormBuilder</a> has a <a href=\\\"http://www.formbuilder.org/features/\\\">great set of features</a>, a little over the top at times, but generally real solid, and easy to use, and <a href=\\\"http://www.formbuilder.org/tutor/\\\"><b>amazing documentation</b></a>. However, its object orientation is a very thin veneer over a procedural heart, and therein lies the problem.  My ideal system is at once not that far off from <acronym title=\\\"CGI::FormBuilder\\\">CFB</acronym>, and yet worlds away. \n</p>\n<p>\n A good Form class should\n<ul>\n<li>Handle parsing of CGI variables, naturally</li>\n<li>Aid in rendering your form</li>\n<li>Have at least hooks for validation</li>\n</ul>\nAll of which <acronym title=\\\"CGI::FormBuilder\\\">CFB</acronym> does, in spades.\n</p>\n<p>\nAlso\n<ul>\n<li>Not try to do all the rendering for you. (see my <a href=\\\"http://laughingmeme.org/archives/001055.html\\\">PHP, A Few Tips</a>)</li>\n<li>Allow subclassing - I want an object for each form in my application</li>\n<li>Allow subclasses to define complex input types like an image upload field, or a date field (3 constrained pull downs, or maybe a <a href=\\\"http://dynarch.com/mishoo/calendar.epl\\\">text field+dhtml widget</a>).  This is where CGI::FormBuilder seems to me to lose biggest not going the OO route.</li>\n<li>Allow form defaults to be set from objects (for example <a href=\\\"http://search.cpan.org/dist/Class-Accessor/\\\">Class::Accessor</a> aka Class::DBI objects) not just hashrefs</li>\n</ul>\n</p>\n<p>\n<h3>More on Template Integration</h3>\nCGI::FormBuilder has native support for HTML::Template, and Template::Toolkit which is great.  What that means in the context of CFB is it is capable of accepting a template specification as part of its render method.  That leads to inside out code. (or so it seems to me)  Ideally I would like to be able to pass a form object to a template and use it like so.\n<pre>\n&lt;form&gt;\n&lt;input type=\\\"hidden\\\" action=\\\"add\\\"&gt;\nName: [% form.name.html %]\nEmail: [% form.email.html %]\n...\n&lt;input type=\\\"Submit\\\"&gt;\n</pre>\nRather then having to pass my template to the form object, and use it to draw every aspect of the form.\n</p>\n<p>\nI did find this <a href=\\\"http://perlmonks.thepen.com/270363.html\\\">clever, but evil hack</a> to move in this direction, but the idea is to be lazy in a way you can be proud of, and faking a template to capture the rendered variables is just a little too much.\n</p>\n<p>\n<h3>More on Complex Input Types</h3>\nI\\'ve got events, calendars, and dates on my mind again, what a surprise.  So the \\\"Image Upload\\\" input type was just thrown in there to make it seem like I had thought about this a little more.  I want to be able to pass a form element object a <a href=\\\"http://search.cpan.org/dist/DateTime/\\\">DateTime</a> object, and get 3 properly configured pull down menus.  Similarly I want to be able to ask <acronym title=\\\"CGI::FormBuilder\\\">CFB</acronym> for the value of my date field, and get back a DT object, not ${name}_day, ${name}_month, ${name}_year.  Of course you would probably have to hold on to the values the user submitted in order to re-display the form on an error condition, but tuck it away somewhere I don\\'t have to see it.  Seems like Class::DBI\\'s inflate/deflate API would be a good model for this.\n</p>\n<p>\nThis is where you chime in and tell me you\\'ve heard my pleas and written the perfect solution, or that its been sitting on CPAN for the last 8 years, its called cgi-lib.pl, and how have I missed it.\n</p>"
---

Interestingly enough (at least to me), it was [a year ago Wednesday](http://laughingmeme.org/archives/000154.html) that I was sitting up, listening to the rain pound on a [Pacific Northwestern roof](http://laughingmeme.org/archives/000174.html), reviewing the disorganized state of Perl web development. Then, unlike now, grand visions of vast OO architectures, transparent caches, and a re-vamped [Protest.net](http://protest.net) danced in my head. Tonight I’m just hacking a personal project because I can’t sleep.

I made my peace with [Class::DBI](http://search.cpan.org/dist/Class-DBI) tonight, or at least until I find something else about it that boggles, confuses, and frustrates me. It takes a real leap of faith, and a cast iron “La la la, I’m pretending its not there” outlook to switch from writing carefully hand crafted SQL, with delicate multi-table (inner|outer|left|cross|hectic) joins, to letting <acronym title="Class::DBI">CDBI</acronym> do its relatively naive (by design) thing. I recommend turning on the MySQL query log just to get a sense of how it <acronym title="Class::DBI">CDBI</acronym> works, useful while you’re still trying to understand the syntax, and to do what limited tuning is allowed through the interface. (still a novice admittedly) And then turn it off, and try to forget what you saw, helps if you’re the type to repress scarring memories.

### FormBuilder, Not Quite the Missing Link

So I’ve got [Class::DBI](http://search.cpan.org/dist/Class-DBI), and [Template Toolkit](http://template-toolkit.org) is a shoe in, I feel like [CGI::FormBuilder](http://formbuilder.org) is the last piece of the puzzle, to making really lazy (in the best possible sense of the word) Perl web applications. But…. ### Lets Talk Features

[CGI::FormBuilder](http://formbuilder.org) has a [great set of features](http://www.formbuilder.org/features/), a little over the top at times, but generally real solid, and easy to use, and [**amazing documentation**](http://www.formbuilder.org/tutor/). However, its object orientation is a very thin veneer over a procedural heart, and therein lies the problem. My ideal system is at once not that far off from <acronym title="CGI::FormBuilder">CFB</acronym>, and yet worlds away.  A good Form class should

- Handle parsing of CGI variables, naturally
- Aid in rendering your form
- Have at least hooks for validation

All of which <acronym title="CGI::FormBuilder">CFB</acronym> does, in spades. Also

- Not try to do all the rendering for you. (see my [PHP, A Few Tips](http://laughingmeme.org/archives/001055.html))
- Allow subclassing – I want an object for each form in my application
- Allow subclasses to define complex input types like an image upload field, or a date field (3 constrained pull downs, or maybe a [text field+dhtml widget](http://dynarch.com/mishoo/calendar.epl)). This is where CGI::FormBuilder seems to me to lose biggest not going the OO route.
- Allow form defaults to be set from objects (for example [Class::Accessor](http://search.cpan.org/dist/Class-Accessor/) aka Class::DBI objects) not just hashrefs

### More on Template Integration

CGI::FormBuilder has native support for HTML::Template, and Template::Toolkit which is great. What that means in the context of CFB is it is capable of accepting a template specification as part of its render method. That leads to inside out code. (or so it seems to me) Ideally I would like to be able to pass a form object to a template and use it like so. ```

<form>
<input type="hidden" action="add">
Name: [% form.name.html %]
Email: [% form.email.html %]
...
<input type="Submit">
```

Rather then having to pass my template to the form object, and use it to draw every aspect of the form. I did find this [clever, but evil hack](http://perlmonks.thepen.com/270363.html) to move in this direction, but the idea is to be lazy in a way you can be proud of, and faking a template to capture the rendered variables is just a little too much.

### More on Complex Input Types

I’ve got events, calendars, and dates on my mind again, what a surprise. So the “Image Upload” input type was just thrown in there to make it seem like I had thought about this a little more. I want to be able to pass a form element object a [DateTime](http://search.cpan.org/dist/DateTime/) object, and get 3 properly configured pull down menus. Similarly I want to be able to ask <acronym title="CGI::FormBuilder">CFB</acronym> for the value of my date field, and get back a DT object, not ${name}*day, ${name}*month, ${name}\_year. Of course you would probably have to hold on to the values the user submitted in order to re-display the form on an error condition, but tuck it away somewhere I don’t have to see it. Seems like Class::DBI’s inflate/deflate API would be a good model for this. This is where you chime in and tell me you’ve heard my pleas and written the perfect solution, or that its been sitting on CPAN for the last 8 years, its called cgi-lib.pl, and how have I missed it.