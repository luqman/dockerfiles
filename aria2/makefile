.PHONY: all
all: help

PROJECTNAME = $(shell basename "$(PWD)")

## build: Build docker image
.PHONY: build
build:
	@docker build -t luqman/dockerfiles:aria2 .

## run: run docker image
.PHONY: run
run:
	@docker run -it -v ${PWD}/config:/config -v ${PWD}/downloads:/downloads -p 6800:6800 --rm luqman/dockerfiles:aria2

## push: push docker image to luqman/dockerfiles:aria2
.PHONY: push
push:
	@docker push luqman/dockerfiles:aria2

.PHONY: help
help: Makefile
	@echo
	@echo " Choose a command to run in: "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo
