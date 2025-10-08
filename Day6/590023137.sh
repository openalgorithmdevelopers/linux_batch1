read -p "Enter your 5 digit SAP ID: " sap
if [ $sap -ge 10000 -a $sap -le 99999 ];
then
	d1=$((sap/10000))
	d2=$(((sap/1000)%10))
	d3=$(((sap/100)%10))
	d4=$(((sap/10)%10))
	d5=$((sap%10))
	sum=$((d1+d2+d3+d4+d5))
	echo "The sum is of sap id $sap = $sum"
else
	echo "Please enter a 5 digit number"
fi
