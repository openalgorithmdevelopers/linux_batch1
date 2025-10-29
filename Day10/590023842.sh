filename="RohanSharma.txt"
is=0
space=0
while read -n2 character
do
    if [ "$character" = "is" ]; then
        ((is++))
    fi
done < "$filename"
total=0
while IFS= read -r -n1 character
do
    ((total++))
    if [ "$character" = " " ]; then
        ((space++))
    fi
done < "$filename"
echo "Total number of time 'is' is present is: $is"
echo "Total number of characters are: $total"
echo "Total number of spaces: $space"
