# mcandre/docker-gox: Docker images for the Gox crosscompile utility

# EXAMPLE

```console
$ git clone https://github.com/mcandre/go-ios7crypt.git "$GOPATH/src/github.com/mcandre/go-ios7crypt"
$ cd "$GOPATH/src/github.com/mcandre/go-ios7crypt"
$ docker run -v "$(pwd):/go/src/github.com/mcandre/go-ios7crypt" mcandre/docker-gox:musl sh -c "cd /go/src/github.com/mcandre/go-ios7crypt && gox -output=\"/go/src/github.com/mcandre/go-ios7crypt/bin/{{.Dir}}-0.0.1/{{.OS}}-musl/{{.Arch}}/{{.Dir}}\" -os=linux -arch=amd64 ./cmd/..."
$ tree bin
bin
└── ios7crypt-0.0.1
    └── linux-musl
        └── amd64
            └── ios7crypt
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
