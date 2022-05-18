package main

import (
	"log"
	"net"

	"github.com/abuffon/fc2-grpc/pb"
	"github.com/abuffon/fc2-grpc/services"
	"google.golang.org/grpc"
)

func main() {

	lis, err := net.Listen("tcp", "localhost:50051")
	if err != nil {
		log.Fatalf("Could not connect: %v", err)
	}

	grpcServer := grpc.NewServer()
	pd.RegisterUserServiceServer(grpcServer, services.NewUserService)

	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("Could not serve: %v", err)
	}

}