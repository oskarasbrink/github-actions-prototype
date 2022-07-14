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
echo "whereis mannen"
whereis pinot
echo "which mannen"
which pinot
cd /root/tilowiklund/pinot
ls -l
#cd /root/tilowiklund/pinot
mkdir -p book
#mdbook init .
cd book
mkdir -p src/contents
ln -s /github/home /root
printenv PATH
echo $HOME
echo "ls-mannen"

hash -r
export PATH=$PATH:/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/25209f23054efc632f8f95d62490b13ea73df48993cc9cd44b2ce1348aa04b70/8.8.4/bin

stack exec pinot -- --from databricks --to mdbook  /github/workspace/ASSIGNMENT-1.dbc -o src/contents


cd src 
find contents -iname '*.md' -type f | sort -h | while read f; do echo "- ["$(basename $f .md)"](./$f)"; done > SUMMARY.md
cd ..

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -y
rustc --version
exec bash
rustc --version
cargo install mdbook
