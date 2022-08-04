---
id: 5287
title: 'AWS Redshift: "Missing newline: Unexpected character 0x4f found at location 3"'
date: '2014-07-21T08:06:30+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=5287'
permalink: /2014/07/21/aws-redshift-missing-newline-unexpected-character-0x4f-found-at-location-3/
categories:
    - Uncategorized
---

I was trying to bulk load some data into Redshift this weekend using the `copy` command and I got this error message that no amount of Googling turned up a hit for. It was particularly strange given the hex value specified was for that exotic character the capital-O (as is OMG).

`stl_load_errors` listed the offending `raw_line` as being “.LZO”.

Anyway, this particular error message is documented here for the next person who forgets to toss `lzop` on to end of their `copy` command and tries to Google it

to be explicit you’ve got:

`copy some_table from 's3://some_bucket/data.lzo' CREDENTIALS 'some_credentials' delimiter '\s' timeformat 'auto';`

and you need

`copy some_table from 's3://some_bucket/data.lzo' CREDENTIALS 'some_credentials' delimiter '\s' timeformat 'auto' lzop;`