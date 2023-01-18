clean: ##Cleanup the content of the directory dist/
	@rm -rf awesome-api
	@rm -rf awesome-api.log
build: ##Generate the website from the markdown and configuration files in the directory dist/
	@mkdir awesome-api
	@cd awesome-api
	@go mod init github.com/paosua86/awesome-api

post: ##Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	@hugo new posts/${POST_NAME}.md
	@sed -i "s/title: .*/title: ${POST_TITLE}/" ./content/posts/${POST_NAME}.md
help: ##shows commands usage information
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

run: ##Run the application in background
	@./awesome-api >./awesome.log 2>&1 &.

test: ## test the application
	@curl http://localhost:9999
	@curl http://localhost:9999/health

stop: ##Stop the application
	@kill "$(pgrep awesome-api)"
