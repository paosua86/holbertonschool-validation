clean :
	rm -r dist
build :
	hugo
post:
	hugo new posts/${POST_NAME}.md
	sed -i "s/title: .*/title: ${POST_TITLE}/" ./content/post/${POST_NAME}.md
