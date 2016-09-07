#!/usr/bin/env bash
repository=$1
tag=$2
folder=`dirname $0`
dockerfile="$folder/Dockerfile"
usage() {
    echo "Usage:"
    echo "./docker-build.sh docker_image tag"
    exit 1
}

[ -z "${repository}" ] && usage
[ -z "${tag}" ] && usage

docker -f "$dockerfile" build -t ${repository}:${tag} -t ${repository}:latest .

