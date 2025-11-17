#!/bin/bash

# Check if a filename was given when running the script
if [ -z "$1" ]; then
  echo "Please provide a filename as an argument."
  echo "Example: $0 yourfile.txt"
  exit 1
fi

# Save the input filename to a variable
input_file=$1

output_file="590024562_output.txt"

words=$(tr '[:upper:]' '[:lower:]' < "$input_file" | tr -c '[:alnum:]' '\n' | grep -v '^$')

declare -A word_count

while read word; do
  ((word_count[$word]++))
done <<< "$words"

unique_words=${#word_count[@]}

word_list=""
for word in "${!word_count[@]}"; do
  word_list+="${word_count[$word]} $word"$'\n'
done

sorted_words=$(echo "$word_list" | sort -nr)

top_five=$(echo "$sorted_words" | head -5)

{
  echo "Top five most occurring words:"
  echo "$top_five" | awk '{print $2 ": " $1}'
  echo
  echo "Total number of unique words: $unique_words"
  echo
  echo "All unique words with their frequencies:"
  echo "$sorted_words" | awk '{print $2 ": " $1}'
} > "$output_file"

echo "Your word statistics have been saved to $output_file"

