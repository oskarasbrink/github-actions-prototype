#!/bin/env sh

docker build -t lamastex/dockerdev:latest .

docker run --rm -d -it --name=spark-gdelt --mount type=bind,source=${HOME},destination=/root/GIT lamastex/dockerdev:latest

ls
pwd
echo "tjenare mannen"
