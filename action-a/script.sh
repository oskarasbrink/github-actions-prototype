#!/bin/sh


for FILE in /github/workspace/dbcArchives/*; do
    cd /github/workspace
    echo $FILE; 
    #mkdir "book-$FILE"/src/contents
    mkdir book-"(basename "$FILE" .dbc)"/src/contents
    cd book-book-"$(basename "$FILE" .dbc)"
    stack exec pinot -- --from databricks --to mdbook  /github/workspace/dbcArcives/"$FILE" -o src/contents
    cd src
    find contents -iname '*.md' -type f | sort -h | while read f; do echo "- ["$(basename $f .md)"](./$f)"; done > SUMMARY.md
done