
# https://en.wikibooks.org/wiki/LaTeX/Macros

PERFORMERS="musician primary secondaryone secondarytwo secondarythr tertiaryone tertiarytwo tertiarythr"
# PERFORMERS="musician primary secondaryone"

OUTPUT_DIR=../scores

cd raw

for ROLE in $PERFORMERS
do
    # pdflatex -jobname=score-$ROLE -output-directory=$OUTPUT_DIR "\providecommand{\speaker{$ROLE}}\input{raw-score.tex}"
    pdflatex -jobname=score-$ROLE -output-directory=$OUTPUT_DIR "\providecommand{\speaker{$ROLE}}\input{wrapper-performer.tex}"
done

pdflatex -jobname=score-audience -output-directory=$OUTPUT_DIR "\providecommand{\speaker{audience}}\input{wrapper-audience.tex}"
pdfbook --short-edge $OUTPUT_DIR/score-audience.pdf --outfile $OUTPUT_DIR/score-audience-book.pdf

# pdflatex -jobname=script-sone '\providecommand{\speaker{sone}}\input{test.tex}'
