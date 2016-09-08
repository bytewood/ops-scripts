#!/bin/sh

tag="$1"

git tag $tag
git push origin $tag

