read -p "Enter your Sap ID: " sap
count=0
while [ $sap -ne 0 ]
do
	sap=$((sap/10))
	count=$((count+1))
done
echo "Number of digits in your Sap are $count"
