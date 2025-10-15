read -p "Enter a number: " num

rev=$(echo $num | rev)

if [ "$num" == "$rev" ]
then
    echo "$num is a palindrome number."
else
    echo "$num is not a palindrome number."
fi

echo "How many numbers do you want to enter?"
read n

echo "Enter number 1:"
read num
max=$num
min=$num

for ((i=2; i<=n; i++))
do
    echo "Enter number $i:"
    read num

    if [ $num -gt $max ]
    then
        max=$num
    fi

    if [ $num -lt $min ]
    then
        min=$num
    fi
done

echo "Maximum number: $max"
echo "Minimum number: $min"
