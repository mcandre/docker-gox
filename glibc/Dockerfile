FROM mcandre/docker-go:glibc
RUN apt-get update && \
    apt-get install -y g++ && \
    go install github.com/mitchellh/gox@v1.0.1
