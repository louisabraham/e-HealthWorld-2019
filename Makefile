all: slides_ia.pdf slides_crypto.pdf

slides_ia.pdf: slides_ia.md references_ia.bib
	pandoc -t beamer -V theme:boxes --filter pandoc-citeproc slides_ia.md -o slides_ia.pdf

slides_crypto.pdf: slides_crypto.md
	pandoc -t beamer -V theme:boxes --filter pandoc-citeproc slides_crypto.md -o slides_crypto.pdf
