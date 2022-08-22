PWD = $(shell pwd)
UID = $(shell id -u) 
GUID = $(shell id -g)
image_name = golang-querier


.PHONY: build-image
build-image:
	docker build -t $(image_name) .

.PHONY: environment-start
environment-start:
	docker-compose up


.PHONY: environment-stop
environment-stop:
	docker-compose stop
	docker-compose down


.PHONY: environment-rebuild-restart
environment-rebuild-restart: environment-stop build-image environment-start


.PHONY: golang-shell
golang-shell:
	docker exec -ti golang-querier sh