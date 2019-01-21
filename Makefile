SHELL = /bin/bash
PATH:=$(PATH):$(GOPATH)/bin
CWD:=$(pwd)



-include $(shell curl -sSL -o .build-harness "https://git.io/build-harness"; echo .build-harness)

.PHONY : go/build/local
go/build/local:
	CGO_ENABLED=0 go build -v -o "./dist/bin/ga-beacon" *.go


push-latest:
	docker tag beacon madiedinro/beacon:latest
	docker push madiedinro/beacon:latest

push-dev:
	docker tag theia madiedinro/beacon:dev
	docker push madiedinro/beacon:dev
