#!/bin/bash

docker build . -t github-action-runner-1 --build-arg TOKEN=AEX4CWG6ECZNQOXQD6GTU7TEAB6X4 --platform=linux/amd64

docker run github-action-runner-1
