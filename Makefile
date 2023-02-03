all:
	find . -name '*.md' -type f \
		-exec pandoc --mathjax -s -c style.css \
	        --metadata title="Oliver Gorton" --variable=title="" {} -o {}.html \;
