for f in *.md ; do pandoc --mathjax -s -c style.css \
  --metadata title="O. Gorton" --variable=title="" \
  --syntax-highlighting tango \
  "$f" -o "${f//.md/.html}" ; done
