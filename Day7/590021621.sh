read -p "Enter a number: " num
ori=$num
while [ $num -gt 0 ] 
do
	num=$((num/10))
	count=$((count+1))
done
echo "Number of digits is $count!!"
echo " "
echo "--------------------------------------------------------------------------------------------"
echo " "
if   [ $((ori%2)) -eq 0 ]
then
	echo "Even number"
else
	echo "Odd number"
fi
echo " "
echo "---------------------------------------------------------------------------------------------"
echo " "
ori2=$ori
while [ $ori -gt 0 ]
do
	sum=$((sum*10+ori%10))
	ori=$((ori/10))
done
if [ $sum -eq $ori2 ]
then
	echo "Palindrome!!"
else
	echo "Not a palindrome!!"

fi

