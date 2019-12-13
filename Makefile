.PHONY: clean

vdr4101.pdf: *.tex fig/*.tex dat/*.dat fig/*.tex tbl/*.tex
	pdflatex --shell-escape vdr4101

auteurs.pdf: auteurs.tex tbl-etudes.tex tbl-etudes2.tex
	lualatex auteurs.tex
clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.ent *.run.xml *.blg
	rm -f */*.aux
	rm -f pdffig/*.log pdffig/*.run.xml pdffig/*.dep pdffig/*.dpth  pdffig/*.md5
plan.html: plan.md
	pandoc -o plan.html --standalone plan.md

plan.pdf: plan.md
	pandoc -o plan.pdf --standalone plan.md
