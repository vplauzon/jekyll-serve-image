#	Use a Microsoft image with .NET core runtime (https://hub.docker.com/r/microsoft/dotnet/tags/)
FROM jekyll/builder:3.8 AS final

#	Copy package
COPY container-content /scripts

#	Define environment variables
ENV GIT_URL "no-url-set"
ENV GIT_BRANCH "master"

#	Run startup script
CMD ["sh", "/scripts/startup.sh"]