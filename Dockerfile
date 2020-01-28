﻿#	Use a Microsoft image with .NET core runtime (https://hub.docker.com/r/microsoft/dotnet/tags/)
FROM jekyll/builder:3.8 AS final

#	Copy package
COPY scripts /scripts

# Make port 80 available to the world outside this container
EXPOSE 80

#	Define environment variables
ENV GIT_URL "no-url-set"
ENV GIT_BRANCH "master"

#	Run startup script
CMD ["sh", "/scripts/startup.sh"]