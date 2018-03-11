serve:
	docker run --rm \
	  -v $(PWD):/srv/jekyll \
	  -p 4000:4000 \
	  -it jekyll/builder \
	  jekyll server

drafts-start:
	docker run --rm \
	  -v $(PWD):/srv/jekyll \
	  -p 4000:4000 \
	  -it jekyll/builder \
	  jekyll server --drafts

build:
	docker run --rm \
	  -v $(PWD):/srv/jekyll \
	  -it jekyll/builder \
	  jekyll build