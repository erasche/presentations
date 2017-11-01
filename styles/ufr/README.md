# LaTeX Styles

Support matrix:

Theme        | Document Type | Supported?
------------ | ------------- | ---------
UFR          | beamer        | yes
UFR          | any           | no
Backofen Lab | any           | no
usegalaxy.eu | any           | no

## Usage

Add the repo as a submodule, copy the makefile, and you're ready to go.

```bash
git submodule init
git submodule add https://github.com/backofenlab/latex-styles styles
cp styles/Makefile .
```

You'll note that the Makefile includes a statement adjusting the `TEXINPUTS`
environment variable. If you wish to use this style directory in your own
makefile then be sure to copy that setting.
