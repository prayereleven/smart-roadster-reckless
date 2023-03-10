build:
	jupyter-book build .

view: build
	open _build/html/index.html

push: build
	git ci -a -m "Publishing to gh-pages"
	git push
	ghp-import -n -p -f _build/html/
