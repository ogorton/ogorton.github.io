all:
	pandoc hplain.md README.md web.md -o index.html
	pandoc hmobile.md README.md web.md -o mobile.html --standalone
	pandoc htex.md README.md -o gorton.pdf
