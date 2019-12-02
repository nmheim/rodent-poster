TARGETS = main.pdf
SOURCES = $(shell find . -name '*.tex')

main.pdf: main.tex $(SOURCES)
	pdflatex main.tex

clean:
	rm main.pdf
	rm main.aux
	rm main.log

open:
	evince $(TARGETS) &
