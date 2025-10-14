
read -p "Enter a number = " num
original=$num
count=0
temp=$num

# 1) Count digits
while [ $temp -gt 0 ]
do
    temp=$((temp / 10))
    count=$((count + 1))
done
echo "Number of digits = $count"

# 2) Odd or even
if [ $((num % 2)) -eq 0 ]; then
    echo "Number is Even"
fi

if [ $((num % 2)) -ne 0 ]; then
    echo "Number is Odd"
fi

# 3) Palindrome check
rev=0
temp=$num
while [ $temp -ne 0 ]
do
    rem=$((temp % 10))
    rev=$((rev * 10 + rem))
    temp=$((temp / 10))
done

if [ $num -eq $rev ]; then
    echo "The number is a Palindrome"
fi

if [ $num -ne $rev ]; then
    echo "The number is not a Palindrome"
fi
