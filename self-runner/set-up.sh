#!/bin/bash

docker build . -t github-action-runner-1 --build-arg TOKEN=AEX4CWC2BB65LWIJDOA445TEABWT2 --platform=linux/amd64

docker run github-action-runner-1
