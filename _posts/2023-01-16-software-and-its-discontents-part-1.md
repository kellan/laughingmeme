---
title: 'Software and its Discontents, January 2023, Part 1'
date: '2023-01-16T12:26:30+00:00'
layout: post
---

Over the last few months I’ve been intrigued by a question: where is the frustration and disillusionment, so prevalent currently in the software industry, coming from? And, as an engineering leader, what can I learn from this discontent and how should it shape my practices?

This is not a topic that lends itself to a definitive answer, boundless and changing as the conditions are, but in talking with other engineering leaders, executives, CEOs, VCs, and a wide variety of practitioners, I found some trends that felt informative to me, and hopefully to you. I found in talking with folks not a single cause, but several interdependent causes. This isn't a simple conversation, e.g. about remote vs hybrid, but a decade long set of trends contributing to why software engineering has gotten less successful, strains on labor relationships more pronounced, why managers are so fervent that their job has gotten harder, and why we're having this discussion at this exact moment.

In this blog post, part 1 in the series, I’m going to try to set the stage for the next few parts by laying out the discontent I'm seeing, and what are some of the causes and trends. In particular I suggest that over the last decade we've seen:
* an explosion in the complexity of software development
* tech talent become significantly more expensive
* success become more elusive than ever, with startups having "lost that magic feeling"
* conflicts over changing expectations of the work environment

Further I believe that we're having this conversation at this exact moment because we're at the tail end of a decade of cheap money. The relative ease of raising capital has both contributed to the trends that have brought us to this point of discontent, and allowed us to put off dealing with the challenges it created. Until now. 

In future installments I'll deep dive into the causes and trends, and share some ideas about how we can evolve our practices. I'm hoping this whole series will be useful for people thinking about the current state of the software industry, managers looking to ease their practice, individuals trying to understand the system that they're operating in, and for anyone who joined our industry in the last decade and is looking for some perspective.

(And a sincere thank you to everyone who read the draft form of this when it was all one long rambling brain dump blog post. I can’t promise it isn’t still a rambling brain dump, but at least now it’s a rambling brain dump broken into sections and installments!)

### "No one is impressed."

The earliest signals that caught my attention that we had a phenomena that wasn't just local to my own experiences was a sharp rise in discontent among three of the groups I speak with regularly: CEOs (and other executives), managers, and senior ICs (staff, principal, etc). "No one is impressed with their tech team", was how one senior eng leader I spoke with put it.

CEOs, both in private and some in public, have been increasingly vocal about their skepticism regarding their engineering teams’ effectiveness. In public we've seen Sundar and Zuckerberg sharing these opinions, with a number of lesser luminaries following along (this is setting aside the toxic clown show that is Musk's Twitter, and the sycophant he is inspiring). Layoffs have been one of the largest stories in tech this year. Companies have been quick to explain this trend as due to over-hiring during the pandemic. More quietly some have pointed to a shifting focus on profits over growth. But also privately and sometimes publicly the sentiment is that engineering teams just aren't as productive as executives expect them to be, that the over-hiring represents bloat not just miscalculated ambition. It's hard to overstate what a dramatic shift this is from how executives spoke about their engineering teams a decade ago, which piqued my interest.

Senior engineers meanwhile are feeling both frustrated and stuck. There is skepticism about whether early career folks are coming into the industry as well prepared as they used to (or into roles where they can be successful whether or not they're prepared), but "kids these days" has a long history in our industry not to mention in every other human endeavor. Some of the increased pitch of frustration though is coming from the senior engineers' own struggle to be effective. They feel "stuck", with "entire chunks of [the] organization working on problems that feel self-inflicted and deploying skilled generalist engineers to seemingly low-value hyper-focused projects."

Managers meanwhile experience their jobs as having gotten radically harder, caught in the middle of rising expectation and frustration on all sides. 

### Caveat: a global pandemic

One obvious caveat to call out upfront is we all just lived through a multi-year global pandemic that was filled with many tragedies, private and public, and forced all of us to make radical changes to our lives and work. Our industry was both touched relatively lightly given our comparative ease of working from home, and radically transformed as we stayed at home, and learned to do this work in our bedrooms and living rooms, and over Zoom, something very few of us signed up for. I don't think that it can be overstated what a toll this has taken on all of us, even if the toll was different for each of us. I do, however, believe the trends I'm seeing are distinct from the pandemic, even if they interact heavily, but it's reasonable to be skeptical of that conclusion. Even if all the changes we're experiencing are attributable to living through a pandemic, I'm not sure what we do with that insight, so I've kept working on exploring these other avenues of understanding.

### So what's the problem?

The dominant macro trend is fairly straightforward: interest rates are up. Interest rates being up creates better investment opportunities than tech, therefore tech stocks are down, and venture capital is harder to raise. This is not inherently interesting if we're trying to learn about engineering and management practices. Stock prices have only ever loosely correlated with how well a company is executing and so the fluctuations only give us loose information about how companies may or may not need to improve execution.

What is interesting is what was hidden by a decade of cheap money that we find exposed as the tide goes out. As that tide has gone out we're faced with a number of unique challenges, new conditions, broken practices, and dysfunctions which we've been able to avoid talking about by throwing money at the problems. And it is those challenges that can make it a uniquely difficult time for software development teams.

### What were we spending the cheap money on?

One way to understand what has changed is by looking at what we were spending the cheap money on. 

Team sizes are up, creating a tight talent market, driving up salaries, with salaries for folks right out of college and early career rising fastest, compressing the compensation ranges. We also saw practices like annual stock refreshes become much more ubiquitous, and the emergence of other employee-friendly equity practices: like no vesting cliffs. All together the cost of paying an engineering team, especially a large team, is up significantly.

Marketing was another major sink for cheap money. This had several knock on effects on the costs of operating a tech company, and in particular engineering practices and costs. Beyond just the marketing budget, heavy investment in marketing has significantly raised companies' expectations for the quality, scope, and speed of their analytical infrastructure. This has driven significant investment in data engineering talent and infrastructure, supercharged the MarTech SaaS sector (absorbing more of the limited data engineering talent), and required engineering and marketing to work in close partnership, two teams that have not traditionally been close partners.

Cloud and SaaS were major beneficiaries of cheap money with OpEx being much simpler to deploy quickly than CapEx. This is a key driver in the explosion of services that any single company integrates. Increased marketing budgets were also put behind these SaaS offerings, making a virtue of their adoption.

Cheap money has been used to finance startups that are outside of Silicon Valley's traditional sweet spot; businesses with near zero marginal costs from growth. Instead we see a crop of businesses with significant marginal costs due to interacting with the physical world, logistical complexity, licensing liabilities, or all of the above and more.

Finally failing is a good way to keep complexity from growing year over year. With cheap money we've seen many more companies persisting and pivoting instead of simply folding. This has strained the capabilities of leaders, managers, and software architectures.

### A stage, set

Thanks for reading part 1 of "Software and its Discontents, January 2023". If you didn't already believe we were struggling as an industry, it's unlikely I've convinced you. If you were thinking about it, I hope I provided some systemic perspective on how, why and why now.

In part 2, I'll be talking about the explosion of complexity we've seen in software development over the last decade, and in particular: 

1.  The complexity of rising standards
2.  The complexity of too many choices
3.  Complexity and technical decision making in the era of abundance
4.  The complexity of large teams and aging code bases
5.  Aspirational complexity


