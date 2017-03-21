TEXCMD=pdflatex -shell-escape
FILE=bruno_criado_en
TEXFILE=$(FILE).tex
PDFFILE=$(FILE).pdf
TMP=*.log *.aux *.out

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE)
	$(TEXCMD) $(TEXFILE)

view-pdf: $(PDFFILE)
	evince $(PDFFILE)

clean:
	rm -f $(TMP)

clean-pdf:
	rm $(PDFFILE)
