all:
	make book
	make RIntro.pdf
	make RIntro.zip

book:
	R -e 'bookdown::render_book("index.Rmd", output_dir="./docs")'

RIntro.pdf:
	R -e 'bookdown::render_book("index.Rmd", output_dir=".", output_format = bookdown::pdf_book())'
	mv RIntro.pdf ./docs/.

RIntro.zip: data/*rda data/*csv
	zip RIntro.zip data/*rda data/*csv 
	mv RIntro.zip ./docs/.

