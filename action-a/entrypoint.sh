#!/bin/sh

#ls /root/tilowiklund
#echo "hoem"
#echo $HOME
#echo "home change"
#sh -c "echo HOME=/root >> $GITHUB_ENV"
#echo "HOME=/root" >> $GITHUB_ENV
#echo HOME=/root | tee -a $GITHUB_ENV
#usermod -d /root root
echo $HOME
#mv /root/tilowiklund /github/home
chown -R $(id -un):$(id -gn) ~

#TAR_OPTIONS=--no-same-owner stack setup
#stack build
#/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin
ls
#cd /github/home
pwd

#cd /github/home/tilowiklund/pinot
#ls -l
cd tilowiklund/pinot
mkdir -p book
#mdbook init .
cd book
mkdir -p src/contents

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


