fswatch -or . -e *.adoc -I --no-defer | xargs -n1 -I{} podman container run --rm -v $(pwd):/documents -w /documents asciidoctor/docker-asciidoctor:1.79 asciidoctor-revealjs -r asciidoctor-diagram index.adoc