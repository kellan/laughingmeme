---
title: 'Timberborn 1.0, HTTP Lever, and Claude Code'
date: '2026-03-15T14:27:49-04:00'
layout: post
---

Timberborn is very much my kind of game. Complex, cozy, climate change, water system design, beavers. (My friend [Schuyler](https://schuyler.info/) pointed out at one point that my preferred genre of game is "management sims", and that perhaps I was little over rotated on my day job.)

I played it a _ton_ during Early Access, and it's great to see it finally reach 1.0. I highly recommend it. 

One of the things they added in 1.0 is a full automation system. _Finally_. (Though I'll be honest I was mostly okay with Sluice Gate there by the end at least for basic reservoir management). But now you can get serious! Automations can work on water depth, flow, contamination, the weather, resource counts, population counts, etc. There is memory, and a full complement of logic gates for wiring up your very own beaver powered Turing machine. 

But one of the things they _also_ added to 1.0 is the ability to have the game call arbitrary HTTP endpoints, and vice versa.

If you build an "HTTP Lever", Timberborn will expose HTTP endpoints for turning it off and on on localhost.  Connect it to a fireworks launcher and now you can have fireworks launch across the sky every time that endpoint is called.

Have Claude Code add a Notification hook that calls that endpoint like so, and now every time Claude needs your attention: fireworks launch in Timberborn. 

![Fireworks in Timberborn](/img/timberborn-fireworks.png)

(Or you can add it to the Stop hook if you want to know every time Claude stops)

```json
{
  "hooks": {
    "Notification": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "curl -s 'http://localhost:8080/api/switch-on/HTTP%20Lever%201'"
          }
        ]
      }
    ],
    "Stop": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "curl -s 'http://localhost:8080/api/switch-on/HTTP%20Lever%201'"
          }
        ]
      }
    ]
  }
}
```


