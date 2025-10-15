read -p "Enter a number to check for palindrome: " num
ori=$num
while [ $num -gt 0 ]
do
	revNum=$((revNum*10+num%10))
	num=$((num/10))
done
if [ $ori -eq $revNum ]
then
	echo "$ori is a palindrome!"
else
	echo "$ori is not a palindrome!"
fi
echo " "
echo "-----------------------------------------------------------"
echo " "
echo "Enter a number in each line and type '00' to exit"

while true
do
	read num
	if [ $num -eq 00 ]
	then
		break
	fi
		echo $num >> temp.txt
done

echo " "
read -p "Enter even number for ascending and odd for descending" choice

if [ $((choice%2)) -eq 0 ]
then
	sort -n temp.txt
else
	sort -nr temp.txt
fi

rm temp.txt

