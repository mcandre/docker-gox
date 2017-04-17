.PHONY: mcandre/docker-gox-glibc mcandre/docker-gox-musl

all: mcandre/docker-gox-glibc mcandre/docker-gox-musl

mcandre/docker-gox-glibc: glibc/Dockerfile
	docker build -t mcandre/docker-gox:glibc glibc

mcandre/docker-gox-musl: musl/Dockerfile
	docker build -t mcandre/docker-gox:musl musl

publish-mcandre/docker-gox-glibc: mcandre/docker-gox-glibc
	docker push mcandre/docker-gox:glibc

publish-mcandre/docker-gox-musl: mcandre/docker-gox-musl
	docker push mcandre/docker-gox:musl

publish: publish-mcandre/docker-gox-glibc publish-mcandre/docker-gox-musl
