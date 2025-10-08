#!/bin/bash
# Script to check if a number is divisible by 3

echo "Enter a number:"
read num

# Check divisibility using modulo (%)
if [ $((num % 3)) -eq 0 ] && [ $((num % 5)) -eq 0 ]; then
  echo "YES"
else
  echo "NO"
fi


