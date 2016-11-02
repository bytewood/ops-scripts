#!/usr/bin/env bash
repository=$1
tag=$2
folder=`dirname $0`
dockerfile="$folder/Dockerfile"
usage() {
    echo "Usage:"
    echo "./docker-build.sh <registry> <docker_image> <tag>"
    exit 1
}

[ -z "${registry}" ] && usage
[ -z "${repository}" ] && usage
[ -z "${tag}" ] && usage

docker build -f "$dockerfile" -t "${registry}/${repository}:${tag}" -t "${registry}${repository}:latest" .

