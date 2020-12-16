all:
	rm -f books.bbl journals.bbl conferences.bbl
	pdflatex Shih-HaoTseng_CV.tex
	bibtex books
	bibtex journals
	bibtex conferences
	pdflatex Shih-HaoTseng_CV.tex
	pdflatex Shih-HaoTseng_CV.tex
	pdflatex Shih-HaoTseng_Resume.tex
	bibtex Shih-HaoTseng_Resume
	pdflatex Shih-HaoTseng_Resume.tex
	pdflatex Shih-HaoTseng_Resume.tex
	pdflatex Shih-HaoTseng_Patent_PublicationList.tex
	pdflatex Shih-HaoTseng_Patent_PublicationList.tex
	pdflatex Shih-HaoTseng_PublicationList.tex
	pdflatex Shih-HaoTseng_PublicationList.tex
	make clean

clean:
	rm -f *.gz *.log *.blg *.aux *.out

CV:
	rm -f books.bbl journals.bbl conferences.bbl
	pdflatex Shih-HaoTseng_CV.tex
	bibtex books
	bibtex journals
	bibtex conferences
	pdflatex Shih-HaoTseng_CV.tex
	pdflatex Shih-HaoTseng_CV.tex
	make clean

resume:
	pdflatex Shih-HaoTseng_Resume.tex
	bibtex Shih-HaoTseng_Resume
	pdflatex Shih-HaoTseng_Resume.tex
	pdflatex Shih-HaoTseng_Resume.tex
	make clean

patent:
	pdflatex Shih-HaoTseng_Patent_PublicationList.tex
	pdflatex Shih-HaoTseng_Patent_PublicationList.tex
	bibtex patents
	bibtex books
	bibtex journals
	bibtex conferences
	pdflatex Shih-HaoTseng_Patent_PublicationList.tex
	make clean

publication:
	pdflatex Shih-HaoTseng_PublicationList.tex
	pdflatex Shih-HaoTseng_PublicationList.tex
	bibtex patents
	bibtex books
	bibtex journals
	bibtex conferences
	pdflatex Shih-HaoTseng_PublicationList.tex
	make clean
