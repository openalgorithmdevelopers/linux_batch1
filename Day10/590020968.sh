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
count=0
text=" $contents "
pos=0
while true; do
  match=$(expr index "${text:pos}" " is ")
  if [ "$match" -eq 0 ]; then
    break
  fi
  count=$((count + 1))
  pos=$((pos + match + 2))
done
echo "Number of spaces: $spaces"
echo "Number of times 'is' present: $count"
echo "Total number of characters: $char_count"
