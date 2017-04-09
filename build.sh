#!/bin/bash
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
# @brief     Simplistic shell script for typesetting a LaTeX document
# @author    Sigve Karolius (SK)
# @date      2017-04-09 (started)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #

# --------------------------------------------------------------------------- #
# TeX-specific environment variables (optional)
# --------------------------------------------------------------------------- #

## @var TEXMFHOME he tree which users can use for their own individual
export TEXMFHOME="${PWD}/latex/texmf:${HOME}/texmf"
## @var TEXINPUT
export TEXINPUT=".:${PWD}/latex/texmf//:${HOME}/texmf//:${TEXINPUTS}"
## @var BSINPUTS Where BibTeX looks for BST files
#export BSTINPUTS := .:$${TEXINPUTS}
## @var BIBINPUTS Where BibTeX looks for BIB files
export BIBINPUTS=".:bibliography:${BSTINPUTS}"

# --------------------------------------------------------------------------- #
# Build procedure
# --------------------------------------------------------------------------- #
mySRC=main.tex

pdflatex "${mySRC}"
bibtex "${mySRC/%.*/*.aux}"
makeindex "${mySRC/%.*/*.idx}"
pdflatex "${mySRC}"
pdflatex "${mySRC}"

# --------------------------------------------------------------------------- #
# Clean-up auxiliary files 
# --------------------------------------------------------------------------- #
AUXFILES="alg acr acn bbl blg glg glo glsdefs gls ist idx ilg ind toc out xtr
          brf nav nlo nls snm sys syo txss dvi ps aux log xdy lol lof lot sls
          syi slg syg"

for AUXFILE in ${AUXFILES}; do \
  while IFS= read -r FILE; do \
          printf "deleting ${FILE}\n";
          rm -f "${FILE}";
  done < <(find . -maxdepth 1 -type f -name "*.${AUXFILE}");
done
