#!/bin/bash

set -euo pipefail

IMAGE='docker.io/serbangilvitu/hugo-builder'
TAG=$(git rev-parse --short HEAD)

docker build . -f Dockerfile -t ${IMAGE}:${TAG}
docker tag ${IMAGE}:${TAG} ${IMAGE}:latest
docker push ${IMAGE}:${TAG}
docker push ${IMAGE}:latest