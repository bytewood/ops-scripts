#!/bin/sh

semver=`cat gradle.properties | grep -i application_version | awk -F = '{print $2}'`
build_number=$1
tag="$semver.$build_number"

git tag $tag
git push origin $tag

