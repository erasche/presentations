COMPILER = xelatex
OPEN_RESOURCE=bash -c 'open $$0 || xdg-open $$0'

# Default target
pdf: ## Build PDF [Default]
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc

clean: ## Cleanup build artifacts
	TEXINPUTS="style/:" latexmk -pdf -r .latexmkrc -c
	rm -f $(TARGET).nav $(TARGET).snm

open: ## View PDF
	$(OPEN_RESOURCE) $(TARGET).pdf

help:
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

.PHONY: help all clean
