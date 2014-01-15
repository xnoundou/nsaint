default: issta2014.pdf

issta2014.pdf: clean issta2014.tex issta2014.bib
	pdflatex issta2014
	bibtex issta2014
	pdflatex issta2014
	pdflatex issta2014
	evince issta2014.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc *.blg issta2014.pdf issta2014.synctex.gz
