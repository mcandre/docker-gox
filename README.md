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

# FEATURES

* Go
* Gox
* g++ (add your own cgo dependencies on top of docker-gox)

# DOCKERHUB

https://hub.docker.com/r/mcandre/docker-gox/

# RUNTIME REQUIREMENTS

* [Docker](https://www.docker.com) 19+

# CONTRIBUTING

For more information on developing docker-gox itself, see [DEVELOPMENT.md](DEVELOPMENT.md).
