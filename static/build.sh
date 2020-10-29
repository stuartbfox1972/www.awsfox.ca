#!/bin/bash

StackName=$1
StaticAssetsBucket=$2

cd static

aws s3 sync --delete --recursive --exclude buildspec.yml --exclude build.sh ./ s3://"${StaticAssetsBucket}"/
