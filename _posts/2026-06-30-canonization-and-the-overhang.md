---
title: 'Canonization and the Overhang'
date: '2026-06-30T14:43:24-04:00'
layout: post
---

David Bessis's ["The fall of the theorem economy"](https://davidbessis.substack.com/p/the-fall-of-the-theorem-economy) is ostensibly about LLMs and the pursuit of pure math, and I found it fascinating in its own right, even while I'm not qualified to evaluate a number of his claims. Worth stopping and reading.

Additionally he names a couple of key trends that will be familiar to any engineering leader in this moment, and gives us two very useful terms.

> "The product of mathematics is clarity and understanding. Not theorems, by themselves.” — Bill Thurston

Bessis makes the argument that mathematics has publicly been valuing proving theorems as the high status work, while systematically undervaluing and disguising the critical roles that creativity, community, clarity, and teaching play in advancing the field. Critical work got done without anyone explicitly setting out to do it, as an unacknowledged byproduct of the system of human production. Now with the advent of LLM powered theorem provers the theorem proving can happen in the absence of those critical side effects.  

> "definitions are worth zero points, expository work counts negative, and the best jobs should always go to the people who proved the hardest theorems." — David Bessis

The parallels to writing code write themselves.  How should we think about the value of code that passed the tests versus code that has been socially constructed in a way that leaves the team prepared to operate on it, iterate it, and improve it?  How should we think about the value of 200k lines of unintelligible Lean autoformalization?

Two interesting terms to come out of the exploration:

### Canonization - general, reusable, coherent, efficient, and compatible.

> By canonization, I mean the process of taking a local, one-off formalization and turning it into library mathematics: general, reusable, coherent, efficient, and compatible with the rest… Canonization often changes the picture itself: the definitions, the abstractions, the API, and sometimes even the statement… This is extremely difficult and time-consuming. - Alex Kontorovich

This is the difference between code written for yourself, as part of a greenfield, or as a one off. Canonization is the separate work of turning the "I got it working" version into something the future can build on.  

Fork in the road here. Bessis asserts that the _only_ true value of proving a theorem is for the practitioners that follow. In software we explicitly have the inverse situation, disposable code we put in production is a key learning tool, arguably you _can't_ know the correctness and value of the work until you've deployed, this is the entire idea behind MVP.

Still we all benefit everyday from code that has been canonized, the stable abstractions, the boringly reliable systems we don't have to think about, the encoded best practices. That weird of the moment phenomenon where everyone has a vibe coded solution for you to try to a problem, and it feels more reliable to vibe your own, that's the lack of canonization we're feeling. When we say ["coding has always been the easy part"](https://laughingmeme.org/2026/02/09/code-has-always-been-the-easy-part.html) we're explicitly drawing a distinction between the act of getting lines of code into a text file and the canonization. It's the photo negative of ["technical debt"](https://kellanem.com/notes/towards-an-understanding-of-technical-debt). Features of a codebase that resist change, the code that sucks the will to live are measures of an absence of effective canonization. (though _often_, especially in the traditional human powered software systems they were also evidence of _bad_ canonization)

We're in a golden age of disposable and single use software. This software reads as "bad" to any pre-existing aesthetic judgement. Those definitions of "good" and "bad" software was a doing a lot of implicit, unstated work. Canonization feels like a useful term to make that work explicit for software that needs to live on, and be legible to systems of humans and non-humans operating on it. Canonization is the difference between work that does today's task and work that is accretive. (and value exists in both)

### The Overhang

I'm always a sucker for a good "The Thing" coinage (see ["The Jackpot"](https://en.wikipedia.org/wiki/The_Peripheral)), and The Overhang is no exception.

> The Overhang consists of the _unrealized capital gains_ of past (mathematical) creativity, the latent value from connecting the dots in the existing corpus. It is a dividend of canonization. Mathematician X states problem A, mathematician Y crafts concept B, then mathematician Z notices that B trivially solves A and “captures” the social reward. But in the process of capturing the reward, Z usually introduces new concepts and new open problems, reinjecting latent value into the Overhang.

LLMs, being tools that naturally can memorize the entire corpus and pattern match on it, are extremely well suited for searching the Overhang, and do it in a way completely distinct from how humans do it. If an LLM searches by reading everything, humans are engaged in a fundamentally different project with intuitive leaps based on reading a small number of papers and interacting with other brains. 

Software has an Overhang as well. Open source. Decades of canonized, intelligible, build-on-able work, sitting in public repos. (and Stack Overflow, and blogs, etc).

The Overhang is genuinely exciting, allowing us to discover (develop) things that would never have been realized with just human brains on the problem. The dream of searching the Overhang has existed for decades, or at least since Highlander II: The Quickening.

Don't love Bessis's coining of "intuition-maxxers", but I'm absolutely familiar with and excited about the people "seeing further than anyone before, standing on the shoulders of giant machines."

But if we're not careful, the [Cognitive Surplus](https://en.wikipedia.org/wiki/Cognitive_Surplus) becomes the Cognitive Seed Corn (as in the eating of, credit [Migurski](http://mike.teczno.com/notes/)). If we continue to value only the work of theorem proving (coding) and not the work of canonizing (and also training the next generation of practitioners) then the Overhang will grow increasingly poor as a search space. We see this already in how reviewing is more fatiguing and also unrewarded. No one gets status for doing cleanup. (see Tanya's [glue work](https://www.noidea.dog/glue))

Generation easy. Canonization hard. Running code valuable; presumably autoformalization too. But the intuition and the social production of knowledge are the seed corn.  Our task is to reimagine how teams work and what we give status to, so that our practices don't leave our people or the Overhang depleted.