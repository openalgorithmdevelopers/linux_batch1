read -p "Enter the SAP ID: " SAPID
COUNT=0
TEMP=$SAPID
while [ "$TEMP" -gt 0 ]; do
    TEMP=$((TEMP / 10))
    if [ "$TEMP" -ge 0 ]; then
        COUNT=$((COUNT + 1))
    fi
done

echo "The number of digits in the SAP ID is: $COUNT"

