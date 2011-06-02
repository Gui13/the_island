
all:
	@echo Making PDF
	@cd tex && xelatex "main.tex" > /dev/null
	cp tex/main.pdf The_Island-FR.pdf

latex:
	@echo Making PDF using LaTeX
	@cd tex && pdflatex "main_latex.tex"
	cp tex/main_latex.pdf The_Island-FR-LaTeX.pdf
