
# https://en.wikibooks.org/wiki/LaTeX/Macros

PERFORMERS="musician primary secoone secotwo secothr tertone terttwo tertthr"

OUTPUT_DIR=scores/

for ROLE in $PERFORMERS
do
    pdflatex -jobname=script-$ROLE -output-directory=$OUTPUT_DIR "\providecommand{\speaker{$ROLE}}\input{raw-score.tex}"
done

# pdflatex -jobname=script-sone '\providecommand{\speaker{sone}}\input{test.tex}'
