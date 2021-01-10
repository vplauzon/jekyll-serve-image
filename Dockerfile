#	Use official Jekyll builder image (cf https://hub.docker.com/r/jekyll/builder)
FROM jekyll/builder:4.2.0 AS final

#	Copy package
COPY container-content /scripts

#	Define environment variables
ENV GIT_URL "no-url-set"
ENV GIT_BRANCH "master"

#	Run startup script
CMD ["sh", "/scripts/startup.sh"]
