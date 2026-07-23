TEX := Benjamin_Curis_Friedman.tex
PDF := $(TEX:.tex=.pdf)

LATEX := pdflatex
LATEX_FLAGS := -interaction=nonstopmode -halt-on-error

.PHONY: all pdf clean distclean

all: pdf

pdf: $(PDF)

$(PDF): $(TEX)
	$(LATEX) $(LATEX_FLAGS) $(TEX)
	$(LATEX) $(LATEX_FLAGS) $(TEX)

clean:
	rm -f *.aux *.log *.out missfont.log

distclean:
	rm -f *.aux *.log *.out missfont.log $(PDF)
