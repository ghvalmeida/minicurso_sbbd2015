REPORT=minicurso_sbbd2015
LATEX=pdflatex
BIBTEX=bibtex

SRCS=$(wildcard *.tex)
REFS=$(wildcard *.bib)
FIGS=$(wildcard figures/*)

all: $(REPORT).pdf

$(REPORT).pdf: $(SRCS) $(REFS) $(FIGS) 
	$(LATEX) $(REPORT)
	$(BIBTEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)

pdf: $(REPORT).pdf

clean:
	rm -f *.dvi *.aux *.log *.blg *.bbl *~ *.ps *converted*.pdf $(REPORT).pdf
