#!/bin/bash

# Function to convert Windows paths to Unix or 'where' paths
path() {
    local path="$1"
    if [[ "$path" =~ ^[a-zA-Z]:\\ ]]; then
        # Windows path detected, convert to Unix path
        echo "$path" | sed 's/\\/\//g; s/^\([a-zA-Z]\):/\/\1/'
    else
        # Unix path or 'where' path detected, return as it is
        echo "$path"
    fi
}
