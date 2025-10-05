all: thesis slides

thesis: thesis.pdf
thesis.pdf: thesis.Rmd papers/enge2021.pdf papers/enge2023.pdf papers/enge2024.pdf
	Rscript -e "rmarkdown::render('thesis.Rmd')"

enge2024: papers/enge2024.pdf
papers/enge2024.pdf: papers/enge2024.Rmd
	Rscript -e "rmarkdown::render('papers/enge2024.Rmd')"

slides: defense/slides.pdf
defense/slides.pdf: defense/slides.Rmd
	Rscript -e "rmarkdown::render(input = 'defense/slides.Rmd')"

present:
	pympress defense/slides.pdf
