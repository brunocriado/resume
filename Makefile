TEX = pdflatex -shell-escape
BIN = *.log
TEXFILE=geyslan_bem_en.tex
PDFFILE=geyslan_bem_en.pdf

all: 
	$(TEX) $(TEXFILE)

view:
	evince $(PDFFILE)

clean:
	rm -f $(BIN)


