default: ctaint-proposal.pdf

ctaint-proposal.pdf: clean ctaint-proposal.tex ctaint-proposal.bib
	pdflatex ctaint-proposal
	bibtex ctaint-proposal
	pdflatex ctaint-proposal
	pdflatex ctaint-proposal
	evince ctaint-proposal.pdf

clean:
	rm -f *~ *.glo *.aux *.bbl *.brf *.idx *.bak *.ilg *.ind *.lof *.log \
	   *.lot *.out *.thm *.toc ctaint-proposal.pdf
