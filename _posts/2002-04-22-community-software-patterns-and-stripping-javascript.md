---
id: 8
title: 'Community software patterns, and stripping javascript'
date: '2002-04-22T12:16:50+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=8'
permalink: /2002/04/22/community-software-patterns-and-stripping-javascript/
typo_id:
    - '6'
mt_id:
    - '7'
link_related:
    - ''
raw_content:
    - "Patterns, and cookbook capture the sweat, and inspiration of those who have gone before you, boiling it down\r\nto a few key concept, and helpful howtos.   Most common are the object and coding patterns ala \r\n<a href=\\\"http://www.booksense.com/product/info.jsp?isbn=0201633612\\\">GoF</a>, \r\nand \r\n<a href=\\\"http://www.c2.com/cgi/wiki?WelcomeVisitors\\\">Portland Pattern Repository.</a>\r\nThen there were \r\n<a href=\\\"http://www.welie.com/patterns/\\\">web design patterns</a> (called interaction patterns).  Now I\\'m looking for a collection of patterns for building and running community software.\r\n<p>\r\n<b>Community Patterns:</b><br>\r\nWeb-based software designed to facilitate participation from the websites visitors is more the rule then the exception these days.  \r\n<a href=\\\"http://slashcode.com\\\">Slash</a> (and descendants), <a href=\\\"http://postnuke.org\\\">phpNuke</a> (and descendants), \r\n<a href=\\\"http://scoop.kuro5hin.org\\\">Scoop</a>, the \r\nmyriad of solutions running the Indymedia sites (\r\n<a href=\\\"http://www.bandwidthcoop.org/imc/tech/\\\">Mir, Active, SF-Active, Dada</a>)  all \r\nrun up against some of the same problems, and get stuck experimenting, and rebuilding simliar solutions.\r\n<p>\r\nSome problems that jump to mind:  comments (threading, sorting, etc), moderation, categories, reputation mangement, privacy, and dealing with abuse.\r\n<p>\r\n<b>Thoughts on threading</b><br>\r\nDerek of {fray} with \r\n<a href=\\\"http://designforcommunity.com/display.cgi/200204221456\\\">a brief blurb</a> on the threading vs. flat debate\r\n<p>\r\n<b>Handling bad or malicious mark up</b><br>\r\nWhat I\\'m really thinking about this morning is cleaning HTML.  An email just went across the Mir (Indymedia) list on the best way to handle javascript that is\r\nbeing attached to links, and images in the open publishing newswire, for the purpose hijacking the page.  \r\n<p>\r\n<ul>\r\n<li>On Protest.net we use the approach of building a parse tree, and then stripping invalid tags \r\nfrom the tree.  \r\n<li>On Indymedia we use are a series \r\nof regexes, that have accreted over time, like coral, responding to each\r\nnew intrusion.  Neither one handles Javascript all that well.  \r\n<li>Slash and Scoop seem to use hand built parsers, built arund regular experssions.\r\n</ul>\r\nBuilding a parse tree is expensive, IMC\\'s regexes never seem quite complete, (and can cause maintainability headaches)\r\n<p>\r\n\r\nAn exmaple of the parser approach (in Python): http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/52281\r\n<p>\r\nack! getting kicked off the phone line more to come..."
---

Patterns, and cookbook capture the sweat, and inspiration of those who have gone before you, boiling it down to a few key concept, and helpful howtos. Most common are the object and coding patterns ala [GoF](http://www.booksense.com/product/info.jsp?isbn=0201633612), and [Portland Pattern Repository.](http://www.c2.com/cgi/wiki?WelcomeVisitors)Then there were [web design patterns](http://www.welie.com/patterns/) (called interaction patterns). Now I’m looking for a collection of patterns for building and running community software.

**Community Patterns:**  
Web-based software designed to facilitate participation from the websites visitors is more the rule then the exception these days.  
[Slash](http://slashcode.com) (and descendants), [phpNuke](http://postnuke.org) (and descendants), [Scoop](http://scoop.kuro5hin.org), the myriad of solutions running the Indymedia sites ( [Mir, Active, SF-Active, Dada](http://www.bandwidthcoop.org/imc/tech/)) all run up against some of the same problems, and get stuck experimenting, and rebuilding simliar solutions.

Some problems that jump to mind: comments (threading, sorting, etc), moderation, categories, reputation mangement, privacy, and dealing with abuse.

**Thoughts on threading**  
Derek of {fray} with [a brief blurb](http://designforcommunity.com/display.cgi/200204221456) on the threading vs. flat debate

**Handling bad or malicious mark up**  
What I’m really thinking about this morning is cleaning HTML. An email just went across the Mir (Indymedia) list on the best way to handle javascript that is being attached to links, and images in the open publishing newswire, for the purpose hijacking the page.

- On Protest.net we use the approach of building a parse tree, and then stripping invalid tags from the tree.
- On Indymedia we use are a series of regexes, that have accreted over time, like coral, responding to each new intrusion. Neither one handles Javascript all that well.
- Slash and Scoop seem to use hand built parsers, built arund regular experssions.

Building a parse tree is expensive, IMC’s regexes never seem quite complete, (and can cause maintainability headaches) An exmaple of the parser approach (in Python): http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/52281

ack! getting kicked off the phone line more to come…