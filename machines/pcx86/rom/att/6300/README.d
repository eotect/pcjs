---
layout: page
title: AT&amp;T 6300 ROM BIOS
permalink: /devices/pcx86/rom/att/6300/
---

AT&amp;T 6300 ROM BIOS
----------------------

[BIOS-143.json](BIOS-143.json) is JSON-encoded dump of the ROM images (BIOS143E.BIN and BIOS143O.BIN) obtained from
the [AT&amp;T 6300 Shrine](https://sites.google.com/site/att6300shrine/Home/downloads) website.  

The dump was produced by running [FileDump](/modules/filedump/) to merge the even and odd portions (8Kb each)
to produce a single 16Kb ROM image:

	filedump --file=archive/BIOS143E.BIN --merge=archive/BIOS143O.BIN --output=BIOS-143.json --comments --format=bytes

NOTE: This ROM is apparently identical to the ROM used in the [Olivetti M24](/devices/pcx86/rom/olivetti/m24/).
