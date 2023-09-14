TEXCMD=pdflatex -shell-escape
FILE=brunocriado
TEXFILE=$(FILE).tex
PDFFILE=$(FILE).pdf
TMP=*.log *.aux *.out

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE)
	$(TEXCMD) $(TEXFILE)

view-pdf: $(PDFFILE)
	sioyek $(PDFFILE)

clean:
	rm -f $(TMP)

clean-pdf:
	rm $(PDFFILE)
