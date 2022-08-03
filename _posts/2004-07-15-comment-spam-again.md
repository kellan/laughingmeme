---
id: 859
title: 'Comment Spam, Again.'
date: '2004-07-15T12:31:24+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=859'
permalink: /2004/07/15/comment-spam-again/
typo_id:
    - '857'
mt_id:
    - '2196'
link_related:
    - ''
raw_content:
    - "The attack model of comment spam seems to be changing.  It used to be that you\\'d only see one or two spams, and the idea would be to sneak in quietly, and hope you left the it there.  Now I\\'m getting flooded, hundreds an hour, and my home rolled system doesn\\'t scale well.  I\\'ll probably be switching to <a href=\\\"http://www.jayallen.org/projects/mt-blacklist/\\\">MT-Blacklist</a>, plus implementing some sort of throttling, and maybe a nonce.  Anyone have pointers on MT impls of those last two?\n\n<b>update:</b> It was pointed out to me that MT 2.66 adds at least some throttling.  So where the hell do you download it anymore?  Grrr.\nOf all the projects I\\'d like to be hacking on in the next few days, this doesn\\'t even make it into the top 100.  Grrr.\n\nThat said, I think some of the recent arguments about comments ruining blogs (<a href=\\\"http://www.markbernstein.org/\\\">Mark Bernstein\\'s</a> have been <a href=\\\"http://www.markbernstein.org/Jun0401/Commentary.html\\\">most cogent</a>, as usual), and the earlier airy declarations that the conversation was distributed by referers and trackbacks are a little too flip.  There are dozens of conversation in which I participate, which I don\\'t want to have to write up a whole blog entry, complete with background, and context.  In line commenting is an essential element of the emerging transparency which makes online communication interesting, and possibly revolutionary.  So I\\'ll deal with the spam protections, though I\\'d rather just see them shot."
---

The attack model of comment spam seems to be changing. It used to be that you’d only see one or two spams, and the idea would be to sneak in quietly, and hope you left the it there. Now I’m getting flooded, hundreds an hour, and my home rolled system doesn’t scale well. I’ll probably be switching to [MT-Blacklist](http://www.jayallen.org/projects/mt-blacklist/), plus implementing some sort of throttling, and maybe a nonce. Anyone have pointers on MT impls of those last two?

**update:** It was pointed out to me that MT 2.66 adds at least some throttling. So where the hell do you download it anymore? Grrr. Of all the projects I’d like to be hacking on in the next few days, this doesn’t even make it into the top 100. Grrr.

That said, I think some of the recent arguments about comments ruining blogs ([Mark Bernstein’s](http://www.markbernstein.org/) have been [most cogent](http://www.markbernstein.org/Jun0401/Commentary.html), as usual), and the earlier airy declarations that the conversation was distributed by referers and trackbacks are a little too flip. There are dozens of conversation in which I participate, which I don’t want to have to write up a whole blog entry, complete with background, and context. In line commenting is an essential element of the emerging transparency which makes online communication interesting, and possibly revolutionary. So I’ll deal with the spam protections, though I’d rather just see them shot.