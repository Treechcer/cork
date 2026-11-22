#!/bin/bash

#echo "$1"

find . -name "$1" | xargs wc -l