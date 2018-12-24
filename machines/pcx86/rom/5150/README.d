---
layout: page
title: IBM PC Model 5150 ROMs
permalink: /devices/pcx86/rom/5150/
---

IBM PC Model 5150 ROMs
----------------------

IBM PC (Model 5150) BIOS ROMs include:

- [Model 5150: Apr 24, 1981](1981-04-24/PCBIOS-REV1.json) (included with [IBM BASIC C1.00](basic/BASIC100.json))
- [Model 5150: Oct 19, 1981](1981-10-19/PCBIOS-REV2.json) (included with [IBM BASIC C1.00](basic/BASIC100.json))
- [Model 5150: Oct 27, 1982](1982-10-27/PCBIOS-REV3.json) (included with [IBM BASIC C1.00](basic/BASIC100.json) *or* [IBM BASIC C1.10](../5160/basic/BASIC110.json))

In general, IBM BASIC ROM images are 32Kb and IBM BIOS ROM images are 8Kb, and together they provide 40Kb of contiguous
read-only memory, with the BASIC ROM spanning physical addresses 0xF6000-0xFDFFF and the BIOS ROM spanning addresses
0xFE000-0xFFFFF.

As hinted above, some newer Model 5150 machines with the **Oct 27, 1982** BIOS included IBM BASIC C1.10.  And
some even *newer* 5150 machines had a BIOS with a "1982" copyright year instead of "1981", which also changed the checksum
byte from 0x78 to 0x77.  However, the project includes only the original "1981" version, since the difference is trivial.

More information is available on the [IBM PC ROMs](../) page.
