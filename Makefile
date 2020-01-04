.DEFAULT_GOAL := proprabook.pdf


proprabook.pdf: clean
	asciidoctor-pdf -a source-highlighter=coderay -r asciidoctor-bibtex -a toc -a chapter-label -a pagenums master.adoc -o proprabook.pdf

clean:
	rm -rf proprabook.pdf
