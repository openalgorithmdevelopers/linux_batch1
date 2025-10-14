read -p "Enter a number:" num

original=$num

count=0
temp=$num
while [ $temp -gt 0 ]
do
    temp=$((temp / 10))
    count=$((count + 1))
done

echo "Number of digits: $count"

if (( num % 2 == 0 )); then
    echo "The number is even."
else
    echo "The number is odd."
fi

rev=0
temp=$num

while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    rev=$((rev * 10 + digit))
    temp=$((temp / 10))
done

if [ $rev -eq $num ]; then
    echo "The number is a palindrome."
else
    echo "The number is not a palindrome."
fi
