#!/bin/bash

echo "" > index.html
echo "<ul>" >> index.html

for i in $(ls)
do
    if [[ "${i}" =~ ".tar.gz" ]]
    then
        echo "  <li><a href=\"${i}\">${i/\.tar.gz/}</a></li>" >> index.html
    fi
    if [[ "${i}" =~ ".tgz" ]]
    then
        echo "  <li><a href=\"${i}\">${i/\.tgz/}</a></li>" >> index.html
    fi
done

echo "</ul>" >> index.html
