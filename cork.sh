#!/bin/bash

LIBFOLDER="./subLibs"

args=("$@")
argCount=${#args[@]}

i=0
while [ $i -lt $argCount ]; do
    if [ "${args[i]}" = "-lc" ]; then
        find . -name "${args[i+1]}" | xargs wc -l
        i=$((i + 1))
    else
        echo "Unknown input ${args[i]}"
        exit 1
    fi
    
    #mv forward
    i=$((i + 1))
done