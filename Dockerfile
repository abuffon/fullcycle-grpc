FROM golang 

WORKDIR /go/src

RUN apt-get update \
    && apt-get install protobuf-compiler -y 
    
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest \
    && go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest \
    && go install github.com/ktr0731/evans@latest 

RUN chmod -R 777 .