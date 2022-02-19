#!/bin/bash

docker run \
    -p8086:80 \
    --name="primer-docker" \
    -v `pwd`:/home/app \
    step2