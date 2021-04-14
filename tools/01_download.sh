#!/bin/bash

grep -v '^#' ../whitelist/list.csv |\
    awk -F\, '{print $1, $2}' | while read id url; do
        echo -n "$id "
        curl -s $(echo $url | sed 's/.*github.com/https:\/\/raw.githubusercontent.com/;s/\/blob//') -o data/file-$id
    done
