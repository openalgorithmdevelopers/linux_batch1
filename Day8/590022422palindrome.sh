read -p "Enter a number: " num

rev_num=$(echo "$num" | rev)

if [[ "$num" == "$rev_num" ]]; then
    echo "$num is a palindrome number."
else
    echo "$num is not a palindrome number."
fi
echo ""
echo "---------------------------------------------"
echo ""
echo "Enter numbers separated by spaces:"
read input
first=true
for num in $input; do
    if $first; then
        min=$num
        max=$num
        first=false
    else
   if (( $(echo "$num < $min" | bc -l) )); then
            min=$num
        fi

        if (( $(echo "$num > $max" | bc -l) )); then
            max=$num
        fi
    fi
done
echo "Smallest number: $min"
echo "Largest number: $max"
