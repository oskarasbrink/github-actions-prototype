#!/bin/sh


for FILE in /github/workspace/dbcArchives/*; do
    cd /github/workspace
    echo $FILE; 
    mkdir -p "$(basename "$FILE" .dbc)"/src/contents
    cd "$(basename "$FILE" .dbc)"
    stack exec pinot -- --from databricks --to mdbook  $FILE -o src/contents
    cd src
    find contents -iname '*.md' -type f | sort -h | while read f; do echo "- ["$(basename $f .md)"](./$f)"; done > SUMMARY.md
done