
TEX=xelatex

all: resume.pdf resume_plain.pdf

%.pdf: *.tex packages
	$(TEX) -enable-installer -interaction=nonstopmode $(subst .pdf,.tex,$@)

.PHONY: packages
packages:
	mpm --require=ms