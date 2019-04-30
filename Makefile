all:
	make book
	make RIntro.pdf
	make RIntro.zip

book:
	R -e 'bookdown::render_book("index.Rmd", output_dir="./docs")'

RIntro.pdf:
	R -e 'bookdown::render_book("index.Rmd", output_dir=".", output_format = bookdown::pdf_book())'

RIntro.zip: data/*rda data/*csv
	zip RIntro.zip data/*rda data/*csv 


