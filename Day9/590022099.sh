read -p "enter the number" num
if [ $num -gt 0 ];
then
echo "the number $num is positive"
fi
elif [ $num -lt 0 ];
then
echo "the number is negative"
fi
else
echo "the number $num is 0"
echo "----------------------"
read -p "Enter a number: " num
if [ $num -lt 0 ]; then
    num=$(( -num ))
fi
count=0
if [ $num -eq 0 ]; then
    count=1
else
    while [ $num -ne 0 ]
    do
        num=$(( num / 10 ))
        count=$(( count + 1 ))
    done
fi
echo "Number of digits: $count"
 
