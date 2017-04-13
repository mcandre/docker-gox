.PHONY: mcandre/docker-gox-gnu mcandre/docker-gox-musl

all: mcandre/docker-gox-gnu mcandre/docker-gox-musl

mcandre/docker-gox-gnu: gnu/Dockerfile
	sh -c "cd gnu && docker build -t mcandre/docker-gox:gnu ."

mcandre/docker-gox-musl: musl/Dockerfile
	sh -c "cd musl && docker build -t mcandre/docker-gox:musl ."

publish-mcandre/docker-gox-gnu: mcandre/docker-gox-gnu
	docker push mcandre/docker-gox:gnu

publish-mcandre/docker-gox-musl: mcandre/docker-gox-musl
	docker push mcandre/docker-gox:musl

publish: publish-mcandre/docker-gox-gnu publish-mcandre/docker-gox-musl
