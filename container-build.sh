#!/usr/bin/env bash
registry="$1"
repository="$2"
tag="$3"
folder=`dirname $0`
dockerfile="$folder/Dockerfile"
usage() {
    echo "Usage:"
    echo "./container-build.sh <registry> <docker_image> <tag>"
    exit 1
}

[ -z "${registry}" ] && usage
[ -z "${repository}" ] && usage
[ -z "${tag}" ] && usage

docker build -f "$dockerfile" -t "${registry}/${repository}:${tag}" -t "${registry}${repository}:latest" .

