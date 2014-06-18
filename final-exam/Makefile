default: finalexam.pdf

finalexam.pdf: clean finalexam.tex finalexam.bib
	pdflatex finalexam
	bibtex finalexam
	pdflatex finalexam
	pdflatex finalexam
	evince finalexam.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc *.blg finalexam.pdf finalexam.synctex.gz
