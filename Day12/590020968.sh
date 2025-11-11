#!/bin/bash

echo "Enter the file name:"
read FILENAME

if [ ! -r "$FILENAME" ]; then
    echo "File does not exist or is not readable!"
    exit 1
fi

WORD=$(tr -cs 'a-zA-Z' '[\n*]' < "$FILENAME" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | awk 'NR==1 {print $2}')
COUNT=$(tr -cs 'a-zA-Z' '[\n*]' < "$FILENAME" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | awk 'NR==1 {print $1}')

if [ -n "$WORD" ]; then
    echo "The word occurring the most is: \"$WORD\" (appeared $COUNT times)"
else
    echo "No words found in the file."
fi

