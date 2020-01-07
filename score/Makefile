
# https://en.wikibooks.org/wiki/LaTeX/Macros

# PERFORMERS=

OUTPUT_DIR=scores/

all:	ROLE=pianist; pdflatex -jobname=$ROLE -output-directory=$OUTPUT_DIR '\providecommand{\speaker{$$ROLE}}\input{test.tex}'
	pdflatex -jobname=$$ROLE -output-directory=$OUTPUT_DIR '\providecommand{\speaker{pianist}}\input{test.tex}'

# pdflatex -jobname=script-sone '\providecommand{\speaker{sone}}\input{test.tex}'
