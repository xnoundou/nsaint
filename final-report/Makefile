default: ece750-fr.pdf

ece750-fr.pdf: clean ece750-fr.tex ece750-fr.bib
	pdflatex ece750-fr
	bibtex ece750-fr
	pdflatex ece750-fr
	pdflatex ece750-fr
	evince ece750-fr.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc *.blg ece750-fr.pdf ece750-fr.synctex.gz
