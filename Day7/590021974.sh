read -p "enter a number" num
echo "Number of digits: ${#num}"
if (( num%2==0 ));
then 
echo "number is even"
fi
if (( num%2!=0 ))
then
echo "number is odd"
fi
revnum=$(echo "$num" | rev)
if (( "$num" == "$revnum" )); 
then
    echo "The number is a palindrome."
else
    echo "The number is not a palindrome."
fi
