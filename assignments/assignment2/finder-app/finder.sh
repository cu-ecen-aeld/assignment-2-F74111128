#!/bin/bash

if [ "$#" -ne 2 ]; then
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    exit 1
fi

file_count=$(find "$filesdir" -type f | wc -l)
match_count=$(grep -r "$searchstr" "$filesdir" | wc -l)
echo "The number of files are $file_count and the number of matching lines are $match_count"
