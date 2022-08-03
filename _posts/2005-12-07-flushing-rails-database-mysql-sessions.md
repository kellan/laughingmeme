---
id: 3146
title: 'Flushing Rails Database (MySQL) Sessions'
date: '2005-12-07T13:40:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3146'
permalink: /2005/12/07/flushing-rails-database-mysql-sessions/
typo_id:
    - '3144'
mt_id:
    - ''
link_related:
    - ''
raw_content:
    - "I use Rails\\' [database session backend](http://wiki.rubyonrails.com/rails/pages/HowtoChangeSessionStore) for [LM](http://laughingmeme.org). (for login, as well as [\\\"flash\\\"](http://api.rubyonrails.com/classes/ActionController/Flash.html))  Without any sort of built in garbage collection the sessions table gets **very** large, very quickly.  Beyond aesthetic issues, this can also cause MySQL\\'s key buffer to fill up. (which on Debian is by default set quite low)\r\n\r\nSo I wrote up a quick flush method, and saved it in a file `models/session.rb`.\r\n\r\n    class CGI::Session::ActiveRecordStore::Session\r\n      def self.flush_old_empty_sessions\r\n         self.delete_all \\\"DATE_SUB(NOW(),INTERVAL 6 HOUR) > \r\n         updated_at and BIT_LENGTH(data) <= 688\\\"\r\n      end\r\n    end\r\n\r\nThis says nuke all sessions which are over 6 hours old, and which are empty.  (688 is the length of the serialized session with an empty flash)\r\n\r\nMySQL specific, and susceptible to changes in either session structure or its serialization.  But it was quick and easy and worked for me.\r\n\r\nThen you simply need a cron job like: `ruby script/runner  \\'CGI::Session::ActiveRecordStore::Session.flush_old_empty_sessions\\'`"
tags:
    - Code
    - cron
    - hacking
    - mysql
    - rails
    - typo
---

I use Rails’ \[database session backend\](http://wiki.rubyonrails.com/rails/pages/HowtoChangeSessionStore) for \[LM\](http://laughingmeme.org). (for login, as well as \[“flash”\](http://api.rubyonrails.com/classes/ActionController/Flash.html)) Without any sort of built in garbage collection the sessions table gets **very** large, very quickly. Beyond aesthetic issues, this can also cause MySQL’s key buffer to fill up. (which on Debian is by default set quite low)

So I wrote up a quick flush method, and saved it in a file `models/session.rb`.

```
class CGI::Session::ActiveRecordStore::Session
  def self.flush_old_empty_sessions
     self.delete_all "DATE_SUB(NOW(),INTERVAL 6 HOUR) > 
     updated_at and BIT_LENGTH(data) <= 688"
  end
end

```

This says nuke all sessions which are over 6 hours old, and which are empty. (688 is the length of the serialized session with an empty flash)

MySQL specific, and susceptible to changes in either session structure or its serialization. But it was quick and easy and worked for me.

Then you simply need a cron job like: `ruby script/runner  'CGI::Session::ActiveRecordStore::Session.flush_old_empty_sessions'`