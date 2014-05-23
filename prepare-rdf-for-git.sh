#!/usr/bin/env bash

# Run this script to strip the headers and sort the
# triples into alphabetical order, making comparisons
# between them easier.

for dir in */*; do 
    for filename in $dir/*{.nt,.nq,.ttl,.tql}; do 
        cat $filename | grep -v "^#" | sort -u > $filename.tmp
        mv -f $filename.tmp $filename
        echo $filename processed.
    done;
done
