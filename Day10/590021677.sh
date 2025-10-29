fileName="RohanSharma.txt"
count=0
searchForChar=" "   

while IFS= read -n1 character
do
    if [ "$character" = "$searchForChar" ]; then
        ((count++))
    fi
done < "$fileName"

echo "Number of spaces in '$fileName': $count"

fileName="RohanSharma.txt"
count=0


while IFS= read -n1 character
do
    ((count++))
done < "$fileName"

echo "Total number of characters in '$fileName': $count"


