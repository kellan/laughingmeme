---
id: 3585
title: 'Looking at PHP5s DateTime and DateTimeZone'
date: '2007-02-27T16:47:09+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/02/27/looking-at-php5s-datetime-and-datetimezone/'
permalink: /2007/02/27/looking-at-php5s-datetime-and-datetimezone/
categories:
    - Uncategorized
tags:
    - calendaring
    - Code
    - datetime
    - Longer
    - olson
    - php
    - php5
    - timezone
---

Looking over the [PHP5.2 changelog](http://www.php.net/ChangeLog-5.php) I noticed that somewhere along the way PHP5 seems to have picked up a provocatively named pair of classes, DateTime and DateTimeZone.

There is something fundamentally brash, brazen even, to releasing a class named DateTime. As a calendar geek I imagine upon seeing “new DateTime()” I feel something akin to what an old thespian feels when they see a company putting on a production of the Scottish play — it’s a decidedly mixed emotion. But I’m going to bump my way through learning how to use this new DateTime lib, bringing **all my preconceptions** about how it should work. The odds of this being interesting to you is probably nil unless you’re in one or two very small cliques, feel free to read on, or browse away.

I’m primarily working in PHP4 right now, so my first step was to grab a copy of [MAMP 1.5b](http://www.mamp.info/en/home.php) getting me a nice PHP5.2 sandbox to play with.

The new objects are [documented here](http://www.php.net/manual/en/ref.datetime.php), apparently there are functional equivalents for each of the object methods, and they use the [PECL timezomedb](http://pecl.php.net/package/timezonedb/).

Hey! timezonedb! First fence cleared! A timezone database compiled into a native format based on Olson is the *one true solution*, and I can update it independently, the most recent release being based on 2007b. Sweet.

[Constructor](http://php.net/manual/en/function.date-create.php) takes an initialization string that it passes to [strtotime()](http://php.net/manual/en/function.strtotime.php), and an optional DateTimeZone obj. Defaults to “now”

```
$date = new DateTime();
echo $date . "\n";
> Object of class DateTime could not be converted to string 

```

Oops, no `__toString()` method defined. You’ll need to use the `format()` instance method. If you end up using the DateTime objects, you’ll be seeing a lot of `format()`, more on that in a bit.

`format()` uses the [date() formatting strings](http://php.net/manual/en/function.date.php) (not the `strftime` format strings). Also takes a number of useful constants, most usefully your pal and mine RFC3339 (aka W3CDTF aka Dublin Core/Atom date format).

```
echo $date->format(DATE_RFC3339) . "\n";
> 2007-02-22T15:23:47-05:00

```

Note: thats a constant, if you pass in the string ‘DATE\_RFC3339’, and you’ll get odd looking results.

Here we can see the default constructor sets both the time and a timezone — correctly, for the moment, identifying my timezone as `America/New_York`. That’s somewhat contentious behaviour, some people will tell you that dates with unspecified timezones should either be in UTC or be “floating”, divorced from any timezone. Why? At least in part because across platforms and boxes timezone guessing is going to be non-deterministic — the script that worked when you ran it locally on your Mac laptop in New York, might fail on your ISP’s servers. You get a hint of this reading over the timezone guessing rules on [`date_default_timezone_get`](http://php.net/date*default*timezone\_get). There is also the fact that I’m currently moving at about 400mph and will be in a different timezone real soon now. However you can set the default to something reasonable in a script, or in the php.ini. (consider this my recommendation)

```
date_default_timezone_set('UTC');
$date = new DateTime();
echo $date->format(DATE_RFC3339);
> 2007-02-22T20:44:49+00:00

```

Yay, that worked. Okay, but lets display that datetime in the local timezone. (after all the *point* of this entire exercise will be the ability to work painlessly in multiple timezones).

```
$date->setTimezone('America/New_York');
> DateTime::setTimezone() expects parameter 1 to be DateTimeZone

```

Siiiigh. Not smart enough to cast strings into TimeZone objects (holds true for the constructor as well, so no `new DateTime('now', 'UTC'))`. Now its time to learn how to use DateTimeZone.

### Working with DateTimeZone, All Hail Olson

I mentioned briefly earlier that PHP is now shipping with an extension timezonedb, which is a compiled version of the [Olson database](http://en.wikipedia.org/wiki/Zoneinfo). The Olson database is a massive, largely volunteer effort to catalog the various timezones both in use, and those that have been in the past. Time is a political issue, [particularly day light savings](http://laughingmeme.org/2005/04/04/daylight-saving-sucks-war-time/), and as such the rules governing it are arbitrary, whimsical, and subject to frequent change. (p.s. gotten a panicked memo yet about new daylight savings compliance for March 11th? No? Where did you say you worked?)

Note: Olson also uses a longer form of the zone names then we usually see in the U.S., this is to combat ambiguity. See [Appendix H](http://www.php.net/manual/en/timezones.php) for a list of timezone names, including some [handy shortcuts](http://www.php.net/manual/en/timezones.others.php).

```
$tz = new DateTimeZone('America/New_York');
$date->setTimezone($tz);
echo $date->format(DATE_RFC3339) . "\n";
> 2007-02-22T16:02:55-05:00

```

This is starting to get long winded, but, hey, PHP5 supports object dereferencing on returns. Maybe this will work.

```
echo $date->setTimezone($tz)->format(DATE_RFC3339) . "\n";
>  Call to a member function format() on a non-object

```

Nope. Oh well.

### Date vs Datetime?

Say I’ve got a nice platonic date, say November 11th. There is no time element associated with this, so timezones are kind of irrelevant. I mean Nov. 11th *starts* at different times through out the world, but Nov. 11th is universal. (as long as you’re using the same version of Gregorian as most of the rest of us) Ideally this date would float above timezone issues, but that isn’t how PHP does it, 2007-11-11 is treated internally as midnight on the 11th, which is certainly simpler, but disappointing. You can prove this like so:

```
$date = new DateTime('2007-11-11');
$date->setTimeZone($tz);
echo $date->format(DATE_RFC3339) . "\n";
> 2007-11-10T19:00:00-05:00

```

The other useful DateTimeZone method is getOffest()

```
echo $tz->getOffset($date); 
> -18000

```

### Daylight Saving, March 11th, and Why Programmers Are a Grouchy Lot

Note: `getOffset`, which returns a timezone’s offset in seconds from UTC, takes a DateTime obj because offsets can be date sensitive due to daylight savings. Really without daylight saving this stuff would all be pretty straightforward. Let’s test to make sure the offsets are correct at the boundary.

```
echo $tz_nyc->getOffset(new DateTime('2007-03-11 1:00')) . "\n";
echo $tz_nyc->getOffset(new DateTime('2007-03-11 2:00')) . "\n";
> -18000
> -14400

(-18000/(60*60) == -5 hours) 
(-14400/(60*60) == -4 hours) 

```

**Yay!** They got the memo about [U.S. Energy Policy Act of 2005](http://en.wikipedia.org/wiki/Energy*Policy*Act*of*2005).

### The Basics: Accessors and Mutators

So what are some other basic desires?

Get epoch seconds! Except for their kind of limited range epoch seconds are great, and have helped a generation of programmers put off worrying about timezones as long as possible. They’re also the backbone of PHP’s traditional date/time methods.

Alas, there isn’t an accessor method for getting epoch seconds, you’ll have to use `format()`.

In fact DateTime doesn’t expose **any** of the accessors you’d expect, so you’ll be using `format` a **lot** if you want to access pieces of your date. (for you know, display purposes, or manipulation, or building queries, or pretty much doing anything you’d want to do with a date)

examples of the `format()` as all purpose accessor pattern:

```
epoch:  $date->format('U'); // 1173596400
year:   $date->format('Y'); // 2007
month:  $date->format('n'); // 3
day:    $date->format('j'); // 11
dow:    $date->format('l'); // Sunday

```

… etc …

So now you have accessors for the full range of [date() formatting strings](http://php.net/manual/en/function.date.php). You just have to jump through a hope.

Pretty much the only accessor is `getTimezone()`

```
echo $date->getTimeZone();   // hope springs eternal!
> Object of class DateTimeZone could not be converted to string
echo $date->getTimeZone()->getName() . "\n";
> America/New_York

```

### Mutators

Speaking of accessors, DateTime is a little sparse on mutators as well: `setTime()`, `setDate()`, and the mysteriously named `setISODate()`.

```
$date->setDate('2007', '1', '1')->format(DATE_RFC3339);  // who am I kidding?
> Call to a member function format() on a non-object 
$date-> setDate('2007', '1', '1');
echo $date->format(DATE_RFC3339) . "\n";
> 2007-01-01T02:00:00-05:00

```

Now what if I want to set just the day?

Maybe

```
$date-> setDate(null, null, '11');
echo $date->format(DATE_RFC3339) . "\n";
> -001-12-11T02:00:00-05:00

```

Nope.

Instead you’ll need to pull out the year and month (using our `format()` accessors) and pass those back in just to set the day.

```
$date-> setDate('2007', '1', '1');   // jan 1.  
$date->setDate($date->format('Y'), $date->format('n'), 11);
echo $date->format(DATE_RFC3339) . "\n"; 

```

Clunky.

`setTime()` works the same, but for time.

e.g. Setting just the minutes, 33 minutes past, but keep hours, and seconds constant:

```
$date->setTime($date->format('G'), 33, $date->format('s'));
echo $date->format(DATE_RFC3339) . "\n"; 
> 2007-01-11T02:33:00-05:00

```

So what is an ISODate? I’m unclear, and so is PHP’s documentation. The docs show the call signature taking a $year, $week, and optional $day, while the description talks about $year, $month, $day. Looking at the code looks like $week is the proper call, $month is cut and paste error from `setDate()`. So I guess this is a method for setting day by the “week of the year” a concept more popular in Europe then in the US. Not sure what ISO has to do with it. So what is our current week of the year?

```
echo $date->format('N') . "\n";  // 'N' is new in 5.1.0
> 4 

```

Jan 11th was in the 4th week of the 2007? Go figure.

```
$date->setISODate(2007, 4, 5);  // fifth day of the 4th week?
echo $date->format(DATE_RFC3339) . "\n";
> 2007-01-26T02:33:00-05:00

```

Um. You know what? You’re on your own with `setISODate`, sorry.

### Date Math: Adding and Subtracting Deltas aka $date-&gt;modify($str)

PHP5 for better or worse has very limited operator overloading, so no $dt1 + $dt2 \* $dt3 / $dt4. Instead the primary method for doing math is `modify()`

Thankfully PHP’s `strtotime()` method is a gem, and one of the things it handles is relative dates. `strtotime()` + relative dates is the secret to doing math with PHP5’s DateTime.

Lets get a basic date to start with:

```
$date = new DateTime('today');
echo $date->format(DATE_RFC3339) . "\n";
> 2007-02-22T00:00:00+00:00

```

**Note:** `modify()` is destructive. It changes the original datetime object (as the name suggests). You’ll need to jump through some hopes to keep a copy of your original date. More later.

Add/subtract N days:

```
foreach (range(1,10) as $n) {
   $date->modify("+1 days");
   echo $date->format("Y-m-d") . "\n";
}

> 2007-02-23
> 2007-02-24
> 2007-02-25
> 2007-02-26
> 2007-02-27
> 2007-02-28
> 2007-03-01
> 2007-03-02
> 2007-03-03
> 2007-03-04

$date->modify("-10 days");
echo $date->format("Y-m-d") . "\n";

> 2007-02-22

$date->modify("-1 month");
echo $date->format("Y-m-d") . "\n";
> 2007-01-22
// or alternately
$date->modify("1 month ago");
echo $date->format("Y-m-d") . "\n";
> 2006-12-22

```

### Cloning DateTime objects to work around `modify`

Of course you **usually** want to keep the original when doing date math, so `modify()`‘s lack of idempotentce is annoying. Lets say I’m building a SQL query to select events happening in the next 7 days.

In an **ideal** world the code would like this:

```
$start = new DateTime('today');
$end = $start + 7;
echo "select between " . $start->format('Y-m-d') . " and " . $end->format('Y-m-d') . "\n";

```

The above of course is just a pipe dream. But wouldn’t it be nice?

I’d settle for:

```
$end = $start->calc("+7 days");

```

Or even:

```
$end = $start->clone->modify('+7 days');

```

None of the above examples remotely work.

Instead use:

```
$start = new DateTime('today');
$end = clone $start;
$end->modify('7 days 3 minutes 42 seconds ago');

```

Now format our SQL query for our example:

```
echo "select between " . $start->format(DATE_RFC3339) . " and " . $end->format(DATE_RFC3339) . "\n";
> select between 2007-02-22T00:00:00+00:00 and 2007-02-14T23:56:18+00:00

```

Awkward, but it gets the job done.

At least the relative date format is super flexible and expressive. As far as I know the closest thing to documentation is from the [GNU tar manual on date input formats](http://www.gnu.org/software/tar/manual/html*node/tar*109.html). (just like CVS) Btw. if you ever want nightmares, take a look at the `scan` method in PHP’s parse\_date.c and be thankful that isn’t your job to maintain ![:)](http://lm.local/wp-includes/images/smilies/simple-smile.png)

### Date Math: Comparison and Differences

Beyond adding deltas (“+7 days”), the other common date math is comparing two datetimes, to find out which is more recent, and getting the difference between them. DateTime supports no methods for comparing two datetimes. The simplest solution for doing comparison is to compare epoch seconds.

**Note:** This method only works for dates that can be represented by epoch seconds. PHP uses a signed int for epoch seconds, so the range is limited by the size of the max int on your platform. Generally you get approximately 138 years, 1901 to 2038. There are other schemes besides epoch seconds for mapping dates to an easily comparable number; [MJDs](http://en.wikipedia.org/wiki/Julian\_day), and [Tai time](http://cr.yp.to/proto/utctai.html) being two. See also *Rheingold &amp; Dershowitz 1997*

```
$d1 = new DateTime("today");
$d2 = new DateTime("tomorrow");
if ($d1->format('U') < $d2->format('U')) {
   echo "true\n";
} 
> true

```

If you’re going to be comparing a large number of dates you might consider a memoization technique like the [Schwartzian transform](http://en.wikipedia.org/wiki/Schwartzian\_transform).

We can get the difference in seconds using the same hack of casting to epochs.

```
echo $d2->format('U') - $d1->format('U') . "\n";
> 86400

```

Ideally we’d then divide the difference seconds to get the difference in hours, days, weeks, or months. However the following naive solution **won’t** work.

```
$diff / (60*60*24);  // calculate difference in days, **BADLY**

```

Why not? Because days don’t always have 24 hours. Sometimes they have 23 hours, sometimes they have 25. Daylight saving strikes again. (If you want to be even more pedantic, minutes are also not 60 seconds long, sometimes they’re 61 seconds long if we have a leap second)

Basically you need to break yourself of thinking of datetime units as being fungible. You can’t simply calculate minutes from seconds, or days from hours. Just like you can’t divide days by 30 to get an accurate number of months. There are solutions, but they’re a bit beyond this blog post.

### new DateTime from Epoch Seconds

So, **non-fungible**, remember that.

But sometimes you’ve cast DateTimes down to epochs to do math. And then you’ll want to cast back to a DateTime.

Alas DateTime doesn’t have a constructor that takes an epoch, and passing a epoch to the default constructor will throw an exception, rather you want:

```
$from_epoch = new DateTime(date('c', '-568080000'));
echo $from_epoch->format('Y-m-d') . "\n";
> 1952-01-01   // expected result

```

### Conclusions

DateTime/DateTimeZone get timezones right, and for solving that hard problem they deserve all possibles accolades.

The rest of the API however is kind of simplistic, awkward to work with, and verbose.

Single most useful change: have DateTime methods actually return the object making it possible to use a slightly more abbreviated calls.

I had thought about writing up a few more recipes, like nth dow of the month, and such. But we were coming in for descent, and it was time to be done. Might happen in the future.

Also if anyone has any power to **enhance** the DateTime object, I hope some of the above can act as a road map for a more expressive and powerful core library. Or ping me, happy to chat.