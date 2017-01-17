#!/usr/bin/env bash

# Default options
open=false
interactive_spellcheck=false
batch_spellcheck=true
outputs=()
formats=()

# Process command line arguments
while test $# -gt 0
do
    case "$1" in
        --spellcheck) interactive_spellcheck=true
            ;;
        --nospellcheck) batch_spellcheck=false
            ;;
        --open) open=true
            ;;
        --pdf) outputs+=(pdf); formats+=(latex) 
            ;;
        --tex) outputs+=(tex); formats+=(latex)
            ;;
        --docx) outputs+=(docx); formats+=('')
            ;;
        *) echo "unrecognized option $1"
            ;;
    esac
    shift
done

# If no target is specified, pick pdf only
if [ ${#outputs[@]} -eq 0 ]; then
  outputs+=(pdf)
  formats+=(latex)
fi

# Create build directory if not present
if [ ! -d build ]; then 
  mkdir build
fi

# Spell check the files
if [ $interactive_spellcheck = true ]; then
  # Run interactive mode to fix spelling mistakes
  mdspell --ignore-acronyms --en-us src/*.md || exit 1
elif [ $batch_spellcheck = true ]; then
  mdspell --report --ignore-acronyms --en-us src/*.md
fi

# Concatenate all files with space in between
for f in src/*.md; do 
  cat "${f}"; echo; echo;
done > build/thesis_raw.md;

# Generate documents for all output formats 
for idx in "${!outputs[@]}"; do
  outfile="build/thesis.${outputs[$idx]}"
  format="${formats[$idx]}"
  if [ ! -z $format ]; then
    format="-t $format"
  fi

  # Update all the links to be pdf instead of png
  cat build/thesis_raw.md | \
    sed -e "s|/g/png|/g/pdf|g" |\
    sed -e "s|../images|images|g" |\
    sed \
        -e s/'~~}'/'}'/g \
        -e s/'{~~'/'\\st{'/g \
        -e s/'~>'/'}\\underline{'/g \
        -e s/'{--'/'\\st{'/g \
        -e s/'--}'/'}'/g \
        -e s/'{++'/'\\underline{'/g \
        -e s/'++}'/'}'/g \
        -e s/'{=='/'\\hl{'/g \
        -e s/'==}'/'}'/g \
        -e s/'{>>'/'\\marginpar{'/g \
        -e s/'<<}'/'}'/g \
    > build/thesis.md

# Rajouter ca apres titlepage: --include-before-body=templates/abstract.tex \
# Pour sauts de pages après titles2: --include-in-header=templates/break-sections.tex \ 

  echo -n "Compiling thesis to $outfile ($format) ..."
  cat build/thesis.md |\
  pandoc -f markdown $format \
    --smart \
    --include-in-header=templates/subcaption.tex \
    --include-in-header=templates/chapter-style.tex \
    --include-in-header=templates/caption-size.tex \
    --include-before-body=templates/titlepage.tex \
    --reference-links \
    --standalone \
    --number-sections \
    --default-image-extension=pdf \
    --toc \
    --highlight-style=tango \
    --filter pandoc-fignos \
    --filter pandoc-citeproc \
    --bibliography=src/biblio.bib \
    --csl templates/apa.csl \
    -V documentclass:memoir \
    -V classoption=oneside \
    -V fontsize=11pt \
    --variable=geometry:a4paper \
    -o $outfile
  echo " Done !"
done

if [ $open = true ]; then
  open build/thesis.pdf
fi

