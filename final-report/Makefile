default: ece750.pdf

ece750.pdf: clean ece750.tex ece750.bib
	pdflatex ece750
	bibtex ece750
	pdflatex ece750
	pdflatex ece750
	evince ece750.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc *.blg ece750.pdf ece750.synctex.gz
