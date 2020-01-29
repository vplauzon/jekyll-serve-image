#!/bin/bash

##########################################################################
##  Deploys Azure Container Instance
##
##  Takes following parameters:
##
##  1- Name of resource group
##  2- GIT URL
##  3- GIT Branch
##  4- DNS Label Name
##  5- Image tag

rg=$1
url=$2
branch=$3
dns=$4
tag=$5

echo "Resource group:  $rg"
echo "Git URL:  $url"
echo "Git Branch:  $branch"
echo "DNS Label Name:  $dns"
echo "Image Tag:  $tag"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    gitUrl=$url \
    gitBranch=$branch \
    dnsNameLabel=$dns \
    imageTag=$tag

