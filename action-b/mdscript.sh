#!/bin/sh


for FILE in /github/workspace/booksmannen/*; do
    cd $FILE
    mdbook init . -y
    mdbook build
done