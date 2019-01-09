all: slides.html paper.tex

slides.html: slides.md
	pandoc -t revealjs --standalone < slides.md > slides.html

slides.tex: slides.md
	pandoc -t beamer --standalone < slides.md > slides.tex

slides.pdf: slides.tex
	latexmk -xelatex

paper.tex: paper.md
	pandoc -t beamer --standalone < paper.md > paper.tex

paper.pdf: paper.tex
	latexmk -xelatex

clean:
	latexmk -c
