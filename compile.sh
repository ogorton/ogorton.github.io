for f in *.md ; do pandoc --mathjax -s -c style.css \
  --metadata title="Oliver Gorton" --variable=title="" \
  --highlight-style tango \
  "$f" -o "${f//.md/.html}" ; done
