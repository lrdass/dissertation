thesis:
	latexmk thesis -pdf -output-directory=./dist/ -jobname=thesis -interaction=nonstopmode
clean: 
	latex -C