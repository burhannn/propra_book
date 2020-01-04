FROM asciidoctor/docker-asciidoctor
WORKDIR /book
RUN gem install --no-document asciidoctor-bibtex

# mountpoint for input

CMD [ "asciidoctor-pdf","-a","source-highlighter=coderay","-r","asciidoctor-bibtex","-a","toc","-a","chapter-label","-a","pagenums","master.adoc","-o","proprabook.pdf"]