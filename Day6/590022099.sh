read -p "Enter your 6-digit SAP ID: " sap_id
if [ "$sap_id" -ge 10000 ] && [ "$sap_id" -le 99999 ];
 then
    d1=$(( sap_id % 10 ))
    sap_id=$(( sap_id / 10 ))

    d2=$(( sap_id % 10 ))
    sap_id=$(( sap_id / 10 ))

    d3=$(( sap_id % 10 ))
    sap_id=$(( sap_id / 10 ))

    d4=$(( sap_id % 10 ))
    sap_id=$(( sap_id / 10 ))

    d5=$(( sap_id % 10 ))
    sap_id=$(( sap_id / 10 ))

    d6=$(( sap_id % 10 ))

    sum=$(( d1 + d2 + d3 + d4 + d5 + d6 ))

    echo "Sum of digits: $sum"
fi

