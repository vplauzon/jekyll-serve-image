#!/bin/bash

##########################################################################
##  Pull, tag and push a container
##
##  Inputs:
##      image:      Image name
##      fullTag:    Tag with minor version
##      majorTag:   Tag with major version only

image=$1
fullTag=$2
majorTag=$3

echo
echo "Image name:  $image"
echo "Full tag:  $fullTag"
echo "Major tag:  $majorTag"

echo
echo "Pull"

docker pull "$image:$fullTag"

echo
echo "Tag"

docker tag "$image:$fullTag" "$image:$majorTag"

echo
echo "Push"

docker push "$image:$majorTag"