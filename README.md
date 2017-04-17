# mcandre/docker-gox: Docker images for the Gox crosscompile utility

# EXAMPLE

```console
$ go get github.com/mcandre/go-ios7crypt
$ cd "$GOPATH/src/github.com/mcandre/go-ios7crypt"

$ docker pull mcandre/docker-gox:musl
$ docker run -v "$(pwd):/go/src/github.com/mcandre/go-ios7crypt" mcandre/docker-gox:musl sh -c "cd /go/src/github.com/mcandre/go-ios7crypt && gox -output=\"/go/src/github.com/mcandre/go-ios7crypt/bin/{{.Dir}}-${version}/{{.OS}}-musl/{{.Arch}}/{{.Dir}}\" -os=linux -arch=amd64 ./cmd/..."
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
mcandre/docker-gox                     glibc               85060a3eb09c        57 minutes ago      557 MB
mcandre/docker-gox                     musl                f8c14a4be001        About an hour ago   305 MB
```

# PUBLISH IMAGES

```console
$ make publish
```
