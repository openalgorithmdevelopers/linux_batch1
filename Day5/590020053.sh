echo "Enter two numbers:"
read num1
read num2

a=$((num1 + num2))
b=$((num1 - num2))
c=$((num1 * num2))
d=$((num1 / num2))

echo $a
echo $b
echo $c
echo $d

echo "enter path of your filename"
read filename
echo "Full path: $(realpath $filename)"

