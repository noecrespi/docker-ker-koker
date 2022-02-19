#!/usr/bin/env bash

docker run \
    --rm \
    -p8086:80 \
    --name="primer-docker" \
    -v `pwd`:/home/app \
    -v name:/data \
    primer-docker