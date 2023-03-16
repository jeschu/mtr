version=0.95.2
image=mtr
account=jeschu

default: build scan run-version

build:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t ${account}/${image}:${version} --push .
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t ${account}/${image}:latest --push .

scan:
	docker scout cves ${account}/${image}:${version}

run-version:
	DOCKER_DEFAULT_PLATFORM=linux/amd64 docker run -it --rm --name mtr-$(uuidgen) ${account}/${image}:${version} --version
