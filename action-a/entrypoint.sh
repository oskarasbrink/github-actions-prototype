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


export PATH=$PATH:/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/25209f23054efc632f8f95d62490b13ea73df48993cc9cd44b2ce1348aa04b70/8.8.4/bin
#cd /github/workspace
#mkdir books
#cd books
#mkdir src/contents
chmod a+x /github/workspace/action-a/script.sh
cd /github/workspace/action-a 
sh script.sh
#stack exec pinot -- --from databricks --to mdbook  /github/workspace/ASSIGNMENT-1.dbc -o src/contents


#cd src
#find contents -iname '*.md' -type f | sort -h | while read f; do echo "- ["$(basename $f .md)"](./$f)"; done > SUMMARY.md
#cd ..

ls /github/workspace
ls /github/workspace/booksmannen