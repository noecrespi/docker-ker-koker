#!/usr/bin/env bash

# Script for testing and debugging purposes.
docker run \
    --rm \
    -p8086:80 \
    --name="primer-docker" \
    -v `pwd`:/home/app \
    primer-docker