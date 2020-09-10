thesis:
	latexmk thesis -pdf -output-directory=./dist/ -jobname=thesis -interaction=nonstopmode
	biber thesis --input-directory ./dist/ --output-directory ./dist/
clean: 
	latex -c