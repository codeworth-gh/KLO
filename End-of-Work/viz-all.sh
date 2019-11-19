#!/bin/zsh
FILES=(*.gv)
DIR=$(date +%H%M%S)_vis_files
mkdir $DIR
for A_FILE in $FILES; do
  dot -Tpdf $A_FILE > $DIR/$A_FILE.pdf
  mv $A_FILE $DIR
done