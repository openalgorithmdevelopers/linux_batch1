echo "Enter the name of the file you want to search"
read filename
echo "Enter the name of the directory you want to search in"
read directory
echo "Searching for '$filename' in '$directory'..."
echo " "
ls -r "$directory" | grep "$filename"
echo "----------------------------------------------------------------------------"
echo "Enter number 1"
read num1
echo "Enter number 2"
read num2
echo " "
echo "The sum is '$((num1+num2))'"
echo " "
echo "The product is '$((num1*num2))'"
echo " "
echo "The remainder is '$((num1/num2))'"
echo " "
echo "The difference is '$((num1-num2))'"
echo "---------------------END--------------------"
