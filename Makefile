.DEFAULT_GOAL := all

all:
	lualatex main.tex
	echo "One more time to update references (fix bug Page1/??)"
	lualatex main.tex
	echo "Cleaning..."
	make clean_soft

clean_soft:
	-rm *.aux
	-rm *.log
	-rm *.out
	-rm *.pyg
	-rm *.toc

clean:
	make clean_soft
	echo "removing PDF"
	-rm main.pdf
