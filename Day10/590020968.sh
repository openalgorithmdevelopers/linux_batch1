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

spaces=$(grep -o " " "$filename" | wc -l)
is_count=$(grep -o -w "is" "$filename" | wc -l)
char_count=$(wc -m < "$filename")

echo "Number of spaces: $spaces"
echo "Number of times 'is' present: $is_count"
echo "Total number of characters: $char_count"

