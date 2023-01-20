clean: ##Cleanup the content of the directory dist/
	@rm -rf dist
build: check ##The target build should fail if the check fails, and should not generate a website
	@hugo

post: ##Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	@hugo new posts/${POST_NAME}.md
	@sed -i "s/title: .*/title: ${POST_TITLE}/" ./content/posts/${POST_NAME}.md
help: ##shows commands usage information
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
lint: ## lint with markdown

check: ## test the app
	@markdownlint ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md
validate: ## W3C validator
	@make build
	@./w3c_validator.py ./dist/index.html || true
