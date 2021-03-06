#!/bin/sh
registry="$1"
repository="$2"
tag="$3"
folder=`dirname $0`
dockerfile="$folder/Dockerfile"

usage() { 
    echo "Usage:"
    echo "./container-push.sh <registry> <repository> <tag>"
    echo "e.g."
    echo "./container-push.sh localhost:500 bytewood/ops-microservice 999"
    exit 1
}

[ -z "${registry}" ] && usage
[ -z "${repository}" ] && usage
[ -z "${tag}" ] && usage

docker push "${registry}/${repository}:${tag}"

