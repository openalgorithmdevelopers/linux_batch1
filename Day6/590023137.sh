read -p "enter first digit of sap" d1
read -p "enter second digit of sap" d2
read -p "enter third digit of sap" d3
read -p "enter fourth digit of sap" d4
read -p " enter fifth digit of sap " d5
sum=$((d1 + d2 + d3 + d4 + d5))
if [ $sum -ge 0 ]; then
echo "sum of all digit in sap id: $sum"
else
echo "error"
fi
