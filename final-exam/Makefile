default: finxalexam.pdf

finxalexam.pdf: clean finxalexam.tex finxalexam.bib
	pdflatex finxalexam
	bibtex finxalexam
	pdflatex finxalexam
	pdflatex finxalexam
	evince finxalexam.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc *.blg finxalexam.pdf finxalexam.synctex.gz
