Geyslan Gregório Bem
====================

My CV is available in this repository in these formats:
PDF: [geyslan_bem_en.pdf](https://github.com/geyslan/cv/raw/master/geyslan_bem_en.pdf)
ASM: [geyslan_bem_en.asm](https://github.com/geyslan/cv/raw/master/geyslan_bem_en.asm)

Requirements
------------

* Arch Linux packages for build the TEX version:

 `pacman -S texlive-bin texlive-core texlive-science texlive-latexextra
 texlive-bibtexextra`

* Arch Linux packages for build the ASM version:

 `pacman -S base-devel nasm`

Building and Viewing
--------------------

Compiling:

`make`

Viewing:

`make view-pdf`

or

`make view-asm`

Cleaning (objects):

`make clean`
