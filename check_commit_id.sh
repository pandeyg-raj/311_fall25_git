#!/bin/bash

# Get the latest commit ID on the current branch
commit_id=$(git rev-parse HEAD)

# Check if the command succeeded
if [ $? -eq 0 ]; then
    echo "Latest commit ID: $commit_id"
else
    echo "Error: Not a git repository or no commits found."
fi
