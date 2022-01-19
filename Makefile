html:
	pandoc README.md -o index.html --standalone --toc
pdf: 
	pandoc README.md -o gorton.pdf
all:
	$(html)
	$(pdf)
