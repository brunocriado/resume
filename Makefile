TEXCMD=pdflatex -shell-escape
FILE=geyslan_bem_en
BINFILE=$(FILE)
ASMFILE=$(FILE).asm
TEXFILE=$(FILE).tex
PDFFILE=$(FILE).pdf
TMP=*.log *.o $(BINFILE)

all: $(BINFILE) $(PDFFILE)

$(PDFFILE): $(TEXFILE)
	$(TEXCMD) $(TEXFILE)

$(BINFILE): $(ASMFILE)
	nasm -f elf64 $(ASMFILE) -o $(BINFILE).o
	ld $(BINFILE).o -o $(BINFILE);

view-pdf: $(PDFFILE)
	evince $(PDFFILE)

view-asm: $(BINFILE)
	./$(BINFILE)
clean:
	rm -f $(TMP)
