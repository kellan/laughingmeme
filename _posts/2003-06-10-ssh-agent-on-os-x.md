---
id: 466
title: 'ssh-agent on OS X'
date: '2003-06-10T11:23:11+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=466'
permalink: /2003/06/10/ssh-agent-on-os-x/
typo_id:
    - '464'
mt_id:
    - '842'
link_related:
    - ''
raw_content:
    - "Okay, 4 hours into my first day of trying to do development work, and I\\'m pulling my hair out without ssh-agent.  The options seem to be the amazingly cute <a href=\\\"http://www.phil.uu.nl/~xges/ssh/\\\">SSH Agent</a> GUI, something called <a href=\\\"http://www-inst.eecs.berkeley.edu/~kevinvv/SSHAgentServices.html\\\">SSHAgentServices</a> which seems to no longer exist, or the more traditionally geeky approach.  SSH Agent was appealing, but it looked like it need to be running whenever I wanted to being using ssh-agent (always) and the on a 12in screen the dock doesn\\'t need any extra clutter.  Other then that it looked great.  Eventually I settled on this rather complete recipe from Apple\\'s developer site, on <a href=\\\"http://www.opensource.apple.com/tools/cvs/committers/\\\">launching launching ssh-agent from .login</a>.  Also I\\'m re-linking to this good <a href=\\\"http://mah.everybody.org/docs/ssh\\\">platform indpendent ssh-agent intro.</a>\n\n<b>update:</b> I use <a href=\\\"http://dreamflow.nl/projects/sshkeychain/\\\">SSHKeyChain</a> these days, and am very, very happy with it."
---

Okay, 4 hours into my first day of trying to do development work, and I’m pulling my hair out without ssh-agent. The options seem to be the amazingly cute [SSH Agent](http://www.phil.uu.nl/~xges/ssh/) GUI, something called [SSHAgentServices](http://www-inst.eecs.berkeley.edu/~kevinvv/SSHAgentServices.html) which seems to no longer exist, or the more traditionally geeky approach. SSH Agent was appealing, but it looked like it need to be running whenever I wanted to being using ssh-agent (always) and the on a 12in screen the dock doesn’t need any extra clutter. Other then that it looked great. Eventually I settled on this rather complete recipe from Apple’s developer site, on [launching launching ssh-agent from .login](http://www.opensource.apple.com/tools/cvs/committers/). Also I’m re-linking to this good [platform indpendent ssh-agent intro.](http://mah.everybody.org/docs/ssh)

**update:** I use [SSHKeyChain](http://dreamflow.nl/projects/sshkeychain/) these days, and am very, very happy with it.