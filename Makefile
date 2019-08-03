
all: out/freephone out/mbrola

clean:
	rm -rf out freespeech.build mbrola.build

out/freephone:
	cp -r freespeech freespeech.build
	cp freespeech.make freespeech.build/Makefile
	make -C freespeech.build
	mkdir -p out
	cp freespeech.build/freephone out/freephone

out/mbrola:
	cp -r mbrola mbrola.build
	make -C mbrola.build
	mkdir -p out
	cp mbrola/bin/mbrola out/mbrola
