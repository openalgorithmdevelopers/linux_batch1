
filename="RohanSharma.txt"
space_count=0
is_count=0
char_count=0
prev_char=""

while IFS= read -r -n1 character
do
  char_count=$((char_count + 1))

  if [ "$character" = " " ]; then
    space_count=$((space_count + 1))
  fi

  pair="${prev_char}${character}"
  if [ "$pair" = "is" ]; then
    is_count=$((is_count + 1))
  fi

  prev_char="$character"
done < "$filename"

echo "Number of spaces: $space_count"
echo "Number of times 'is' appears: $is_count"
echo "Total number of characters: $char_count"

