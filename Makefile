version=0.94
image=mtr
account=jeschu

default: build

build:
	docker build -t ${account}/${image}:${version} .

tag: build
	docker tag ${account}/${image}:${version} ${account}/${image}:latest

push: tag
	docker push ${account}/${image}:latest
	docker push ${account}/${image}:${version}

run:
	docker run -it --rm --name mtr-$(uuidgen) ${account}/${image}:${version} 8.8.8.8

run-help:
	docker run -it --rm --name mtr-$(uuidgen) ${account}/${image}:${version} --help
