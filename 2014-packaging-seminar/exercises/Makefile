
# For those of you looking at my makefile, this is the _wrong_ way to do it, as it doesn't take advantage of the -j flag. It's just...more work.
#
# See the following for help with that. The question, and then bobbogo's answer
# http://stackoverflow.com/a/12110773

FOLDERS:=01-my-first-package 02-control-file 04-cleanup 05-signing 06-manpages 07-alternatives 08-aliens 09-package-modification 10-meta 11-take-home ./
PANDOC:=pandoc
HTML_OPTIONS:= -t html5 --standalone --css=https://cpt.tamu.edu/md.css
LATEX:=pdflatex
LATEX_OPTIONS:= -t latex --standalone 
FILE_NAME:= readme

all: html latex

html:
	$(foreach var, $(FOLDERS), $(PANDOC) $(HTML_OPTIONS) $(var)/$(FILE_NAME).md > $(var)/$(FILE_NAME).html ;)
latex: run_tex clean_tex

gen_tex:
	$(foreach var, $(FOLDERS), $(PANDOC) $(LATEX_OPTIONS) $(var)/$(FILE_NAME).md > $(var)/$(FILE_NAME).tex ;)
run_tex: gen_tex
	$(foreach var, $(FOLDERS), cd $(var); $(LATEX) $(FILE_NAME).tex; cd ../;)
clean_tex: 
	$(foreach var, $(FOLDERS), rm $(var)/$(FILE_NAME).aux $(var)/$(FILE_NAME).log $(var)/$(FILE_NAME).out ;)
	

clean: clean_build_dirs clean_built_package
clean_build_dirs:
	find . -maxdepth 4 -wholename "*debian/cpt-build*" -exec rm -rf '{}' \;

clean_built_package:
	find . -maxdepth 2 -type f -name "cpt-build-tut*" -exec rm '{}' \;
