#!/bin/bash

# check if a directory was provided
if [ $# -eq 0 ]; then
  echo "Error: No directory specified"
  echo "Usage: $0 /path to directory"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: '$1' is not a valid directory"
  exit 1
fi

echo .
find "$1" -maxdepth 1 -mindepth 1 -printf "%y %p \n" | sort | while read -r type path; do
  if [ "$type" = "d" ]; then
    echo "$path/"
  else
    echo "$path"
  fi
done
