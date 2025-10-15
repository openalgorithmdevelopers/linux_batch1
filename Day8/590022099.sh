read -p "Enter a number: " num
temp=$num
revNum=0
while [ $num -gt 0 ]
do
    digit=$((num % 10))
    revNum=$((revNum * 10 + digit))
    num=$((num / 10))
done

echo "Reversed number: $revNum"

if [ $temp -eq $revNum ]; then
    echo "It is a palindrome"
else
    echo "Not a palindrome"
fi
echo "-----------------------"
#!/bin/bash

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
echo "The $choice value is: $result"
