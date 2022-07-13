#!/bin/env sh

docker build -t lamastex/dockerdev:latest .

docker run -v /home/runner/work/github-actions-prototype/github-actions-prototype:/root/GIT lamastex/dockerdev:latest

