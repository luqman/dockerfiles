.PHONY: all
all: help

USERNAME = "${USER}"
PROJECTNAME = "dockerfiles:$(shell basename "$(PWD)")"

## info: Log USERNAME and PROJECTNAME
.PHONY: info
info:
	@echo "Dockerfiles: ${USERNAME}/${PROJECTNAME}"

## build: Build docker image
.PHONY: build
build:
	@make info
	@docker build -t ${USERNAME}/${PROJECTNAME} .

## run: run docker image
.PHONY: run
run:
	@make info
	@docker run -it -v ${PWD}/config:/config -v ${PWD}/downloads:/downloads -p 6800:6800 --rm ${USERNAME}/${PROJECTNAME}

## push: push docker image
.PHONY: push
push:
	@make info
	@docker push ${USERNAME}/${PROJECTNAME}

.PHONY: help
help: Makefile
	@echo
	@echo " Choose a command to run in: "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo
