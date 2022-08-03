---
id: 256
title: 'Debian/Linux and a Canon S230'
date: '2003-01-02T17:45:26+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=256'
permalink: /2003/01/02/debianlinux-and-a-canon-s230/
typo_id:
    - '254'
mt_id:
    - '264'
link_related:
    - ''
raw_content:
    - "<p>\r\nGot a little time to play with my new camera today, a Canon PowerShot S230 Elph.  I think there are still\r\nabout 300 features I don\\'t understand (what is the mic for?), but I\\'m starting\r\nto get a grasp on it.  So far photos are turning out with about 50% consistency,\r\nbut I hope to improve.  Also finally downloaded pictures to my laptop successfully.\r\n</p>\r\n<p>\r\n<h3>Tips so far for syncing the Canon S230 with my Debian Vaio.</h3>\r\n</p>\r\n<ol>\r\n<li>Use <a href=\\\"http://www.gphoto.org\\\">gPhoto</a>, it seems to be what people use, and it works well.\r\n<li>The S230 <b>is</b> supported!  For almost a whole month!  gphoto2 2.1.1 is \r\n<a\r\nhref=\\\"http://marc.theaimsgroup.com/?l=gphoto&m=103878304219580&w=2\\\">\r\nfull of stocking stuffers</a>.\r\n\r\n<li>However, it hasn\\'t hit Debian <code>testing</code> yet, so I had to figure out\r\nthe <code>--target-release</code> option to apt-get; \r\n<code>apt-get -t unstable install gphoto2</code> worked for me.\r\n\r\n<li>If the auto-detect isn\\'t working (<code>gphoto2 --auto-detect</code>), you\r\nmight want to make sure that your USB module is loaded (<code>modprobe\r\nuhci</code>), and mount your device filesystem (<code>mount -t usbdevfs usb\r\n/proc/bus/usb</code>).  This is all documented in  <a\r\nhref=\\\"http://gphoto.sourceforge.net/doc/manual/permissions-usb.html\\\">gphoto2\\'s\r\nexcellent manual</a>, which we aren\\'t all smart enough to read first.\r\n</ol>\r\n</p>\r\n<h3>Next Steps</h3>\r\n\r\ngPhoto strongly recommends \r\n<a href=\\\"http://linux-hotplug.sourceforge.net/\\\">\r\nhotplug</a> for USB permissions management.\r\n</p>\r\n<p>\r\nAnyone have a recommendation for a digital photo library tool?  Something like\r\niPhoto?  Probably most of my photos will end up on a webserver with <a\r\nhref=\\\"http://gallery.sf.net\\\">gallery</a>, but it would be nice to have something\r\nlocal.\r\n</p>\r\n<p>\r\nMaybe if you\\'re lucky I\\'ll upload my sepiaed, panoramic shots of our drooping Douglas Fir later tonight. \r\n</p>"
tags:
    - debian
---

Got a little time to play with my new camera today, a Canon PowerShot S230 Elph. I think there are still about 300 features I don’t understand (what is the mic for?), but I’m starting to get a grasp on it. So far photos are turning out with about 50% consistency, but I hope to improve. Also finally downloaded pictures to my laptop successfully.

### Tips so far for syncing the Canon S230 with my Debian Vaio.

1. Use [gPhoto](http://www.gphoto.org), it seems to be what people use, and it works well.
2. The S230 **is** supported! For almost a whole month! gphoto2 2.1.1 is [full of stocking stuffers](http://marc.theaimsgroup.com/?l=gphoto&m=103878304219580&w=2).
3. However, it hasn’t hit Debian `testing` yet, so I had to figure out the `--target-release` option to apt-get; `apt-get -t unstable install gphoto2` worked for me.
4. If the auto-detect isn’t working (`gphoto2 --auto-detect`), you might want to make sure that your USB module is loaded (`modprobeuhci`), and mount your device filesystem (`mount -t usbdevfs usb/proc/bus/usb`). This is all documented in [gphoto2’s excellent manual](http://gphoto.sourceforge.net/doc/manual/permissions-usb.html), which we aren’t all smart enough to read first.

### Next Steps

gPhoto strongly recommends [hotplug](http://linux-hotplug.sourceforge.net/) for USB permissions management.

Anyone have a recommendation for a digital photo library tool? Something like iPhoto? Probably most of my photos will end up on a webserver with [gallery](http://gallery.sf.net), but it would be nice to have something local.

Maybe if you’re lucky I’ll upload my sepiaed, panoramic shots of our drooping Douglas Fir later tonight.