main.pdf: main.tex figures/*.pdf main.bib figures/*.png
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	@rm -f *.aux *.bbl *.synctex.gz *.log main.pdf
