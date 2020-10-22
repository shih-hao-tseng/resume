clean:
	rm -f *.gz *.log *.blg *.aux *.out

CV:
	rm -f books.bbl journals.bbl conferences.bbl
	pdflatex Shih-HaoTseng_CV.tex
	bibtex books
	bibtex conferences
	pdflatex Shih-HaoTseng_CV.tex
	pdflatex Shih-HaoTseng_CV.tex
	make clean