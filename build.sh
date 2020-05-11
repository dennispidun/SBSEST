#!/bin/sh
pdflatex  -synctex=1 -interaction=nonstopmode --src-specials "Arbeit.tex"
bibtex "Arbeit"
makeindex "Arbeit.nlo" -s nomencl.ist -o "Arbeit.nls"
makeglossaries "Arbeit"
pdflatex  -synctex=1 -interaction=nonstopmode --src-specials "Arbeit.tex"
pdflatex  -synctex=1 -interaction=nonstopmode --src-specials "Arbeit.tex"
makeindex "Arbeit.nlo" -s nomencl.ist -o "Arbeit.nls"
pdflatex  -synctex=1 -interaction=nonstopmode --src-specials "Arbeit.tex"
./clean.sh
