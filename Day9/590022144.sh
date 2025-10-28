echo "Number $1"
num=$1
if [ $num -gt 0 ]; then
	echo "is positive"
elif [ $num -lt 0 ]; then
	echo "is negative"
else
	echo "is zero"
fi

if [ $num -eq 0 ]
then
    count=1
else
    while [ $num -ne 0 ]
    do
        num=$((num / 10))
        count=$((count + 1))
    done
fi
echo "Digits = $count"
