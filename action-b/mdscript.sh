#!/bin/sh


for FILE in /github/workspace/books/*; do
    cd $FILE
    mdbook init .
    mdbook build
done