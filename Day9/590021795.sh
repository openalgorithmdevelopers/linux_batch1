
read -p "enter a number" num

if [ $num -gt 0 ]
then
    echo "It is a positive number!"
elif [ $num -lt 0 ]
then
    echo "It is a negative number!"
else
    echo "Number is Zero"
fi
