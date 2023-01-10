# Awesome Inc. website Docs


## Lifecycle:
clean: Cleanup the content of the
build: Generate the website from the markdown and configuration files in the directory dist/
post: #reate a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
help: shows commands usage information
lint: updated to lint the files README.md and DEPLOY.md with markdownlint command line
package: creates a file named awesome-website.zip

## Prerequisites:
    GNU Make in version 3.81+
    Go Hugo v0.80+

## Workflow:

    The workflow is executed into Ubuntu 18.04 environment
    Required tools are installed prior to any make target, by executing the script setup.sh
