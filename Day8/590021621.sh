read -p "Enter a number: " num
rev=0
n=$num

while [ $n -gt 0 ]
do
    rem=$((n % 10))
    rev=$((rev * 10 + rem))
    n=$((n / 10))
done

if [ $rev -eq $num ]; then
    echo "$num is a palindrome number."
else
    echo "$num is not a palindrome number."
fi

