#!/bin/env sh

docker build -t lamastex/dockerdev:latest .

docker run --workdir= /root/GIT -v /home/runner/work/github-actions-prototype/github-actions-prototype:/root/GIT lamastex/dockerdev:latest

ls root/GIT
pwd
echo "tjenare mannen"
