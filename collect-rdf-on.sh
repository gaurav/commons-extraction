#!/usr/bin/env bash

# Run this script to strip the headers and sort the
# triples into alphabetical order, making comparisons
# between them easier.

for dir in */*; do 
    for filename in $dir/*.nt; do 
        # echo Searching for $1.
        url="<http://commons.dbpedia.org/resource/$1>"
        found=`grep "$url" $filename`
        echo ${found//$url/[$1]}
        #grep "$url" $filename
    done;
done
