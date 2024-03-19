all:
	python -m markdown -x tables -x extra index.md > index.html
	wkhtmltopdf --javascript-delay 5000 localhost:8000 index.pdf

clean:
	rm index.html index.pdf
