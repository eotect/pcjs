---
layout: page
title: IBM Color Graphics Adapter (CGA)
permalink: /devices/pcx86/video/ibm/cga/
---

IBM Color Graphics Adapter (CGA)
--------------------------------

### IBM CGA Configurations

The easiest way for a machine to include an CGA *[Video](/docs/pcx86/video/)* component in its XML configuration file
is to reference one of the project's predefined CGA configuration files, using the *ref* attribute; eg:

```xml
<video ref="/devices/pcx86/video/ibm/cga/ibm-cga.xml"/>
```

The referenced XML file automatically defines visual elements (eg, dimensions of the display window and other
visual indicators), display behaviors (eg, touchscreen support, mouse pointer locking), and the character ROM to load. 

Here's what *ibm-cga.xml* currently looks like:

```xml
<video id="videoCGA" screenWidth="1280" screenHeight="800" fontROM="/devices/pcx86/video/ibm/cga/ibm-cga.json" pos="center" padding="8px">
    <menu>
        <title>IBM Color Display</title>
        <control type="container" pos="right">
            <control type="led" label="Caps" binding="caps-lock" padleft="8px"/>
            <control type="led" label="Num" binding="num-lock" padleft="8px"/>
            <control type="led" label="Scroll" binding="scroll-lock" padleft="8px"/>
        </control>
    </menu>
</video>
```

The following IBM CGA configuration files are currently available:

- [ibm-cga.xml](ibm-cga.xml)
- [ibm-cga-dual.xml](ibm-cga-dual.xml)
- [ibm-cga-keygrid.xml](ibm-cga-keygrid.xml)
- [ibm-cga-lock.xml](ibm-cga-lock.xml)

### IBM CGA Character ROM

There is only one known CGA Character ROM ([ibm-cga.json](ibm-cga.json)), and it is identical to the MDA Character ROM,
because the ROM contains both the 8x14 MDA and 8x8 CGA fonts.

As documented in [Video.doneLoad()](/modules/pcx86/lib/video.js):

	[T]here are TWO CGA fonts in the ROM: a thin 5x7 "single dot" font located at offset 0x1000, and a thick 7x7
	"double dot" font at offset 0x1800.  The latter is the default font, unless overridden by a jumper setting on
	the CGA card, so it is our default CGA font as well (although someday we may provide a virtual jumper setting
	that allows you to select the thinner font).

For reference, here are the first 0x80 bytes at offset 0x1800 from this ROM, which contain the font data for the first
16 8x8 characters:

	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7E,0x81,0xA5,0x81,0xBD,0x99,0x81,0x7E, // 0x00001800 ........~......~
	0x7E,0xFF,0xDB,0xFF,0xC3,0xE7,0xFF,0x7E,0x6C,0xFE,0xFE,0xFE,0x7C,0x38,0x10,0x00, // 0x00001810 ~......~l...|8..
	0x10,0x38,0x7C,0xFE,0x7C,0x38,0x10,0x00,0x38,0x7C,0x38,0xFE,0xFE,0xD6,0x10,0x38, // 0x00001820 .8|.|8..8|8....8
	0x10,0x10,0x38,0x7C,0xFE,0x7C,0x10,0x38,0x00,0x00,0x18,0x3C,0x3C,0x18,0x00,0x00, // 0x00001830 ..8|.|.8........
	0xFF,0xFF,0xE7,0xC3,0xC3,0xE7,0xFF,0xFF,0x00,0x3C,0x66,0x42,0x42,0x66,0x3C,0x00, // 0x00001840 ..........fBBf..
	0xFF,0xC3,0x99,0xBD,0xBD,0x99,0xC3,0xFF,0x0F,0x07,0x0F,0x7D,0xCC,0xCC,0xCC,0x78, // 0x00001850 ...........}...x
	0x3C,0x66,0x66,0x66,0x3C,0x18,0x7E,0x18,0x3F,0x33,0x3F,0x30,0x30,0x70,0xF0,0xE0, // 0x00001860 .fff..~.?3?00p..
	0x7F,0x63,0x7F,0x63,0x63,0x67,0xE6,0xC0,0x18,0xDB,0x3C,0xE7,0xE7,0x3C,0xDB,0x18, // 0x00001870 .c.ccg..........
