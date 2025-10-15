#!/bin/bash
#Q-1
echo "Enter a number:"
read num
original=$num
reverse=0

while [ $num -gt 0 ]
do
    remainder=$(( $num % 10 ))
    reverse=$(( $reverse * 10 + $remainder ))
    num=$(( $num / 10 ))
done

if [ $original -eq $reverse ]
then
    echo "$original is a palindrome."
else
    echo "$original is not a palindrome."
fi

#Q-2

#!/bin/bash
echo "Enter numbers separated by space:"
read -a numbers
echo "Choose order: (a)scending or (d)escending"
read order

if [ "$order" = "a" ]; then
    echo "Ascending order:"
    printf "%s\n" "${numbers[@]}" | sort -n
else
    echo "Descending order:"
    printf "%s\n" "${numbers[@]}" | sort -nr
fi
