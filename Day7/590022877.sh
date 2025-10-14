
read -p "Enter a number: " num

original=$num        # Store original number
num=${num#-}         # Remove negative sign (if any)

count=0
temp=$num

while [ $temp -gt 0 ] 2>/dev/null || [ $count -eq 0 ]
do
    temp=$(( temp / 10 ))
    count=$(( count + 1 ))
done

echo "Number of digits: $count"

rem=$(( num % 2 ))
[ $rem -eq 0 ] && echo "The number is even." || echo "The number is odd."

temp=$num
rev=0

while [ $temp -gt 0 ]
do
    digit=$(( temp % 10 ))
    rev=$(( rev * 10 + digit ))
    temp=$(( temp / 10 ))
done

[ $rev -eq $num ] && echo "The number is a palindrome." || echo "The number is not a palindrome."

