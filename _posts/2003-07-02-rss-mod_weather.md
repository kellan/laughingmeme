---
id: 503
title: 'RSS mod_weather'
date: '2003-07-02T11:10:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=503'
permalink: /2003/07/02/rss-mod_weather/
typo_id:
    - '501'
mt_id:
    - '947'
link_related:
    - ''
raw_content:
    - "<p>\r\nWhile waiting for interminable parade of yuppie to collect their stream of wet/dry/half-caf/whatever espresso drinks from the coffee shop, (come on people!  life is too short to order anything other then \\\"coffee, black\\\") I had an idea, and scribbled a few notes down on a napkin. (I think thats the first time I\\'ve ever done that napkin thingy)\r\n</p>\r\n<p>\r\nIts not really a very exciting idea, but what I was thinking about was an RSS namespace for describing weather syndication.  Not much use with the current crop of aggregators, but the next gen like <a href=\\\"http://newsmonster.org\\\">Newsmonster</a>, and <a href=\\\"http://www.fondantfancies.com/shrook/\\\">Shrook</a> give you much greater access to items outside the core. (and then of course there is the radical idea of using RSS for inter-website syndication!)\r\n</p>\r\n<p>\r\nAs I started thinking about it, I decided that weather doesn\\'t really fit neatly into one namespace, but wants 3 namespaces:  weather, forecast, and storm.\r\n</p>\r\n\n<p>\r\nI know that seems kind of excessive, and its possible they could be rolled into a single namespace, but I think a nice hybrid spec, that clearly laid out the relationship between the namespaces, and defined some common practice for temperature and such (more on that later) wouldn\\'t really be too complicated.\r\n</p>\r\n<p>\r\nAnd looking at the data weather reports really come in 3 separate types: current conditions, forecasts, and hazardous weather/storm warnings.\r\n</p>\r\n<p>\r\n<h3>weather:  Current Conditions</h3>\r\nweather: might include:\r\n<ul>\r\n<li> sky - a prose description of current conditions</li>\r\n<li> temp - the current temperature</li>\r\n<li> humidity - the percent humidity</li>\r\n<li> windspeed - wind speed</li>\r\n<li> dewpoint - another temperature</li>\r\n<li> heatindex - relative heat, another temp</li>\r\n<li> windchill - relative cold, another temp.</li>\r\n</li> visibility</li>\r\n</ul>\r\n(Did I forget any?)\r\n</p>\r\n<p>\r\n<h3>It\\'s Raining Furlongs</h3>\r\nOne of the first things you notice with weather is people (ahem, the U.S.) like to use their annoying, region specific measurements.  Are temperatures in Fahrenheit or Celsius?  Is windspeed miles per hour?  kilometers per hour? knots?\r\n</p>\r\n<p>\r\nSometimes visibility is noted as \\\"10 miles\\\", other times as \\\"very good\\\".\r\n</p>\r\n<p>\r\nTo paraphrase <a href=\\\"http://archive.develooper.com/datetime@perl.org/msg00009.html\\\">Rich Bowen</a>, \\\"The person who came up with [this system] needs to be taken out an beaten with a yardstick\\\".\r\n</p>\r\n<p>\r\nThere are a number of potentially complex solutions we could come up with, involving sub-elements, or attributes, or what not, but I thought the easiest would be to require measurements of temperature and distance to be marked unambiguously.  So valid temps are 32F or 5C, and a valid windspeed is 13MPH.\r\n</p>\r\n<p>\r\nOne nice thing is none of these scales are all that hard to convert between, but if for example you\\'re going to calculate windchill, you\\'ll need to make sure you know if you\\'re working in Farenheit & miles, or celcius and kilometers.\r\n</p>\r\n<p>\r\n<h3>forecast:  Is it going to rain on Tuesday?</h3>\r\nForecast will generally be simpler as there is rarely much info available, still any element from current should be valid in forecast.  The idea behind having forecast in a separate namespace is two-fold; forecast has a slightly different set of date, and it provides a simple way to determine whether one is talking about now or the future.\r\n</p>\r\n<p>\r\nForecast adds to the elements defined in weather\r\n<ul>\r\n<li> period - prose description, \\\"Today\\\", \\\"Thursday\\\", \\\"Tuesday Night\\\"</li>\r\n<li> date - the day the forecast is for\r\n\tshould one be able to represent a range of dates here?\r\n\toften you\\'ll see something like \\\"Monday Night - Friday, Partly Cloudy\\\"</li>\r\n<li> hi - forecasted high/max temperature for a period</li>\r\n<li> lo - forecasted lo/min temp for a period</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<h3>Storm</h3>\r\nI haven\\'t really thought about the Storm namespace yet.  The data hear is most radically different then the other two, and I haven\\'t spent enough time looking at it to determine if there is an underlying set of structured data we can extract or not.  But I think something good can be done.\r\n</p>\r\n<p>\r\n<h3>Good idea?</h3>\r\nWhat do you think, seem like a good idea?  Sound interesting? Did I miss something obvious?\r\n</p>\r\n<p>\r\n<b>update [2003/7/2]:</b> Phil pointed out a prototype XML weather service for Medford Country, OR.  Very high quality of data. <a href=\\\"/weather-rss/nws_weather.xml\\\">Example output</a>.  Too bad this isn\\'t more widely available.\r\n</p>\r\n<p>\r\n<b>update [2003/7/3]:</b> Quicktopic <a href=\\\"http://www.quicktopic.com/em/H/aZRarGycKBuyE\\\">discussion on mod_weather</a>\r\n</p>"
tags:
    - design
    - rss
    - weather
---

While waiting for interminable parade of yuppie to collect their stream of wet/dry/half-caf/whatever espresso drinks from the coffee shop, (come on people! life is too short to order anything other then “coffee, black”) I had an idea, and scribbled a few notes down on a napkin. (I think thats the first time I’ve ever done that napkin thingy)

Its not really a very exciting idea, but what I was thinking about was an RSS namespace for describing weather syndication. Not much use with the current crop of aggregators, but the next gen like [Newsmonster](http://newsmonster.org), and [Shrook](http://www.fondantfancies.com/shrook/) give you much greater access to items outside the core. (and then of course there is the radical idea of using RSS for inter-website syndication!)

As I started thinking about it, I decided that weather doesn’t really fit neatly into one namespace, but wants 3 namespaces: weather, forecast, and storm.

I know that seems kind of excessive, and its possible they could be rolled into a single namespace, but I think a nice hybrid spec, that clearly laid out the relationship between the namespaces, and defined some common practice for temperature and such (more on that later) wouldn’t really be too complicated.

And looking at the data weather reports really come in 3 separate types: current conditions, forecasts, and hazardous weather/storm warnings.

### weather: Current Conditions

weather: might include: - sky – a prose description of current conditions
- temp – the current temperature
- humidity – the percent humidity
- windspeed – wind speed
- dewpoint – another temperature
- heatindex – relative heat, another temp
- windchill – relative cold, another temp.
 visibility 
(Did I forget any?) ### It’s Raining Furlongs

One of the first things you notice with weather is people (ahem, the U.S.) like to use their annoying, region specific measurements. Are temperatures in Fahrenheit or Celsius? Is windspeed miles per hour? kilometers per hour? knots? Sometimes visibility is noted as “10 miles”, other times as “very good”.

To paraphrase [Rich Bowen](http://archive.develooper.com/datetime@perl.org/msg00009.html), “The person who came up with \[this system\] needs to be taken out an beaten with a yardstick”.

There are a number of potentially complex solutions we could come up with, involving sub-elements, or attributes, or what not, but I thought the easiest would be to require measurements of temperature and distance to be marked unambiguously. So valid temps are 32F or 5C, and a valid windspeed is 13MPH.

One nice thing is none of these scales are all that hard to convert between, but if for example you’re going to calculate windchill, you’ll need to make sure you know if you’re working in Farenheit &amp; miles, or celcius and kilometers.

### forecast: Is it going to rain on Tuesday?

Forecast will generally be simpler as there is rarely much info available, still any element from current should be valid in forecast. The idea behind having forecast in a separate namespace is two-fold; forecast has a slightly different set of date, and it provides a simple way to determine whether one is talking about now or the future. Forecast adds to the elements defined in weather

- period – prose description, “Today”, “Thursday”, “Tuesday Night”
- date – the day the forecast is for should one be able to represent a range of dates here? often you’ll see something like “Monday Night – Friday, Partly Cloudy”
- hi – forecasted high/max temperature for a period
- lo – forecasted lo/min temp for a period

### Storm

I haven’t really thought about the Storm namespace yet. The data hear is most radically different then the other two, and I haven’t spent enough time looking at it to determine if there is an underlying set of structured data we can extract or not. But I think something good can be done. ### Good idea?

What do you think, seem like a good idea? Sound interesting? Did I miss something obvious? **update \[2003/7/2\]:** Phil pointed out a prototype XML weather service for Medford Country, OR. Very high quality of data. [Example output](/weather-rss/nws_weather.xml). Too bad this isn’t more widely available.

**update \[2003/7/3\]:** Quicktopic [discussion on mod\_weather](http://www.quicktopic.com/em/H/aZRarGycKBuyE)