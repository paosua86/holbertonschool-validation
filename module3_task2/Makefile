.PHONY: ## build clean post

build: ## Build the website
	hugo

clean: ## Clean the build directory
	rm -rf dist/*

post: ## Create a new blog post
	hugo new posts/$(POST_NAME).md
## Update the title of the new post
	sed -i "s/title: .*/title: $(POST_TITLE)/" ./content/posts/$(POST_NAME).md

lint: ## lint
	markdownlint README.md DEPLOY.md

package: ## creating package
	zip awesome-website.zip dist/

unit-tests: ## Run unit-tets of the project

integration-tests: ## Run integration-tests of the project

validate: ## Validate the project

help: ## Show commands usage information
	@echo "Available targets:"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | awk '{ printf "  %-20s %s\n", $$1, $$2 }'
