
all: freephone

freephone:
	patch -p1 < ../freespeech-a10m-x86_64.patch
	patch -p1 < ../freespeech-a10m-build.patch
	patch -p1 < ../freespeech-a10m-rp.patch
	make -C lib
	make -C src
	cp src/freephone .
	cp lib/lexicon.* .
