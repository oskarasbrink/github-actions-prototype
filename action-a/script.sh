#!/bin/sh


for FILE in /github/workspace/dbcArchives/*; do
    cd /github/workspace
    echo $FILE; 
    mkdir "book-$FILE"/src/contents
    cd "book-$FILE"
    stack exec pinot -- --from databricks --to mdbook  /github/workspace/dbcArcives/"$FILE" -o src/contents
    cd src
    find contents -iname '*.md' -type f | sort -h | while read f; do echo "- ["$(basename $f .md)"](./$f)"; done > SUMMARY.md
done