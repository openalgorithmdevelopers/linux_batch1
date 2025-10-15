read -p "Enter a number:" num
temp=$((num))
r=0

while [ $temp -gt 0 ]
do
	d=$((temp%10))
	r=$((r*10+d))
	temp=$((temp/10))
done

if [ $r -eq $num ]
then
	echo "It is a palindrome"
else
	echo "It is not a palindrome"
fi

