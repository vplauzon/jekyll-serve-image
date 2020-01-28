#!/bin/bash

##########################################################################
##  Startup container
##
##  Inputs:
##      GIT_URL:        URL to clone git repo
##      GIT_BRANCH:     Branch of the repo to clone

url=$1
branch=$2

echo
echo "Repo Url:  $(url)"
echo "Branch:  $(branch)"

echo
echo "pwd:  $(pwd)"

echo
echo "Clone repo"

git clone -b $branch $url

jekyll serve --host=0.0.0.0 --port 80