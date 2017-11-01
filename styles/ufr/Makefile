COMPILER = xelatex
TARGET:=main
OPEN_RESOURCE=bash -c 'open $$0 || xdg-open $$0'

# Default target
pdf: .latexmkrc ## Build PDF [Default]
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc $(TARGET).tex

clean: ## Cleanup build artifacts
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc -c $(TARGET).tex
	rm -f $(TARGET).nav $(TARGET).snm

open: ## View PDF
	$(OPEN_RESOURCE) $(TARGET).pdf

.latexmkrc:
	@echo '$$'"pdflatex = 'xelatex %O %S';" > .latexmkrc
	@echo "add_cus_dep( 'glo', 'gls', 0, 'makeglossaries'   );" >> .latexmkrc
	@echo "sub makeglossaries {" >> .latexmkrc
	@echo '   system( "makeglossaries \"$$_[0]\""   );' >> .latexmkrc
	@echo "}" >> .latexmkrc

help:
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

.PHONY: help all clean
