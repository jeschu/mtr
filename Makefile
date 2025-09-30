version=0.96
image=mtr
account=jeschu

default: build scan run-version

build-local:
	docker build -t ${account}/${image}:${version} .

build:
	docker buildx build --platform linux/arm64,linux/amd64,linux/amd64/v2,linux/riscv64,linux/ppc64le,linux/s390x,linux/386,linux/arm/v7,linux/arm/v6 -t ${account}/${image}:${version} --push .
	docker buildx build --platform linux/arm64,linux/amd64,linux/amd64/v2,linux/riscv64,linux/ppc64le,linux/s390x,linux/386,linux/arm/v7,linux/arm/v6 -t ${account}/${image}:latest --push .

scan:
	docker scout cves ${account}/${image}:${version}

run-local:
	docker run -it --rm --name mtr-$(uuidgen) ${account}/${image}:${version} --version

run-version:
	DOCKER_DEFAULT_PLATFORM=linux/amd64 docker run -it --rm --name mtr-$(uuidgen) ${account}/${image}:${version} --version
