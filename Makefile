docs/index.html: bin/build */*.md
	Rscript -e 'rmarkdown::render("bin/index.rmd", rmarkdown::md_document("gfm", preserve_yaml=TRUE, pandoc_args="--wrap=none"), output_dir=".", quiet=TRUE, knit_root_dir=getwd())'
	jekyll b
