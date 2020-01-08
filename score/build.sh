
# https://en.wikibooks.org/wiki/LaTeX/Macros

PERFORMERS="musician primary secondaryone secondarytwo secondarythr tertiaryone tertiarytwo tertiarythr audience"

OUTPUT_DIR=scores/

for ROLE in $PERFORMERS
do
    pdflatex -jobname=score-$ROLE -output-directory=$OUTPUT_DIR "\providecommand{\speaker{$ROLE}}\input{raw-score.tex}"
done

pdfbook --short-edge scores/score-audience.pdf --outfile scores/score-audience-book.pdf

# pdflatex -jobname=script-sone '\providecommand{\speaker{sone}}\input{test.tex}'
