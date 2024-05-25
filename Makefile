BBLS := $(filter-out bst.bbl, $(patsubst tools/resume_%.bst, %.bbl, $(wildcard tools/resume_*.bst)))
PDFS := $(patsubst %.tex, %.pdf, $(wildcard *.tex))

.PHONY: all clean

all:
	rm -f *.bbl
	pdflatex Shih-HaoTseng_Patent_PublicationList.tex
	pdflatex Shih-HaoTseng_Patent_PublicationList.tex
	make $(BBLS)
	pdflatex Shih-HaoTseng_Resume.tex
	pdflatex Shih-HaoTseng_Resume.tex
	bibtex Shih-HaoTseng_Resume
	make -B $(PDFS)
	make clean

clean:
	rm -f *.gz *.log *.blg *.aux *.out

%.bbl: %.aux
	bibtex $<

%.pdf: %.tex
	pdflatex $<

Resume: Shih-HaoTseng_Resume.tex
	rm -f *.bbl
	pdflatex $<
	pdflatex $<
	bibtex Shih-HaoTseng_$@
	make -B Shih-HaoTseng_$@.pdf
	make clean

%: Shih-HaoTseng_%.tex
	rm -f *.bbl
	pdflatex $<
	pdflatex $<
	rm Shih-HaoTseng_*.aux
	make -B $(patsubst %.aux, %.bbl, $(wildcard *.aux))
	make -B Shih-HaoTseng_$@.pdf
	make clean

resume: Resume

publication: PublicationList

patent: Patent_PublicationList