#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

file=$1
output="590024562_output.txt"

words=$(tr '[:upper:]' '[:lower:]' < "$file" | tr -c '[:alnum:]' '[\n*]' | grep -v '^$')

declare -A word_counts
while read -r word; do
  ((word_counts[$word]++))
done <<< "$words"

total_unique=${#word_counts[@]}

sorted_words=$(for w in "${!word_counts[@]}"; do echo "${word_counts[$w]} $w"; done | sort -rn)

top_five=$(echo "$sorted_words" | head -5)

{
  echo "Top five most occurring words:"
  echo "$top_five" | awk '{print $2 ": " $1}'
  echo
  echo "Total number of unique words: $total_unique"
  echo
  echo "Listing of all unique words and their frequency:"
  echo "$sorted_words" | awk '{print $2 ": " $1}'
} > "$output"

echo "Statistics saved to $output"
