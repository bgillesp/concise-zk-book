#!/bin/sh

SRC=src
DEST=build
FILE=concise-zk-book

mkdir -p "$DEST"
if pdflatex --output-directory=$DEST -halt-on-error "$SRC/$FILE.tex"; then
    cp "$DEST/$FILE.pdf" "./$FILE.pdf"
    echo "## TeX source compiled successfully ##"
else
    echo "!! pdflatex encountered an error !!"
fi
