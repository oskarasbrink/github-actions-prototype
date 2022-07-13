#!/bin/sh

ls /root/tilowiklund

cd /root/tilowiklund/pinot
chown -R $(id -un):$(id -gn) ~
TAR_OPTIONS=--no-same-owner stack setup
mkdir -p src/book
mdbook init .
mkdir src/contents


stack exec pinot -- --from databricks --to mdbook  ~/ASSIGNMENT-1.dbc -o src/contents


cd src 
find contents -iname '*.md' -type f | sort -h | while read f; do echo "- ["$(basename $f .md)"](./$f)"; done > SUMMARY.md
cd ..
mdbook build
ls -l


