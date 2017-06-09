COMPILER = xelatex
TARGET:=main

# Default target
all:
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc $(TARGET).tex

clean:
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc -c $(TARGET).tex
	rm -f $(TARGET).nav $(TARGET).snm

.PHONY: all
