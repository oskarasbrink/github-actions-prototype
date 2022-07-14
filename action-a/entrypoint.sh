#!/bin/sh

#ls /root/tilowiklund

#sh -c "echo HOME=/root >> $GITHUB_ENV"
#echo "HOME=/root" >> $GITHUB_ENV
#echo HOME=/root | tee -a $GITHUB_ENV

#usermod -d /root root
echo $HOME
#cp /root/tilowiklund /github/home
#cp /root/.stack /github/home
chown -R $(id -un):$(id -gn) ~

#TAR_OPTIONS=--no-same-owner stack setup
#stack build
#/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin
ls

pwd

cd /root/tilowiklund/pinot
ls -l
#cd /root/tilowiklund/pinot
mkdir -p book
#mdbook init .
cd book
mkdir -p src/contents
ln -s /github/home /root
printenv PATH
export PATH=$PATH:/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin
#PATH = /root/.cabal/bin:/root/.local/bin:/opt/ghc/9.2.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
echo "exec pinot"
hash -r
export PATH=$PATH:/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin
stack exec pinot -- --from databricks --to mdbook  /github/workspace/ASSIGNMENT-1.dbc -o src/contents
#PATH=/github/home/.stack/snapshots/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin:/github/home/.stack/compiler-tools/x86_64-linux-tinfo6/ghc-8.8.4/bin","/github/home/.stack/programs/x86_64-linux/ghc-tinfo6-8.8.4/bin:/root/.cabal/bin:/root/.local/bin:/opt/ghc/9.2.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
hash -r
export PATH=$PATH:/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin
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


