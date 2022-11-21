all:
	pandoc -s -c pandoc.css README.md -o site.html
print:	
	pandoc -s README.md -o gorton.pdf
