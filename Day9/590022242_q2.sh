num=$1
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

echo "Number of digits: $count"
