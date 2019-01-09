all: slides.html paper.tex

slides.html: slides.md
	pandoc -t revealjs --standalone < slides.md > slides.html

paper.tex: paper.md
	pandoc -t beamer --standalone < paper.md > paper.tex

paper.pdf: paper.tex
	latexmk -xelatex

clean:
	latexmk -c
