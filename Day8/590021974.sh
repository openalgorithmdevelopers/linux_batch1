read -p "Enter a number" num 
revnum=$(echo "$num" | rev)
if [[ "$num" == "$revnum" ]]; then
echo "$num is a palindrome"
else
echo "$num is not a palindrome"
fi
echo "Enter numbers separated by space:"
read -a numbers
echo "Find maximum or minimum? (max/min):"
read choice
result=${numbers[0]}
for num in "${numbers[@]}"
do
    if [ "$choice" = "max" ]; then
        if [ "$num" -gt "$result" ]; then
            result=$num
        fi
    elif [ "$choice" = "min" ]; then
        if [ "$num" -lt "$result" ]; then
            result=$num
        fi
    else
        echo "Invalid choice. Please enter 'max' or 'min'."
        exit 1
    fi
done
echo "the $choice value is $result" 
