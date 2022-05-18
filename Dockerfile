FROM golang 

WORKDIR /go/src

RUN apt-get update \
    && apt-get install protobuf-compiler -y \
    && go install google.golang.org/protobuf/cmd/protoc-gen-go@latest \
    && go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest \
    && chmod -R 777 .