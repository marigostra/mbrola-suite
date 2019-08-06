
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

install:
	install -pD -m755 out/mbrola $(PREFIX)/bin/mbrola
	install -pD -m755 out/freephone $(PREFIX)/bin/freephone
	install -pD -m644 en1/en1 $(PREFIX)/lib/mbrola-suite/en1
	install -pD -m644 en1/en1mrpa $(PREFIX)/lib/mbrola-suite/en1mrpa
	install -pD -m644 out/lexicon.dir $(PREFIX)/lib/mbrola-suite/lexicon.dir
	install -pD -m644 out/lexicon.pag $(PREFIX)/lib/mbrola-suite/lexicon.pag
