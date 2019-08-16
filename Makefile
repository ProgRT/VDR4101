.PHONY: clean

vdr4101.pdf: vdr4101.tex
	pdflatex vdr4101

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.ent *.blg *.run.xml *.bbl *.bcf
