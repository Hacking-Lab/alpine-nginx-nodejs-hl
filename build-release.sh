#!/bin/bash

docker build --no-cache -t hackinglab/alpine-nginx-nodejs:$1.0 -t hackinglab/alpine-nginx-nodejs:$1 -t hackinglab/alpine-nginx-nodejs:latest -f Dockerfile .

docker push hackinglab/alpine-nginx-nodejs
docker push hackinglab/alpine-nginx-nodejs:$1
docker push hackinglab/alpine-nginx-nodejs:$1.0

