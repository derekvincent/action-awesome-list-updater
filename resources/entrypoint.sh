#!/bin/bash

# Stops script execution if a command has an error
set -e

# set default generation args if not provided
GENERATE_ARGS="$INPUT_GENERATE_ARGS"
if [ -z "$GENERATE_ARGS" ]; then
    # currently no default args
    GENERATE_ARGS=""
fi

if [ -z "$INPUT_LISTS_FILE" ]; then
    # set default
    INPUT_LISTS_FILE="awesome-list.yaml"
fi

# Navigate to the github action home directory
if [ -n "$GITHUB_WORKSPACE" ]; then
    cd "$GITHUB_WORKSPACE"
fi

# Check if the awesome-lists-generator is installed
#if ! command -v awesome-lists-generator &> /dev/null; then
#    echo "awesome-lists-generator could not be found. Please ensure it is installed."
#    exit 1
#fi

set -x
awesome-lists-generator generate $INPUT_LISTS_FILE 
