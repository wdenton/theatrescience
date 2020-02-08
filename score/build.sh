
# https://en.wikibooks.org/wiki/LaTeX/Macros

PERFORMERS="m p q r s1 s2 s3 t1 t2 t3"
# PERFORMERS="m p s1"

OUTPUT_DIR=../scores

cd raw

for ROLE in $PERFORMERS
do
    # pdflatex -jobname=score-$ROLE -output-directory=$OUTPUT_DIR "\providecommand{\speaker{$ROLE}}\input{raw-score.tex}"
    pdflatex -jobname=score-$ROLE -output-directory=$OUTPUT_DIR "\providecommand{\speaker{$ROLE}}\input{wrapper-performer.tex}"
done

# The audience score is formatted differently.

pdflatex -jobname=score-a -output-directory=$OUTPUT_DIR "\providecommand{\speaker{a}}\input{wrapper-audience.tex}"
pdfbook --short-edge $OUTPUT_DIR/score-a.pdf --outfile $OUTPUT_DIR/score-a-book.pdf

# pdflatex -jobname=script-sone '\providecommand{\speaker{sone}}\input{test.tex}'
