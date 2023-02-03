for f in ./*md ./*/*md ; do pandoc --mathjax -s -c style.css --metadata \
  title="Oliver Gorton" --variable=title="" "$f" -o "${f//md/html}" ; done

