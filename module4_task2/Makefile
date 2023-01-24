help: ## Show help command
	@sed -ne '/@sed/!s/## //p' Makefile

.PHONY: build
build: build-docker ## Create Website
	@docker run --rm -v $(PWD):/app -w /app awesome:build make build-website
	@docker run --rm -v $(PWD):/app -w /app awesome:build go build -o awesome-api

clean:  ## Delete content of dist folder
	@rm -rf dist/*

post:  ## Create a post
	@hugo new posts/$(POST_NAME).md
	@sed -i '/title:*/c\title: "$(POST_TITLE)"' ./content/posts/$(POST_NAME).md

package: ## zip website
	@make build
	@zip awesome-website.zip dist/index.html
	@zip awesome-api.zip awesome-api

lint: ## lint with markdown
	@apt install curl -y
	@curl --silent --location https://deb.nodesource.com/setup_16.x | bash -
	@apt install nodejs -y
	@npm install -g markdownlint-cli 1>&2
	@markdownlint README.md
	@markdownlint DEPLOY.md

unit-tests: ## test file
	@echo "running unit tests"
	touch coverage-units.out

integration-tests: ## integrate file
	@echo "running integration tests"
	touch coverage-integrations.out

validate: ## valide file

.PHONY:
build-docker: ## build-docker
	@docker build -t "awesome:build" build/Dockerfile .

.PHONY: build-dependencies
build-dependencies: ## build dependencies
	@sudo apt install ./hugo.deb

docker-tests: ## test docker
	@docker build -t awesome:build -f build/Dockerfile

build-website:## Build the Docker image
	hugo --source . --destination dist
