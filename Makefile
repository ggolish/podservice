
all: go

go:
	protoc -I . --go_out=plugins=grpc:. --go_opt=paths=source_relative ./podservice.proto && \
	    mv *.pb.go ./podservice-go
	

