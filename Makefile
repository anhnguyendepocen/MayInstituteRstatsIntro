all:
	make book
	make pdf
	make RIntro.zip

book:
	R -e 'bookdown::render_book("index.Rmd", output_dir="./docs")'

pdf:
	R -e 'bookdown::render_book("index.Rmd", output_dir="./pdf", output_format = bookdown::pdf_book())'
	mv pdf/RIntro.pdf docs/.

RIntro.zip: data/*rda data/*csv
	zip RIntro.zip data/*rda data/*csv 
	mv RIntro.zip docs/.

