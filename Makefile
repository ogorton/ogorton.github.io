all:
	pandoc menu.md README.md -o index.html
	pandoc menu.md README.md -o mobile.html --standalone
	pandoc README.md -o gorton.pdf
