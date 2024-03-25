#!/bin/bash

# Parse the output of `git status` to extract untracked files
untracked_files=$(git status --porcelain | grep '^??' | sed 's/^?? //')

# Loop through each untracked file and delete it
for file in $untracked_files; do
    rm -rf "$file"
    echo "Deleted: $file"
done
