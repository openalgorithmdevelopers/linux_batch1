#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_name>"
  exit 1
fi

input_file="$1"

if [ ! -f "$input_file" ]; then
  echo "Error: The file '$input_file' was not found."
  exit 1
fi

word_list="words.txt"
> "$word_list"

grep -o '[a-zA-Z0-9]*' "$input_file" > "$word_list"

unique_words=()
word_counts=()
total_unique_words=0

while read -r word; do
  if [ -z "$word" ]; then
    continue
  fi
  word_found=0
  for i in "${!unique_words[@]}"; do
    if [ "${unique_words[$i]}" == "$word" ]; then
      word_counts[$i]=$((word_counts[$i] + 1))
      word_found=1
      break
    fi
  done
  if [ $word_found -eq 0 ]; then
    unique_words+=("$word")
    word_counts+=("1")
    total_unique_words=$((total_unique_words + 1))
  fi
done < "$word_list"

echo "Total number of unique words: $total_unique_words"

top_words_count=0
while [ $top_words_count -lt 5 ] && [ $top_words_count -lt $total_unique_words ]; do
  highest_count=0
  highest_index=-1
  for i in "${!word_counts[@]}"; do
    if [ "${word_counts[$i]}" -gt "$highest_count" ]; then
      highest_count="${word_counts[$i]}"
      highest_index=$i
    fi
  done
  echo "${unique_words[$highest_index]}: $highest_count"
  word_counts[$highest_index]=-1
  top_words_count=$((top_words_count + 1))
done

echo -e "\nAll unique words and their frequencies:"
for i in "${!unique_words[@]}"; do
  echo "${unique_words[$i]}: ${word_counts[$i]}"
done

