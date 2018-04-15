.PHONY: paper clean cleanall

paper: SiSEC2018report.pdf

all: SiSEC2018report.pdf

preview: SiSEC2018report.pdf
	open $< &

clean:
	latexmk -CA
	rm -rf build

cleanall: clean
	- rm -f *.pdf

SiSEC2018report.pdf: SiSEC2018report.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" --synctex=1 -use-make SiSEC2018report.tex
