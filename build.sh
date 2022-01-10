#!/bin/bash
readonly VERSION='0.1.0'

cd "$(dirname $0)" || exit 1

docker build ${@} -t andarius/nginx-proxy:${VERSION} .
docker push andarius/nginx-proxy:${VERSION}
