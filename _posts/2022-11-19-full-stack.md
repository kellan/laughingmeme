---
title: 'Full stack'
date: '2022-11-19T08:26:30+00:00'
layout: post
---
<a href="https://xkcd.com/378/"><img src="/img/real_programmers.png"></a>

Apropos of having one of those conversations about how silly the term "full stack"

At my first job in industry you were expected to be full stack, though the term wouldn't be coined for over a decade. 

At the time full stack meant you could:

* walk over to the local OEM
* choose a case, CPU, drives, network cards, optical drive, etc
* assemble said pieces into a working server possibly twiddling IRQs as needed
* format drives, acquire and install an operating system, configure the boot loader, and configure PPP and DHCP to get the box online
* download and compile a development toolchain
* compile and configure a web serve and FastCGI
* compile and configure a database, design the schema, write the SQL
* write some code that made SELECTs, generated HTML and accepted form encoded POSTs
* write code that responded to atypical request like dynamically serving images and NPH requests for live updating content 
* check the code into CVS
* rack the server, connect directly via a local terminal and configure NICs to talk to datacenter's network
* configure bind to publish the IP address of the box

A small smattering of the things It did not require you to do included:
* code collaboratively
* secure your application, as long as you were more secure than Matt's Script Archive you were good
* support any sophisticated analytics or observability beyond tail -f
* Javascript
* git
* work with product management
* achieve anything resembling scale or uptime - [10k concurrent connections was a _big deal_](https://en.wikipedia.org/wiki/C10k_problem)
* deal with Jira or any other ticket system

