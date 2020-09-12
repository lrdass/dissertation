thesis:
		biber thesis --input-directory ./dist/ --output-directory ./dist/
		latexmk thesis -pdf -output-directory=./dist/ -jobname=thesis -interaction=nonstopmode
clean: 
	rm -rf ./dist/*
lint:
	aspell -d pt_BR -c chapters/$(file).tex