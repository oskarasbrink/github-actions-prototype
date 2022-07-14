#!/bin/sh

#ls /root/tilowiklund

cd /root/tilowiklund/pinot
chown -R $(id -un):$(id -gn) ~
echo $HOME
#TAR_OPTIONS=--no-same-owner stack setup
#stack build
#/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin
mkdir -p book
#mdbook init .
cd book
mkdir -p src/contents
echo "~"

echo "punktmannen"
ls -l
echo "exec pinot"
stack exec pinot -- --from databricks --to mdbook  /github/workspace/ASSIGNMENT-1.dbc -o src/contents
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


