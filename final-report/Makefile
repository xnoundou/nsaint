default: waint.pdf

waint.pdf: clean waint.tex waint.bib
	pdflatex waint
	bibtex waint
	pdflatex waint
	pdflatex waint
	evince waint.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc *.blg waint.pdf waint.synctex.gz
