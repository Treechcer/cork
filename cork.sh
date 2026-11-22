#!/bin/bash

LIBFOLDER="$(dirname "$(readlink -f "$0")")/subLibs"
echo "$LIBFOLDER"

args=("$@")
argCount=${#args[@]}

i=0
while [ $i -lt $argCount ]; do
    if [ "${args[i]}" = "-lc" ]; then
        source "$LIBFOLDER/LineCounter.sh" "${args[i+1]}"
        i=$((i + 1))
    else
        echo "Unknown input ${args[i]}"
        exit 1
    fi
    
    #mv forward
    i=$((i + 1))
done