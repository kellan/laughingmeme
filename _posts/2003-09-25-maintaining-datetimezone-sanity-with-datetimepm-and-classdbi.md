---
id: 601
title: 'Maintaining Date/Timezone Sanity with DateTime.pm and Class::DBI'
date: '2003-09-25T15:33:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=601'
permalink: /2003/09/25/maintaining-datetimezone-sanity-with-datetimepm-and-classdbi/
typo_id:
    - '599'
mt_id:
    - '1242'
link_related:
    - ''
raw_content:
    - "<p>\r\nCalendaring can be a fraught and tricky business.  Probably doesn\\'t compare to building software to do precise robotic control of surgical tools (though I have a friend who worked for a summer putting Windows into operating rooms), or high volume real time transaction management, but its does have its pitfalls and tricks.\r\n</p>\r\n<p>\r\n<h3>The Case of the Missing Timezone</h3>\r\n\r\nA classic mistake when one sets out to write calendar software, particularly web calendar software, is to ignore timezones.  \\\"Now\\\" is treated as the current time on the web server, new events are added to the database without reference to the timezone of their creator.  And amazingly, by and large this will work, for a while.  Often your first set of users will be in your timezone, or thereabouts, perhaps you aren\\'t displaying hours, so it\\'s just a few hours early in the morning, and late at night when people notice your calendar is displaying the wrong date.\r\n</p>\r\n<p>\r\nProblems start to crop up as your audience becomes more international, or you start trying to add more time sensitive services.  So you try to retro-fit timezones, add them on.  And now you\\'re living in a world of pain.\r\n</p>\r\n<p>\r\n<h3>A Not So Hypothetical Example</h3>\r\n\r\nSay you\\'re running a web calendar off a server in your closest in Massachusetts, in a timezone affectionately if rather unprecisely known as Eastern time.  You have a user in Sydney who has been happily adding events, timezone free.  Now if you wanted to display the correct date for a given event to your users in Sydney you need to calculate the offset between the two locations.  Simple enough?  Is MA observing day light savings?  Is Sydney?  How about when the event was added? Any one of those questions can be annoying to answer, getting all 3 right, and collated... well trust me, it gets ugly quick.\r\n</p>\r\n<p>\r\n<h3>Yet Another Problem</h3>\r\n\r\nWhat happens when you move that server out of your closest to a colo off the coast of England?  All of a sudden you\\'ve switched from adding events in \\\"Eastern\\\" time to some British local time.  How do you know how to calculate the offsets now?  One solution I\\'ve seen (when I was working on a website for a certain very large PDA manufacturer who shall rename nameless) was to add a switch into the code:\r\n<pre>\r\n if (date < kDayWeMovedToColo) { ... } else { ... }\r\n</pre>\r\n</p>\r\n<p>\r\nThis problem can bite you even if you were clever enough to get your users setup with timezones from day one.\r\n</p>\r\n<p>\r\n<h3>A Simple Solution</h3>\r\n\r\nAfter all that hand wringing, and doom saying, you\\'ll be happy to know that the solution is simple.  Store all your dates in UTC (sometimes called GMT, sometimes called Zulu time); a zero offset time that doesn\\'t observe day light savings.  As added bonus a number of languages even support converting to GMT time, though many of them are broken. (PHP\\'s are, rumor has it so are C#\\'s, Java got it wrong for its first 3-4 versions)\r\n</p>\r\n<p>\r\n<h3>Some Code!</h3>\r\n\r\nAs Perl hackers we\\'ve got an advantage, we\\'ve got the best date/time library in any language I\\'ve ever seen, <a href=\\\"http://perl-date-time.sf.net\\\">DateTime.pm</a>, which just happens to have the most complete TimeZone implementation you\\'ve ever dreamed of. (if you\\'re a calendar geek, and dream about this stuff)\r\n</p>\r\n<p>\r\nAnd we\\'ve got Class::DBI, which as much as I\\'ve said some nasty things about it, has a few nice features in the db-to-object mapping sphere.\r\n</p>\r\n<p>\r\nI use a simple adapter class to handle my conversions to and from GMT, but a more proficient CDBI wizard could probably replace my class with a couple of code refs.\r\n</p>\r\n<p>\r\nIn your Class::DBI definitions you would add some code like:\r\n\r\n<pre>\r\n\r\nMyEvent->has_a(\r\n   start_date => \\'DateAdapater\\',\r\n   inflate => sub { DateAdapter->inflate(shift) },\r\n   deflate => \\'deflate\\'\r\n);\r\n\r\n</pre>\r\nWhere DateApapater looks like:\r\n\r\n<pre>\r\n\r\npackage DateAdapater;\r\nuse base qw(DateTime);\r\n# this is a DateTime::Format::DBI\r\n# which I haven\\'t figured out how to combine with cdbi\r\n#\r\nuse DateTime::Format::MySQL; \r\n\r\nsub inflate {\r\n  my ($class, $value) = @_;\r\n   my $dt = $class->parse($value);\r\n   # starts in \\'floating\\' tz\r\n   $dt->set_time_zone(\\'UTC\\');\r\n   return bless $dt, $class;\r\n}\r\n\r\nsub deflate {\r\n    my $dt = shift;\r\n    # convert to UTC\r\n    $dt->set_time_zone(\\'UTC\\');\r\n    return DateTime::Format::MySQL->format_datetime($dt);\r\n}\r\n\r\nsub parse {\r\n    my ($class, $value) = @_;\r\n    my $dt = eval { return DateTime::Format::MySQL->parse_datetime($value); };\r\n    if ($dt) { return $dt; }\r\n    else {\r\n       return DateTime->new(year => 1970);\r\n    }\r\n}\r\n\r\n</pre>\r\n</p>\r\n<p>\r\n<h3>A Few Things to Note</h3>\r\n\r\nMySQL\\'s datetime fields don\\'t maintain a concept of timezone, so DT creates them with a floating timezone.  Therefore casting them to UTC doesn\\'t change their settings for year, month, hour, etc.  DateTime objects coming in will presumably be set in the user\\'s timezone, therefore casting them to UTC will change their year, month, hour, etc fields, but the object will still refer to the exact same instant in time.\r\n</p>\r\n<p>\r\nLastly, you know you\\'ve been hacking Unix dates too long when you\\'re idea of an error message is to return some day in 1970.\r\n</p>\r\n<p>\r\n(Also it\\'s strikingly odd how much longer it takes to write a blog entry about some code, then to just write the code.  Noticed it for both this, and the timezone selector.   Need a code to blog adapter.)\r\n</p>"
tags:
    - calendaring
    - Code
    - datetime
    - Longer
    - perl
    - php
    - timezone
---

Calendaring can be a fraught and tricky business. Probably doesn’t compare to building software to do precise robotic control of surgical tools (though I have a friend who worked for a summer putting Windows into operating rooms), or high volume real time transaction management, but its does have its pitfalls and tricks.

### The Case of the Missing Timezone

A classic mistake when one sets out to write calendar software, particularly web calendar software, is to ignore timezones. “Now” is treated as the current time on the web server, new events are added to the database without reference to the timezone of their creator. And amazingly, by and large this will work, for a while. Often your first set of users will be in your timezone, or thereabouts, perhaps you aren’t displaying hours, so it’s just a few hours early in the morning, and late at night when people notice your calendar is displaying the wrong date.

Problems start to crop up as your audience becomes more international, or you start trying to add more time sensitive services. So you try to retro-fit timezones, add them on. And now you’re living in a world of pain.

### A Not So Hypothetical Example

Say you’re running a web calendar off a server in your closest in Massachusetts, in a timezone affectionately if rather unprecisely known as Eastern time. You have a user in Sydney who has been happily adding events, timezone free. Now if you wanted to display the correct date for a given event to your users in Sydney you need to calculate the offset between the two locations. Simple enough? Is MA observing day light savings? Is Sydney? How about when the event was added? Any one of those questions can be annoying to answer, getting all 3 right, and collated… well trust me, it gets ugly quick.

### Yet Another Problem

What happens when you move that server out of your closest to a colo off the coast of England? All of a sudden you’ve switched from adding events in “Eastern” time to some British local time. How do you know how to calculate the offsets now? One solution I’ve seen (when I was working on a website for a certain very large PDA manufacturer who shall rename nameless) was to add a switch into the code:

```

 if (date < kDayWeMovedToColo) { ... } else { ... }
```

This problem can bite you even if you were clever enough to get your users setup with timezones from day one.

### A Simple Solution

After all that hand wringing, and doom saying, you’ll be happy to know that the solution is simple. Store all your dates in UTC (sometimes called GMT, sometimes called Zulu time); a zero offset time that doesn’t observe day light savings. As added bonus a number of languages even support converting to GMT time, though many of them are broken. (PHP’s are, rumor has it so are C#’s, Java got it wrong for its first 3-4 versions)

### Some Code!

As Perl hackers we’ve got an advantage, we’ve got the best date/time library in any language I’ve ever seen, [DateTime.pm](http://perl-date-time.sf.net), which just happens to have the most complete TimeZone implementation you’ve ever dreamed of. (if you’re a calendar geek, and dream about this stuff)

And we’ve got Class::DBI, which as much as I’ve said some nasty things about it, has a few nice features in the db-to-object mapping sphere.

I use a simple adapter class to handle my conversions to and from GMT, but a more proficient CDBI wizard could probably replace my class with a couple of code refs.

In your Class::DBI definitions you would add some code like:

```


MyEvent->has_a(
   start_date => 'DateAdapater',
   inflate => sub { DateAdapter->inflate(shift) },
   deflate => 'deflate'
);

```

Where DateApapater looks like:

```


package DateAdapater;
use base qw(DateTime);
# this is a DateTime::Format::DBI
# which I haven't figured out how to combine with cdbi
#
use DateTime::Format::MySQL; 

sub inflate {
  my ($class, $value) = @_;
   my $dt = $class->parse($value);
   # starts in 'floating' tz
   $dt->set_time_zone('UTC');
   return bless $dt, $class;
}

sub deflate {
    my $dt = shift;
    # convert to UTC
    $dt->set_time_zone('UTC');
    return DateTime::Format::MySQL->format_datetime($dt);
}

sub parse {
    my ($class, $value) = @_;
    my $dt = eval { return DateTime::Format::MySQL->parse_datetime($value); };
    if ($dt) { return $dt; }
    else {
       return DateTime->new(year => 1970);
    }
}

```

### A Few Things to Note

MySQL’s datetime fields don’t maintain a concept of timezone, so DT creates them with a floating timezone. Therefore casting them to UTC doesn’t change their settings for year, month, hour, etc. DateTime objects coming in will presumably be set in the user’s timezone, therefore casting them to UTC will change their year, month, hour, etc fields, but the object will still refer to the exact same instant in time.

Lastly, you know you’ve been hacking Unix dates too long when you’re idea of an error message is to return some day in 1970.

(Also it’s strikingly odd how much longer it takes to write a blog entry about some code, then to just write the code. Noticed it for both this, and the timezone selector. Need a code to blog adapter.)