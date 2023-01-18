.SILENT:
build: ##Generate the website from the markdown and configuration files in the directory dist/
	@mod init github.com/paosua86/awesome-api
	@go build

help: ##shows commands usage information
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

run: ##Run the application in background
	@./awesome-api >./awesome.log 2>&1 &

clean: ##Cleanup the content of the directory dist/
	@rm -rf awesome-api
	@rm -rf awesome-api.log

test: ## test the application
	@curl http://localhost:9999
	@curl http://localhost:9999/health

stop: ##Stop the application
	@kill "$(pgrep awesome-api)"
