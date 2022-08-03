---
id: 5381
title: 'What I&#8217;m up to: researching'
date: '2018-11-12T18:26:30+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=5381'
permalink: /2018/11/12/what-im-up-to/
categories:
    - Uncategorized
---

It’s been 6ish months since I left Blink, and it was my birthday this last weekend. To celebrate I’m taking a few moments to write down some notes about what I’ve been up to. These notes are very much works in progress, shared in the spirit of Ward Cunningham’s key insight regarding wikis: namely the best way to ask a question is to share what you know and someone will surely correct you.

Besides poking around at this or that I’ve also been doing some [CTO coaching, and I wrote down a few of my frequently asked questions (or frequently encountered assertions)](http://laughingmeme.org/2018/11/12/what-im-up-to-tech-leadership/) in a companion piece.

### nh3

Talking with a friend earlier in the year about renewable energy got me interested in ammonia. Teaching myself about ammonia over the Summer was some of my favorite homework. It required me to get significantly more comfortable with chemistry than I’ve previously gotten.

So what’s interesting about ammonia? Ammonia hits a nice inflection point between energy density and straightforward transportation. It is caustic but not toxic, and doesn’t require being stored under high pressure or low temperatures or both like pure hydrogen.

That means you can use it as storage mechanism for renewables. This is important because the primary challenge of adding renewables to a large grid system is transforming the variable generation of renewables into something that provides a consistent baseload. This approach is being used in Eemshaven, NL, where they’re generating ammonia from renewables and then using it to fire a CNG gas power station (a CCGT). (see more in this [ISPT P2A report](http://www.ispt.eu/media/ISPT-P2A-Final-Report.pdf))

That said once we’re using ammonia as a natural gas alternative, that naturally leads to looking at it as a carbon free fuel. (carbon free as opposed to the carbon neutral of biofuels where you’re capturing and then releasing carbon in roughly proportional amounts) Electrification is going to have to drive a huge amount of our adoption of renewables. With spectacular growth curves in the efficiency and cost of photovoltaic solar and li-on batteries for a large number of applications the electrification story is pretty straightforward. Still batteries are problematic for a few reasons from concerns around energy density that make application like flight challenging, to concerns around cobalt’s mining conditions and the water consumption of producing lithium. Additionally electrification tends to be inefficient for applications where our interest is in heat vs energy, e.g. cement and steel production. Of course if you don’t want the heat, you can always just exploit ammonia for its properties of being a stable transport medium for hydrogen, and then crack the hydrogen and use it in a fuel cell for example.

Additionally large scale electrification of a modern economy really requires having a modern grid, which seems likely in places like Europe (e.g. the UK grid is apparently very modern and has allowed them to build a flexible marketplace on top of it), but in the U.S. I’m less optimistic, which means that having carbon free energy dense storage technology gets doubly interesting. (people are also experimenting with all sorts of fascinating energy storage technologies, e.g. various kinetic storage schemes, which are cool, but less portable)

Ammonia production has some nice properties when it comes to bootstrapping. While the existing demand for ammonia for energy is functionally non-existent, ammonia itself is the 2nd most commonly produced chemical by our human civilization. (after sulfuric acid) It’s an important chemical feedstock, it’s used in explosive production, and about 80% of it is currently used as fertilizer. That means you’ve got an existing commodity market that you can sell ammonia into anywhere in the world. (though about 70% of all ammonia is produced on location for where it will be used)

Essentially all commercial scale ammonia production is current done via the Haber-Bosch process. Haber-Bosch combines hydrogen from natural gas and nitrogen from the air, and then burns more natural gas to super heat it under pressure. Globally we spend about 2% of our energy producing ammonia with Haber-Bosch, which accounts for 4% of our CO2 admissions, about 4% of our consumption of natural gas, and a currently unknown amount of methane making it into the atmosphere. Synthetic ammonia as the underpinning of the modern agricultural system has both been responsible for a huge amount of our success feeding people in the last 100 years, and is also has a large number of problems, but that’s a different conversation.

That said if you’re looking at ammonia as a clean energy technology you wouldn’t want to use Haber-Bosch. That said solid state ammonia production (SSAS) is one of several promising alternative production techniques. SSAS allows you to produce ammonia from energy (presumably renewable), air and water.

I spent a little while worrying about what happens when you have tankers of ammonia plying the seas, and then it was pointed out that nitrogen (and by extension ammonia and urea) excretion is a major biological activity of almost all animals. Minor spills of ammonia look like extra fish pee in the water. At higher densities you’re likely to see algae blooms, which can be problematic.

Btw bird poop is a much more water efficient method for flushing nitrogen than urine. Arguably this gave dinosaurs a huge advantage in the dry interiors of Pangea.

Burning ammonia doesn’t produce CO2 emissions, but it does release NOx, which is also a greenhouse gas, though less NOx than a gasoline engine, but still not awesome given the whole point of this exercise is to dramatically reduce GHGs. There is [research happening into catalysts that can support combustion while suppressing NOx](https://phys.org/news/2018-04-catalyst-ammonia-fuel.html). Still given what we’re learning about methane leaks and the potency of methane as a greenhouse gas a rapid move away from natural gas or a an overhaul of the current industry seems like a high impact way to impact temperatures over the short (30 year) time frame.

### indoor farming

Indoor farming is at its heart the question of how to you justify taking the most important input into farming, which also happens to be free, namely the energy from the Sun, and justify the cost of replacing it with a mix of energy inputs that have to be paid for or generated in some way.

I got interested in indoor farming earlier this year when I realized that I didn’t know how LEDs worked, largely prompted by my 4 year old asking me to explain how lightbulbs worked. After patiently listening to me explain the 200yr old technology of incandescent bulbs, she pointed out that none of the lights in her room worked the way I described. The [wikipedia page is good](https://en.wikipedia.org/wiki/Light-emitting\_diode), but the TL;DR hand wave is basically LEDs are photovoltaic solar cells turned upside down.

More interestingly LEDs are still an area of active research and improvement with key breakthroughs coming every few years allowing cheaper and more efficient production of a wide spectrum of light. (codified in the industries Moore’s Law equivalent, [Haitz’s Law](https://en.wikipedia.org/wiki/Haitz%27s\_law)). Assuming the LED curves continue plus clever tricks around which spectrums you emit (giving growth operations their characteristic bright pink glow) allows you to lower the energy input costs to the level that you’re at least within an order of magnitude on the costs. Without future improvements in LEDs this technology stays niche.

Assuming Haitz’s law continues then indoor farming has a number of interesting properties. Hydroponics (and in particular the systems developed by NASA for CELSS) allows 90% reductions in water and chemical inputs. Vertical farms can be built near dense urban environments saving the resources spent on transportation, and refrigeration, and improving food security. Given what we know about urban population explosion, especially in climates where humans couldn’t congregate before air conditioning figuring out how to do intensive low water farming is going to be critical.

Right now the consensus is that indoor farming can’t compete on a cost basis with industrial scale agriculture in the U.S. Which is why you’re seeing most of the players in the system treating their farms as part of a larger set of system design, with modern high communication direct to local consumer retail models. If see food as an input into an industrial system than the only thing that matters is cost. But information technology allows us to build alternative models. (and it isn’t like calories being too expensive is the heart of the food security issue, at least in the US)

Right now most of the indoor hyrdoponic farms are growing leafy greens because they have the lowest biomass, which means the lowest energy requirements. As the energy costs fall, plants with more biomass (root vegetables and berries coming soon) will be more viable.

Interestingly there is a talent crunch in an indoor gardening. As pot legalization spreads it’s pulling in the master grower talent that both indoor farms and greenhouses need. And while computers can do a lot to monitor known conditions in indoor farms, there is still a ton of learning to do about producing tasty food grown in warehouses and shipping containers. (e.g. simulating wind is a key step for getting a nice crunch to your vegetable, otherwise they’re all limp and bland)

### desalination

I grew up a Californian during decade long droughts in a rich community on the edges of an agricultural community and the Pacific Ocean, reading classic like Cadillac Desert. It seemed to me like water was a weighty and hard issue.

When I went looking it didn’t turn out to be that interesting an area of research. Reverse osmosis desalination works fine. So does multi-stage flashing. Technologies like CETO (wave powered desalination) are also cool.

Desalination currently takes about 3 kwh per cubic meter. The theoretical minimum limit is 1 kWh. A cubic meter is somewhere between 1.5-2x average household consumption here in NYC. 3 kwh is 15 times more electricity than we’re currently spending to supply fresh water to cities, given that average daily kwh per NYC household is about 20 kwh doesn’t seem like a huge lift. (also given that NYC avg cost per kwh is ridiculously high at $0.21, we’re talking about $0.60 a day)

This is all setting aside the problem of just stop flushing a huge amount of fresh water down the toilet, a comparatively easy to solve problem that runs into one of the largest unsolved issues facing any climate change work, namely that buildings are replaced very slowly.

Like so many things, I assumed the problem was still technical, but it isn’t.

### ipcc and carbon capture.

Everybody walked out of reading the IPCC document either freaked out or excited about the magical potential that carbon capture technology will save us. The models used by climate scientist assume BECCS (grow staggeringly large numbers of trees, so many trees that it fundamentally changes the dynamics around land use, specifically farm, and then burn them) but most geeks are excited by the more straightforward direct air carbon capture, probably due to its deus ex machina quality. [Carbon Engineering](http://carbonengineering.com/) in Vancouver actually has working prototypes and they’ve been amazingly transparent about their numbers, e.g. their paper [A Process for Capturing CO2 from the Atmosphere](https://www.cell.com/joule/fulltext/S2542-4351(18)30225-3). Short version, it isn’t there yet. But the longer version is a carbon tax is the absolutely minimum that we need to be able to accomplish within a policy framework to make carbon capture viable at scale, it isn’t even controversially, and seeing Washington’s initiative lose last week gives you a hint of how much work we have.