SHELL = /bin/sh
PDFLATEX := $(shell which pdflatex)

umk.pdf: umk.tex umk_preamble.tex general_info.tex ifmo/body2.tex sec*.tex
	@echo $(shell pwd)
	$(PDFLATEX) $<

clean:
	rm -f *.log *.aux *.pdf