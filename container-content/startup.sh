#!/bin/bash

##########################################################################
##  Startup container
##
##  Environment variables:
##      GIT_URL:        URL to clone git repo
##      GIT_BRANCH:     Branch of the repo to clone

url=$GIT_URL
branch=$GIT_BRANCH

echo
echo "Repo Url:  $url"
echo "Branch:  $branch"

echo
echo "Container version:  " + $(cat /scripts/version.txt)

echo
echo "pwd:  $(pwd)"

echo
echo "Clone repo"

git clone -b $branch $url .
/scripts/git-pull-loop.sh &

echo
echo "ls -l"

ls -l

echo
echo "jekyll serve"

jekyll serve