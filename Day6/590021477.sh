read -p "enter the sap id: " sapid
a=$((sapid%10))
sapid=$((sapid/10))
b=$((sapid%10))
sapid=$((sapid/10))
c=$((sapid%10))
sapid=$((sapid/10))
d=$((sapid%10))
sapid=$((sapid/10))
e=$((sapid%10))
sapid=$((sapid/10))
f=$((sapid%10))
sapid=$((sapid/10))
g=$((sapid%10))
sapid=$((sapid/10))
h=$((sapid%10))
sapid=$((sapid/10))
i=$((sapid%10))
sapid=$((sapid/10))
sum=$((a+b+c+d+e+f+g+h+i))
echo "Sum is : $sum"


