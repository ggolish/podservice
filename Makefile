
PROTOGO = podservice.proto

all: go

go: $(PROTOGO)
	protoc -I . --go_out=plugins=grpc:. --go_opt=paths=source_relative $^ && \
	    mv *.pb.go ./podservicego && (cd ./podservicego; go get .)
	

