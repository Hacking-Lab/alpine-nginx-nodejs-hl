#!/bin/bash
docker build --no-cache -t hackinglab/alpine-nginx-nodejs:3.2.0 -t hackinglab/alpine-nginx-nodejs:3.2 -t hackinglab/alpine-nginx-nodejs:latest -f Dockerfile .

