.DEFAULT_GOAL := all

IDDOC=default

all:
	echo "\\\newcommand{\iddoc}{$(IDDOC)}\n\input{./$(DOC)/vars.\iddoc.tex}" > select.tmp
	lualatex --shell-escape $(DOC)/main.tex
	echo "One more time to update references (fix bug Page1/??)"
	lualatex --shell-escape $(DOC)/main.tex
	echo "Cleaning..."
	make clean_soft

clean_soft:
	- rm material/Logo_final-eps-converted-to.pdf
	- rm select.tmp
	- rm *.aux
	- rm *.log
	- rm *.out
	- rm *.pyg
	- rm *.toc

clean:
	make clean_soft
	- echo "removing PDF"
	- rm $(DOC)/main.pdf
