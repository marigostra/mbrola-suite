
all: freephone

clean:
	rm -rf out freespeech.build

freephone:
	cp -r freespeech freespeech.build
	cp freespeech.make freespeech.build/Makefile
	make -C freespeech.build
	mkdir -p out
	cp freespeech.build/freephone out/freephone
