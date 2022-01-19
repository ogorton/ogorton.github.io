all:
	$(html)
	$(pdf)

html:
	pandoc README.md -o index.html
pdf: 
	pandoc README.md -o gorton.pdf
