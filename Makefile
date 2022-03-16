all:
	pandoc hmobile.md README.md web.md -o index.html --standalone
	pandoc htex.md README.md -o gorton.pdf
