
## Mbrola suite

This repository contains all materials for running [Mbrola-based](https://github.com/numediart/MBROLA) English text-to-speech engine.
Since Mbrola isn't a complete TTS engine , you need a text-to-phone preprocessor.
The Freespeech utility is one of the quite sutable choices for this,
Mbrola in conjunction with it gives rather good output.
Both packages present here with their complete sources and all necessary patches, as well as with the EN1 voice.

### Licenses

* Mbrola is distributed under the terms of GNU AFFERO GENERAL PUBLIC LICENSE ver. 3
* Freespeech is distributed under the terms of 		    GNU GENERAL PUBLIC LICENSE ver. 1

### Versions of the original packages

__Mbrola:__

Date:   Thu Aug 1 13:54:40 2019 +0200

commit: a95253691258a00f0c25f549443025b5ca589f76

__freespeech:__ a10m

### Requirements and compilation

Besides the quite usual packages gcc and make,
you need libgdbm-dev (as it is called in Debian and Ubuntu).
To compile this software just run "make" in the main directory,
after that you will get the result in out/.

If you would like to install the software,
run "make PREFIX=/usr/loca install".
Please replace the "/usr/local" string with the value whatever you want.
