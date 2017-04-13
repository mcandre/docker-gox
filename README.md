# mcandre/docker-gox: Docker images for the Gox crosscompile utility

# EXAMPLE

```console
$ docker pull mcandre/docker-gox:musl

$ go get github.com/mcandre/go-ios7crypt
$ cd "$GOPATH/src/github.com/mcandre/go-ios7crypt"

$ docker run -v "$(pwd):/go/src/github.com/mcandre/go-ios7crypt" mcandre/docker-gox:musl sh -c "cd /go/src/github.com/mcandre/go-ios7crypt && gox -output=\"/go/src/github.com/mcandre/go-ios7crypt/bin/{{.Dir}}-${version}/{{.OS}}-musl/{{.Arch}}/{{.Dir}}\" -os=linux -arch=\"amd64 ppc64\" ./cmd/..."
```

# DOCKERHUB

https://hub.docker.com/r/mcandre/docker-gox/

# REQUIREMENTS

* [Docker](https://www.docker.com)

## Optional

* [make](https://www.gnu.org/software/make/)

# BUILD IMAGES

```console
$ make

$ docker images | grep mcandre/docker-gox
mcandre/docker-gox               gnu                 6afbd40b9ddc        16 minutes ago      525 MB
mcandre/docker-gox               musl                a00ebbf3cecf        20 hours ago        305 MB
```

# PUBLISH IMAGES

```console
$ make publish
```
