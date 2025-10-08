echo "Enter SAP id"
read num
if [ $num -ge 100 -a $num -le 999 ]
then
d1=$((num/100))
d2=$(((num/10) % 10))
d3=$((num % 10))
sum=$((d1+d2+d3))
echo "SUM IS: = $sum"
else
echo "Enter valid digits"
fi
 
