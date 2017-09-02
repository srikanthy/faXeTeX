# Package: faXeTeX v1.0
#
# FontAwesome (http://fortawesome.github.com/Font-Awesome/) bindings for XeLaTeX
# Author: Srikanth Yalavarthi
# GitHub: https://github.com/ysk1188/faXeTeX/
#
# XeLaTeX Symbols using FontAwesome v4.7.0's Characters
# All icons are camel-cased and prefixed with 'fa'
#
# Copyright 2017 Srikanth Yalavarthi
#
# This work may be distributed and/or modified under the
# conditions of the LaTeX Project Public License, either version 1.3
# of this license or (at your option) any later version.
# The latest version of this license is in
#   http://www.latex-project.org/lppl.txt
# and version 1.3 or later is part of all distributions of LaTeX
# version 2005/12/01 or later.
#
# This work has the LPPL maintenance status `maintained'.
# 
# The Current Maintainer of this work is Srikanth Yalavarthi
#
# This work consists of the files fontawesome.tex, fontawesome.sty and Makefile

# Refer http://fontawesome.io/license/ for FontAwesome License

## Makefile ##
## Last Modified: 2017-09-02 ##

.SUFFIXES: .tex .pdf

XELATEX = xelatex
RM = rm -rf

SRC = fontawesome.tex
STY = fontawesome.sty
PDF = fontawesome.pdf

all: $(PDF)

$(PDF): $(SRC) $(STY)

.tex.pdf:
	$(RM) $@
	$(XELATEX) $*.tex
	$(XELATEX) $*.tex

clean:
	$(RM) fontawesome.aux
	$(RM) fontawesome.log

distclean: clean
	$(RM) fontawesome.pdf
