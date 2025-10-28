
num=$1   
digCount=0

if [ $# -eq 0 ]; then
    echo "Please give a number as command line argument"
    exit 1
fi

if [ $num -gt 0 ]; then
    echo "Positive number"
elif [ $num -lt 0 ]; then
    echo "Negative number"
else
    echo "Zero"
fi

if [ $num -lt 0 ]; then
    num=$(( -num ))
fi

if [ $num -eq 0 ]; then
    digCount=1
else
    while [ $num -gt 0 ]
    do
        digCount=$((digCount + 1))
        num=$((num / 10))
    done
fi

echo "Number of digits: $digCount"

