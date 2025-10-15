read -p "Enter your SAP ID: " sapid

echo "1st Digit: ${sapid:0:1}"
echo "2nd Digit: ${sapid:1:1}"
echo "3rd Digit: ${sapid:2:1}"
echo "4th Digit: ${sapid:3:1}"
echo "5th Digit: ${sapid:4:1}"
echo "6th Digit: ${sapid:5:1}"
echo "7th Digit: ${sapid:6:1}"
echo "8th Digit: ${sapid:7:1}"
echo "9th Digit: ${sapid:8:1}"

echo "Sum of all digits: $(( ${sapid:0:1} + ${sapid:1:1} + ${sapid:2:1} + ${sapid:3:1} + ${sapid:4:1} + ${sapid:5:1} + ${sapid:6:1} + ${sapid:7:1} + ${sapid:8:1} ))"

