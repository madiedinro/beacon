SHELL = /bin/bash

PATH:=$(PATH):$(GOPATH)/bin

-include $(shell curl -sSL -o .build-harness "https://git.io/build-harness"; echo .build-harness)


.PHONY : go/build/local
go/build/local:
	CGO_ENABLED=0 go build -v -o "./dist/bin/ga-beacon" *.go
