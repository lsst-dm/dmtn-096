#
#

SRC=DMTN-*.tex
tex=$(SRC) body.tex dm*tex reqs.tex

OBJ=$(SRC:.tex=.pdf)


all: ${tex}
	latexmk -bibtex -xelatex -f $(SRC)

clean :
	latexmk -c
	rm *.pdf

acronyms.tex :$(tex) myacronyms.txt
	generateAcronyms.py  $(tex)

