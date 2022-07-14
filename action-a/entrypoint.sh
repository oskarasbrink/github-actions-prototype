#!/bin/sh

#ls /root/tilowiklund
echo "first mannen"
pwd
ls
cd /root/tilowiklund/pinot
chown -R $(id -un):$(id -gn) ~
#TAR_OPTIONS=--no-same-owner stack setup
#stack build
mkdir -p src/book
#mdbook init .
mkdir src/contents

exec bash
echo "~"

echo "punktmannen"
ls -l
echo "exec pinot"
cd /root/tilowiklund/pinot
stack exec pinot -- --from databricks --to mdbook  ~/ASSIGNMENT-1.dbc -o src/contents
echo "."
ls
echo "src"
ls src
echo "src/contents"
ls src/contents

cd src 
find contents -iname '*.md' -type f | sort -h | while read f; do echo "- ["$(basename $f .md)"](./$f)"; done > SUMMARY.md
cd ..
echo "book"
ls book
#mdbook build
echo "ls -l"
ls -l


