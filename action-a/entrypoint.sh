#!/bin/env sh

docker build -t lamastex/dockerdev:latest .

docker run --workdir= /opt/workspace -v /home/runner/work/github-actions-prototype/github-actions-prototype:/root/GIT --entrypoint /bin/ls lamastex/dockerdev:latest

ls root/GIT
pwd
echo "tjenare mannen"
