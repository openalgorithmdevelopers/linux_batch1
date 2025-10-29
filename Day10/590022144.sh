fileName="RohanSharma.txt"

count_spaces=0
count_is=0
count_chars=0
prev_char=""

while IFS= read -r -n1 character
do
    ((count_chars++))

    if [ "$character" = " " ]; then
        ((count_spaces++))
    fi

    if [ "$prev_char" = "i" ] && [ "$character" = "s" ]; then
        ((count_is++))
    fi

    prev_char="$character"
done < "$fileName"

echo "Total characters = $count_chars"
echo "Number of spaces = $count_spaces"
echo "Number of 'is' =  $count_is"
