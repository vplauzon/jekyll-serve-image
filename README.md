# jekyll-serve-image

Docker Image serving a Jekyll site from git.

Leverages [jekyll/builder](https://hub.docker.com/r/jekyll/builder) image.

It allows building a branch of a Git repository and serve the content from the container.  A typical use case is to preview a [GitHub Pages](https://pages.github.com/) on a draft branch.  It basically allows to stage changes.

Important:  pages are served on **port 4000**.

A great way to use this container is with [Azure Container Instance](https://docs.microsoft.com/en-us/azure/container-instances/container-instances-overview) (ACI) as we show below.  Being serverless ACI fits perfectly in an editing scenario.

# Docker Hub

The image is available on [Docker Hub](https://hub.docker.com/r/vplauzon/jekyll-serve).

Current version is 0.1:

```bash
docker pull vplauzon/jekyll-serve:0.1
```

## Run in Azure

To deploy as an [Azure Container Instance](https://docs.microsoft.com/en-us/azure/container-instances/container-instances-overview) (ACI):

[![Deploy button](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fvplauzon%2Fjekyll-serve-image%2Fmaster%2Fdeploy.json)

This template has the following parameters:

Parameter|Description
---|---
gitUrl|Url to clone the repo (ends with .git)
gitBranch|Branch to clone
dnsNameLabel|DNS Name Label to use with ACI ; the URL to access the site will be `http://<DNS Name Label>.<Azure Region>.azurecontainer.io:4000/`
imageTag|Optional.  To enforce an image tag for the container.  Default to the last "production ready" version.