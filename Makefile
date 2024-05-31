.PHONY: build docker apply

init:
	poetry shell
	poetry install --no-root
	pre-commit install

build:
	@echo "Building project ..."
	docker-compose build

up:
	@echo "Starting containers ..."
	docker-compose up -d

down:
	@echo "Stopping docker and removing container"
	docker-compose down 199106

all: build up down


.PHONY: clean

clean:
	rm -rf ./deployment/terraform/.terraform
	rm -rf ./deployment/terraform/*.hcl
	rm -rf ./deployment/terraform/*.tfstate
