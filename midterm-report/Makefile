default: mr.pdf

mr.pdf: clean mr.tex mr.bib
	pdflatex mr
	bibtex mr
	pdflatex mr
	pdflatex mr
	evince mr.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc *.blg mr.pdf mr.synctex.gz
