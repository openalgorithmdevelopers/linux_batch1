#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input="$1"
output="file_name_stats.txt"
declare -A word_count

while read -r line; do
  for word in $line; do
    word=$(echo "$word" | tr '[:upper:]' '[:lower:]' | tr -cd 'a-z0-9')
    if [ -n "$word" ]; then
      ((word_count["$word"]++))
    fi
  done
done < "$input"

echo "Top five most occurring words:" > "$output"
for word in "${!word_count[@]}"; do
  echo "${word_count[$word]} $word"
done | sort -nr | head -5 >> "$output"

echo "" >> "$output"
echo "Total number of unique words:" >> "$output"
echo "${#word_count[@]}" >> "$output"

echo "Done! Check $output"

