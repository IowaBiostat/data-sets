docs/index.html: bin/build */*.md
	bin/build
	render index/index.rmd
	mv index/index.html docs/index.html
