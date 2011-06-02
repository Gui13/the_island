
all:
	@echo Making PDF
	@xelatex "main.tex" -output-directory=output/
	mv main.pdf output/The_Island-FR.pdf

latex:
	@echo Making PDF using LaTeX
	@pdflatex "main_latex.tex" -output-directory output/
	mv main_latex.pdf output/The_Island-Latex-FR.pdf

clean: 
	rm -rf output/*
    
