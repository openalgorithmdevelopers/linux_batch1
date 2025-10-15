read -p "Enter a number: " num

rev=$(echo $num | rev)

if [ "$num" == "$rev" ]
then
    echo "$num is a palindrome number."
else
    echo "$num is not a palindrome number."
fi




echo "enter a number:" 
read number 
echo "enter 1 for ascending and 2 for decending"
read choice

for n in number
do
	echo$n
done | {
    if [ $choice -eq 1 ]
    then
        sort -n
    else
        sort -nr
    fi
