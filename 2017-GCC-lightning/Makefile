COMPILER = xelatex

# Default target
all:
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc jbcirc.tex
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc parsec.tex

clean:
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc -c jbcirc.tex
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc -c parsec.tex
	rm -f jbcirc.nav jbcirc.snm
	rm -f parsec.nav parsec.snm

.PHONY: all
