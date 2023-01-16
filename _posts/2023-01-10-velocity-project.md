---
title: 'Software and its Discontents, January 2023, Part 1'
date: '2023-01-16T12:26:30+00:00'
layout: post
hidden: true
---

There is a complex gestalt going on in tech at the moment. I've been investigating it through a series of conversations with senior engineering leaders. In the zettelkasten the notes are all linked together as the "Velocity Project” because that was the first thing I noticed: the number of CEOs complaining about their team's velocity had risen sharply.  When I went and spoke to more folks I found that there was discontent broadly, with managers feeling like the difficulty of their work had skyrocketed, ICs disaffected from their companies and leadership, and VCs skeptical about success rates in the industry. 

One obvious caveat to call out upfront is we all just lived through a multi-year global pandemic that was filled with many tragedies, private and public, and forced all of us to make radical changes to our lives and work. I believe that the trends I'm seeing are distinct from the pandemic, but it's reasonable to be skeptical. Even if all the changes we see are attributable to living through a pandemic I don’t believe we can use that insight to develop a theory of what we do know, so I've kept working on this.

As always I want to write up a big unified theory of blog post. This isn’t that. This is some light tidying up of my working notes. More to come. 

In this post in particular I want to set the stage and touch on a few of the trends that came up in my conversations with people including: the end of the decade of cheap money, tech talent is more expensive than ever, success for software companies is more elusive than at any time in the last 20+ years, conflicts over changing expectations of the work environment, and complexity has exploded.

Of those trends the one that people had the most to say about was the explosion of complexity, and so I'm leaving that for last.

### “No one is impressed with their tech team.”

There is a pervasive sense across the industry that executive teams aren't impressed with their engineers, that senior engineers aren't impressed by early career folks, that productivity and efficiency is down, and that we've lost the thread on things like velocity and impact. "No one is impressed with their tech team" was how one senior eng leader I spoke with said it. Layoffs have been one of the largest stories in tech this year. Companies have been quick to explain this trend as due to overhiring during the pandemic. More quietly some have pointed to a shifting focus on profits over growth. But also privately and sometimes publicly there is a sentiment that engineering teams just aren't as productive as executives expect them to be, that the overhiring represents bloat not just miscalculated ambition. That velocity, productivity, predictability, efficiency have suffered. This has been a narrative we've seen from Sundar at Google, Mark at Facebook, and many others. (setting aside the toxic clown show that is Musk's Twitter) That layoffs are seen as a moment to rebalance power between executives and employees.

This sentiment represents such a dramatic shift from how executives talked about their engineering teams a decade ago that it got me curious: 

* Has something substantially changed about how effective software teams are?

And follow up questions like:

* Does that tell us something about our software development practices that we can update and change?
* How does this impact labor relations in tech, and is there additional context we can share with people who entered the industry during this last decade and have known only expansion?

### Is there a problem?

The dominant macro trend is fairly straightforward: interest rates are up. Interest rates being up creates better investment opportunities than tech, therefore tech stocks are down, and venture capital is harder to raise. This is not particularly interesting. Stock prices have only ever loosely correlated with how well a company is executing and so the fluctuations only give us loose information about how companies may or may not need to improve execution.

What is interesting is all the other challenges that were hidden by a decade of cheap money that we find exposed as the tide goes out. And it is those challenges that can make it a uniquely difficult time to lead software development teams.

Setting aside stock prices collapsing for many tech companies we see other clear signs that something is in fact wrong:

* Layoffs at a scope and scale that we haven't seen since Dotcom 1.0
* The, for lack of a better word, "vibe" shifting within offices, with more discontent, disaffection, and conflict.

### Trends Driving Discontent

0. The end of the decade of cheap money
1. Tech talent is more expensive than ever.
2. Success for software companies is more elusive than at any time in the last 20+ years.
3. Conflicts over changing expectations of the work environment.
4. Complexity has exploded.

### The end of the decade of cheap money

From my interviews my core belief is we're having this conversation right now for a number of reasons, including the pandemic, and long standing issues coming to a head, but I think the most immediate causal factor is the tide of cheap money going out. As that tide has gone out we're faced with a number of unique challenges, new conditions, broken practices, and dysfunctions which we'd be able to avoid talking about by throwing money at the problem.

### What were we spending the cheap money on?

Team sizes are up, creating a tight talent market, driving up salaries, with salaries for folks right out of college and early career rising fastest, compressing the compensation ranges. We also saw practices like annual stock refreshes become much more ubiquitous, and the emergence of other employee-friendly equity practices: like no vesting cliffs. Put together the cost of paying an engineering team, especially a large team, is significantly up.

Marketing was another major sink for cheap money. This had several knock on effects on the costs of operating a tech company, and in particular engineering practices and costs. Beyond just the marketing budget, heavy investment in marketing has significantly raised companies' expectations for the quality, scope, and speed of their analytical infrastructure. This has driven significant investment in data engineering talent and infrastructure, supercharged the MarTech SaaS sector (absorbing more of the limited data engineering talent), and required engineering and marketing to work in close partnership, two teams that have not traditionally been close partners. 

Cloud and SaaS were major beneficiaries of cheap money with OpEx being much simpler to deploy quickly than CapEx. This is a key driver in the explosion of services that any single company integrates.

Cheap money has been used to finance starting a large number of technology companies that are outside of Silicon Valley's traditional sweet spot; businesses that, far from having near zero marginal costs from growth, have significant marginal costs due to interacting with the physical world, logistical complexity, licensing liabilities, or all of above and more.

Failing is a good way to keep complexity from growing year over year. With cheap money we've seen many more companies persisting and pivoting instead of simply folding. 


### Tech talent is more expensive than ever.

As anyone who has spent any time hiring engineers in the last decade knows: competition has been fierce. Demand has unsurprisingly driven up prices. Salaries have gone up, roughly 35% since 2010, before inflation. Stock based compensation is also up, with practices like annual refreshes, accelerated vesting, widespread usage of RSUs, etc, all contributing to higher total compensation. Salaries for early career folks have been rising fastest with new grads and early career folks seeing the largest percentage gain, compressing the compensation window.  We've seen these costs rising outside of traditional high cost locations like San Francisco and New York. Globally domestic technology industries are increasingly competitive for talent with those looking to outsource from high cost locations. Similarly the number of companies shifting to remote first or hybrid, which had been accelerating before the pandemic, exploded during the pandemic. Some companies have gone as far as embracing one pay band globally.


### Success is more elusive.

For the decade between 2000-2010 the most important trends were, initially, broadband adoption's annual doubling, followed by smartphone adoption following an even more extreme curve. These trends created a guaranteed pipeline of new customers. Building a successful technology business was mostly about getting the damn code to run and being there waiting at the end of the conveyor belt as new customers were minted.

20 years on:
* broadband and smartphone adoption have largely saturated 
* most people have already adopted some aspect of computers and the Internet to assist in their personal and work lives, we're no longer competing against non-consumption
* there are very few fields where there is not already an incumbent
* the easy ideas have all already been tried
* the current generation of tech giant monopolists have consistently proven themselves much more adept at avoiding being disrupted

(nb: social media got a brief reprieve by capitalizing on capturing the teenage market on the theory that new teenagers are still being continuously minted)

Given these trends we've seen companies increasingly pushing into areas where success is much harder: heavily regulated industries, those with significant capital outlay, areas littered with previous failures, etc. 

### Lost that Magic Feeling

Those first two trends explain a lot by themselves on why CEOs and VCs are discontent. That magic feeling of being able to build a successful business for the relatively small capital outlay of hiring a software engineering team is largely gone, squeezed from both ends.  But that isn't the full story. While business success certainly has some impact on the experience of the employees, these two trends fail to explain the experiences of engineers who feel like engineering teams aren't as good as they used to be, or managers' experience that their job has gotten radically more difficult. 

### Conflicts over changing expectations of the work environment

During the last decade we've seen a set of rising expectations on what constitutes a good work environment. Starting in the early 2000s Yahoo and then Google famously took the perks to the logical extreme. Perks were great, but in the 2010s we’ve seen employees’ rising expectations expand. Perks certainly, comp absolutely, interesting work of course, but we’ve also seen the definition of a good place to work come to include one where people see their values reflected in the company and leadership. Employees and leadership have increasingly been in conflict over:
* the rising expectation that work should be a place that strives to address discrimination, racism and sexism
* employee skepticism about contracts with weapons vendors
* the expectation that leadership shouldn't be fundraising for fascists and hate groups
* etc.

This represents a major shift in social norms in Silicon Valley, and a minor but real shift in who has power. In speaking with one semi-retired senior leader they mentioned being too nervous to get back in the game of leading groups of people because the expectations felt so high to them. 

At the same time we also see a rising expectation that work can and will cater to the emotional needs of employees. Employees are advocating for and expect to receive not just good work-life balance, and frequent promotions, but a company that is responsible for addressing the stress and discomfort they experience at work. 

The focus on work-life balance is generational but also points to several key industry trends. The first is that software development, as a job, has mainstreamed. More people are going into it because it's a good job versus because they're the obsessive autodidacts who would do this work whether or not you paid them, as so many of us were in the earlier days of Silicon Valley. (This has huge implications for how we hire and train people that we’ll talk about elsewhere, some day). Treating tech as a good job versus a mission, or holy calling is extremely rational, because even while tech salaries (and bonuses, and other guaranteed forms of comp) have become more lucrative the reality of stock options has diverged from our industry's narrative of them as a path to fabulous wealth. I don't want to dwell too long on this point here as I could write a whole post just on this one point (which is true probably of almost any paragraph in this post) but a few key changes over the last 2 decades include:
* Sarbanes-Oxley in the wake of Enron overhauled 409a regulation closing down the kind of practices that made so many Microsoft employees in the 1990s so fabulous wealthy and set the template for our industry.
* Many companies go public later these days, because they have easier means of accessing capital, compare a company like Stripe with Amazon which IPO'ed after just two years of operation with $16m in revenue in the previous year.
* The founder friendly trend within venture capital has created a serious divergence in what is good for common employees and shareholders and how decisions are made at many companies.

Meanwhile changing norms around discomfort and stress are correct that often they are unnecessary and toxic, inflicted unthinkingly by leadership on employees. However discomfort and stress are also irreducible components of growth and doing hard things. In my interviews some people pointed to employee entitlement run amok, or canonization of approaches like "servant leadership" in our industry. But this set of changing expectations is much larger than just the tech industry. [Maurice Mitchell](https://workingfamilies.org/about-maurice-mitchell/) of Working Family Party (and previously BLM), in [Building Resilient Organizations](https://forgeorganizing.org/article/building-resilient-organizations) has written the best document I've seen on how raising standards of expectation have both positive and dysfunctional aspects, in particular in [Unanchored Care](https://forgeorganizing.org/article/building-resilient-organizations#docs-internal-guid-93af5700-7fff-f2fe-8f7b-8771299df407)

>"Unanchored care is assuming one's mental, physical, and spiritual health is the responsibility of the organization or collective space. [That] the onus is on the organization to deal with the harm, burnout, or psychological stress one may experience through the work ... Discerning what is yours to hold and what is the collective’s is an essential life skill and fundamental to organizational work, collaboration, and meaningful engagement of others."

It's worth reading the entire essay, probably more than once. 

Managers in particular are being caught in the middle of these dynamics: ground between leadership's resentment at being held to higher standards, and employees unrealistic expectations of emotional care. Add to this the widely held sentiment of "fuck mangement" (something [Marco has spoken about regularly](https://twitter.com/polotek) [Hey Marco! Get a blog!] and that is also covered in Mitchell's essay) and you have a dynamic that is chewing up and spitting out our best managers.

That's a problem for a number of reasons, in part because good management is critical to how organizations can effectively scale: that's what managers do, provide the critical resources that allow larger and larger groups of people to effectively collaborate. They also are instrumental in bridging the trust between employees and leadership. We see that trust is strained to the breaking point these days because of the topics we touched on in "Losing that Magic Feeling" colliding with changing expectations at a time when management is worn thin. That breakdown manifests in the frequent flare ups that are becoming common around topics like "return to the office", "talking politics at work" or even the current crop of layoffs.

### Complexity has exploded

The explosion of complexity in software engineering these days at tech companies was the most common topic that I heard from people in my interviews when talking about what factors might be driving a real change (versus a perceived one) in the success of engineering teams. In our conversations there were numerous examples of expanded complexity, which I've attempted to catalog. Some of this complexity is directly attributable to the decade of cheap money, some is just the natural result of our industry maturing. Some of this complexity will be addressable with better practices, better leadership, and a better understanding of the sources of complexity. Some of the complexity is here to stay, and we'll need to recalibrate our expectations about how difficult it is to build software. 

1. The complexity of rising standards
2. The complexity of too many choices
3. Complexity and technical decision making in the era of abundance
4. The Complexity of large teams and aging code bases
5. Aspirational Complexity


### The complexity of rising standards

A key source of complexity is a set of rising standards for the products and tools we're building. 

Regulatory requirements around e.g. data privacy  and financial controls, are significantly more complex and become important to companies earlier in their life cycle than they once did. The regional and geographic variations can be particularly challenging and undermine a key productivity win that early online businesses saw. Returning for example to Amazon, they didn't even bother collecting sales tax in their early days, a price win for customers, but also a massive reduction in complexity vs a large brick and mortar business. In the early days we on the Web were all playing on regulatory easy mode. That window has largely closed. Especially as, like we discussed earlier, startups, searching for new problem spaces to deploy their capital and technology, move into highly regulated domains, like health, finance, and civic infrastructure.

The web's rapid rise to dominance was driven in large part by how it reduced the complexity of delivering software to customers. It was a single unified platform. It was open and non-proprietary. It was simple by design, built around a stateless protocol and a simple declarative UI paradigm. It was available over the internet and didn't require anything to be bundled or shipped. These radical simplifications allowed effective asymmetric competition with established players developing desktop software and delivering it via physical media. Over the intervening decades we've largely compromised those simplifying properties of the web. Even when we're still delivering software via the internet (and not say scooters out of the back of a fleet of vans) we're now targeting many different platforms: desktop web, mobile web, and also the two dominant and semi-incompatible mobile walled garden ecosystems. Meanwhile the complexity of state management has become so complex that it is the primary job we adopt heavy frontend frameworks, like React, to help us address.  All of this in service of competing on ever rising standards of customer expectation and quality experiences. 

Finally accessibility and internationalization have become critical for success. In the early days when broadband and then mobile adoption were rapidly doubling you could count not just on new customers being regularly minuted, but that the vast majority of those new customers would match the demographics of early adopters: young and wealthy, with many of them living in US cities. Even those of us who were those early adopters aren't that young anymore, and a company that was only able to get adoption among some idealized fantasy model of young, perfectly healthy, US consumers isn't viable in 2022.  But both accessibility and internationalization add to complexity, requiring a higher degree of coordination in software development, as you, perforce, are investing in features of which, at least some of them, aren't for you.

### The complexity of too many choices

There are more developer tools than ever: more languages, more frameworks, more databases, more services. Most of these tools represent real progress in terms of increased capabilities, and outsourcing non-core parts of your business. However the range of choice has real impacts on complexity.

Anyone joining a company today is looking at a stack that is at least as bespoke as the worst NIH stacks of the previous era. We may not have rolled it ourselves from scratch, but the odds that you've seen this exact combo of technologies, tools, and services configured in this way is very low.  We're a long way from the era of LAMP's dominance.

The number of technologies and the rate of change means we have fewer mavens and experts. At Etsy when we needed to scale PHP we could hire Rasmus. Very few teams these days can find that kind of expert, and fewer of those experts will have seen the relevant scale on that exact stack.

### Complexity and technical decision making in the era of abundance

In the conversations I've been having with engineering leaders a huge source of anxiety has been the impact that the explosion of technical choices has had on the quality of technical decision making. 

As an engineering leader raising the quality of technical decision making is arguably your most important job after building the team itself. Eight years after I left Etsy I'm still getting new notes from people telling me that, no matter how frustrated they were with me at the time, in subsequent jobs they've come to appreciate and desperately miss how well defined the "Etsy Way" of building software was. In retrospect it should be less of a surprise given how vividly I remember the strictures of the "Flickr Way", nearly 15 years after the fact. (Let me tell you, as a recovering Design Patterns cultist, the "No Objects" rule messed with me for years)

Today any team that has been around for more than a minute has not only chosen a unique combination of technologies, they've changed their mind about it a couple of times, often in logically inconsistent ways. With so many great technologies out there, and so many of them backed by well funded marketing teams (see: cheap money and marketing), it's never been harder to keep your stack simple, and logically consistent. And teams aren't. In fact a number of teams have just given up entirely and are leaning into developer empowerment and polyglot infrastructures. We've collectively taken on the complexity of targeting multiple stacks, their idiosyncrasies, their need for training, and upgrade cycles due to raising standards, while we're simultaneously splitting our resources for managing that complexity by taking on the needed training, upgraded cycles, and idiosyncrasies of these complex polyglot stacks. Not to mention the unique interactions of these technologies, with our previous technology choices, which are still lingering in the stack. The real horror stories these days in infrastructure aren't the load spikes of days of yore but those complex interactions: how PHP's GRPC library interacts with Envoy, how Scala's JSON library tickles Varnish caching issues, how MySQL's weird implementation of utf8mb4 is incompatible with storing your data literally anywhere else, etc. 

Without standardization in your company, without a small number of well known tools in which you're developing expertise as a team, the hope that you can grow your team logarithmically but see exponential results is a fantasy. 


### The Complexity of Large Teams and Aging Code Bases

There is so much to say on this topic, but also much of it has been covered well elsewhere. There have been a few important changes that relate to the trends we're discussing in this post.

Cheap money and founder friendly funding leading to founder control means that companies are sticking around longer, and more likely to pivot than to fold. That means 2 decades into the Internet era of tech startups and a decade into cheap money, we're seeing significantly older codebases, with all of their inherent complexity. This compounds with the explosion of technical choices, and the sometimes poor technical decision making.

As teams have gotten larger, complexity goes up for a few reasons. First as we slice up responsibility for developing our software into thinner slices there are fewer people who have touched the whole system and have a coherent view of the whole architecture. Coherence is one of the key characteristics we look for in simple architectures, and its absence drives complexity. Additionally large teams spend more time dealing with coordination and are more likely to reach for architecture and abstractions that they hope will reduce coordination costs, aka if I architect this well enough I don't have to speak to my colleagues. Microservices, event buses, and schema free databases are all examples of attempts to architect our way around coordination. A decade in we've learned that these patterns raise the cost of reasoning about a system, during onboarding, during design, and during incidents and outages. Finally, as teams have grown, and individuals' scope of responsibility have narrowed, resume and promotion driven design has found increasingly fertile ground. How do you stand out as the 500th person maintaining a system you didn't build? Build something new! And all of the complexity inherent in it. Google, as with so many of the best and most problematic patterns in this era, is well known as the epicenter of this phenomena, but you see it broadly as teams grow.

### Aspirational Complexity

As an industry we've always been enamored with new technology and shiny objects. For years it was almost definitional, otherwise why did you go into this industry? Interestingly, even as the job has mainstreamed, the infatuation with complexity has remained, and even grown. 

First, complexity lies at the heart of our industry's mythologies. New people joining the industry are taught our myths about Google, Facebook, Amazon, and a sense that these companies' approaches are what software is "supposed to" look like. And fewer and fewer people are in position to have a wide enough scope of responsibility to learn pragmatic counter lessons the hard way.

Second, during the era of abundance, when OpEx was easier to deploy than CapEx, cloud and SaaS exploded. These services come backed with significant marketing budgets whose _job_ is to convince you that you _need_ the complexity. Why deploy a database when you could deploy a non-relational datacluster, why deploy a server, when you could deploy a Kubernetes cluster, why build simple web pages when you could use React, etc etc. Hacker News in particular has an interesting role in this cycle, being both a community driven by industry mythology, and also the marketing arm of a major source of funding for new developer oriented SaaS offerings.  Now your community is reinforcing the message that good software is complex software, and that last year's technical choices are out of date, and probably why your productivity is suffering.

Finally, it's easier to raise capital if what you're doing sounds high tech and complicated. Really it was a flywheel of people being able to raise money by sounding complicated and smart, and then spending that money on people who made them feel like they could help solve a hard problem in a complicated and smart way, with everyone getting paid and emotionally validated along the way. 


### In Conclusion.

No conclusions.  This was just working notes, remember?
