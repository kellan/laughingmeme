---
title: 'Socialize the Plan'
date: '2026-03-05T06:45:16-05:00'
layout: post
---

On AI and code review.

Anyone who tells you they have this current moment in coding figured out is lying to someone (you or themselves). I'm going to keep sharing half formed thoughts, and bits of things I've learned. 

As the cost of writing code goes to zero new strains and bottlenecks appear. This is what we expect when we think about building software as a system. For most teams the first place that strain appears is in code review. 

_No one_ wants their job to become spending all day carefully reviewing code that someone else had a machine generate in minutes.

Simon wrote yesterday about the anti patterns of [Inflicting unreviewed code on collaborators](https://simonwillison.net/guides/agentic-engineering-patterns/anti-patterns/#inflicting-unreviewed-code-on-collaborators). Also nice to read the recent [How to Kill the Code Review](https://www.latent.space/p/reviews-dead), and see an old friend like the [Swiss cheese model](https://en.wikipedia.org/wiki/Swiss_cheese_model).

Code review is a funny topic. 

Most senior engineers and engineering leaders I know have always been quietly skeptical of its value. It's expensive, and the data data on defect detection doesn’t justify the cost. Meanwhile teams tend to put too much trust in code review while underinvesting in other tools to gain confidence: monitoring, automation, better coding tools and practices, training, etc. (Swiss cheese!)

Code review ubiquity is tied to Github's (really quite recent I promise you!) rise to ubiquity, a tool designed for open source development, that quickly sublimated into being "conventional wisdom and best practice". So much to say about how in software, we keep believing we've found "normal" and “best practice,” forgetting we’re 50 years into an experiment where we tear up and reinvent best practices every 5–10 years.

As a senior leader you sort of shrug and sigh, and be glad that code review has some nice side benefits like ensuring that information is dispersing through the organization, that people are talking to each other, learning and teaching is happening, all of which are valuable. 

But that is all about code review for human written code and so I digress.

On my team we’re not ready (yet?) to ditch code review, but I got this insightful feedback on the first large AI generated PR I tried to land that has shaped my thinking. 

> In a manually coded PR, if a reviewer comes in and pushes back on the design, then that's often a smell that the design wasn't sufficiently socialized prior to spending time on the implementation. So we have meetings to review designs, we write RFCs, etc, to get consensus about how to do a thing before we commit effort to it. In this case, you went through the planning phase with the agent to determine the approach to take, and then had it churn out the diff.

> getting design push-back in a manually written PR is annoying because the effort expended to write it was wasted if the design has to shift. But if the agent is able to quickly produce a new diff once a plan is updated to reflect design feedback, then push-back on the plan isn't a big deal because we can just update the plan and re-run the agent.

Anyone working with coding agents regularly knows the planning phase is where the bulk of the time is spent not to mention where the human cognition and creativity is happening (that and designing the verification steps). Plan → save the plan → implement → describe diff → review → verify → fix → possibly update the plan.

Implementation, the generating of code, is really a rather minor and cheap part of the process. Why obsess on getting feedback on that part?

That's our latest learning as a team: Socialize and get feedback on the plan. Also on the verification steps. And maybe on how you configure your reviewers.

This is the most human to human high bandwidth work.

I liked a lot of the framing of the problem in Simon's and Ankit's posts (and seeing an old friend like Swiss cheese model of remediation). But I think their solutions missed out on a plan for ensuring the continuation of the real value that code review provides: socialization, information dispersal, learning and teaching. 

Ankit is right, the human work moves upstream (as it always has).

You can look at the code. But honestly, it’s the human driving the agents’s job to worry about the code, ensure it works, and that meet the standards of the org. We can do something more valuable with our team mates time when we ask them to review our work.




