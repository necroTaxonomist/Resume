
TEX=xelatex

all: resume.pdf

%.pdf: *.tex packages
	$(TEX) -enable-installer $(subst .pdf,.tex,$@)

.PHONY: packages
packages:
