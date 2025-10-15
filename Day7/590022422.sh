
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

echo "The number has $count digits."

