
all: out/freephone out/mbrola

clean:
	rm -rf out freespeech.build mbrola.build

out/freephone:
	cp -r freespeech freespeech.build
	cp freespeech.make freespeech.build/Makefile
	make -C freespeech.build
	mkdir -p out
	cp freespeech.build/freephone out/freephone
	cp freespeech.build/lexicon.* out/

out/mbrola:
	cp -r mbrola mbrola.build
	make -C mbrola.build
	mkdir -p out
	cp mbrola.build/Bin/mbrola out/mbrola
