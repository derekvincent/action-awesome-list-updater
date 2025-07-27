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

set -x
awesome-lists-generator generate $INPUT_LISTS_FILE $GENERATE_ARGS
