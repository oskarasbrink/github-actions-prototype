#!/bin/sh


for FILE in /github/workspace/booksmannen/*; do
    cd $FILE
    mdbook init .
    mdbook build
done