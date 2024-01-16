# Optional: remove date metadata information in the pdf for reproducibility
export SOURCE_DATE_EPOCH=0
export FORCE_SOURCE_DATE=1

# Use pdflatex to produce a pdf from a LaTex file and remove the auxiliary files. 
base='chemin_du_dragon'

all:
	pdflatex ${base}.tex
	pdflatex ${base}.tex
	rm ${base}.aux ${base}.log
clean:
	${base}.pdf
