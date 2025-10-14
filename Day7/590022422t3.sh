
echo "Enter a number:"
read num

rev=0
temp=$num

while [ $temp -gt 0 ]
do
    digit=$((temp % 10))         # extract last digit
    rev=$((rev * 10 + digit))    # build reverse number
    temp=$((temp / 10))          # remove last digit
done

if [ $num -eq $rev ]
then
    echo "$num is a palindrome"
else
    echo "$num is not a palindrome"
fi

