TEXCMD = pdflatex -shell-escape
BIN = *.log
TEXFILE=geyslan_bem_en.tex
PDFFILE=geyslan_bem_en.pdf

.PHONY: $(PDFFILE)


$(PDFFILE): $(TEXFILE)
	$(TEXCMD) $(TEXFILE)

view: $(PDFFILE)
	evince $(PDFFILE)

clean:
	rm -f $(BIN) $(PDFFILE)


