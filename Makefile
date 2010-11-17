
all:
	@echo Making PDF
	@cd tex && xelatex "main.tex" > /dev/null
	cp tex/main.pdf The_Island-FR.pdf

