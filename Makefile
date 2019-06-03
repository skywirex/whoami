.PHONY: default build dependencies image

default: build

build:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -a --installsuffix cgo --ldflags="-s" -o whoami

dependencies:
	go mod download

image:
	docker build -t skywirex/whoami .
