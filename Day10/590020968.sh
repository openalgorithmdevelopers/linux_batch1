#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 filename"
  exit 1
fi
filename="$1"
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi
contents=$(cat "$filename")
space_only=$(echo "$contents" | tr -cd ' ')
spaces=${#space_only}
char_count=${#contents}
count=$(grep -o -w "is" "$filename" | wc -l)
echo "Number of spaces: $spaces"
echo "Number of times 'is' present: $count"
echo "Total number of characters: $char_count"
