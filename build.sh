#!/bin/bash
mkdir -p output

pandoc novel.md -o output/novel.pdf \
  --pdf-engine=xelatex \
  --lua-filter=filters/chapterbreak.lua \
  -V documentclass=book \
  -V fontsize=11pt \
  -V mainfont="EB Garamond" \
  -V monofont="Fira Code" \
  -V geometry=a5paper \
  -V margin=2cm \
  --toc \
  --highlight-style=zenburn
