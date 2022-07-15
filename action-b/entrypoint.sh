#! /bin/sh



cd /github/workspace/books
mdbook init . -y
mdbook build
ls book
pwd

