version=0
image=mtr
registry=docker-registry.webtravel.de

default: build

build:
	docker build -t ${registry}/${image}:${version} .

tag: build
	docker tag ${registry}/${image}:${version} ${registry}/${image}:latest

push: tag
	docker push ${registry}/${image}:latest
	docker push ${registry}/${image}:${version}

run:
	docker run -it --rm --name mtr-$(uuidgen) ${registry}/${image}:${version} google.de
