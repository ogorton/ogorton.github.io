html:
	pandoc README.md -o index.html --standalone 
pdf: 
	pandoc README.md -o gorton.pdf
all:
	$(html)
	$(pdf)
