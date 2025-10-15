read -p "enter sap id:" sap
if [ sap -ne 0]
then
count -eq 0
sap=$((sap/10))
while [ sap -ne 0]
do
sap=$(( sap/10 ))
count=$count+1
done
echo "number of digits $count"
