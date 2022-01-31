all:
	pandoc hplain.md README.md -o index.html
	pandoc hmobile.md README.md -o mobile.html --standalone
	pandoc htex.md README.md -o gorton.pdf
