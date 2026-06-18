for f in *.md ; do pandoc --mathjax -s -c style.css \
  --metadata title="O. Gorton" --variable=title="" \
  "$f" -o "${f//.md/.html}" ; done
