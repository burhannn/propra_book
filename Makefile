.DEFAULT_GOAL := proprabook.pdf

proprabook.pdf: clean
	docker run --rm -v $(shell pwd):/book propra_book_buildcontainer

clean:
	rm -rf proprabook.pdf

dockerimage:
	docker build . -t propra_book_buildcontainer
