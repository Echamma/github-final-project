#!/bin/bash
# simple-interest.sh
# A calculator that computes simple interest from user input.
#
#   Simple Interest = (Principal * Rate * Time) / 100
#   Total Amount    = Principal + Simple Interest

echo "=================================="
echo "   Simple Interest Calculator"
echo "=================================="
echo

# Read the three input fields from the user
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per annum): " rate
read -p "Enter the time period (in years): " time

# Validate that each input is a positive number
for field in "$principal:Principal" "$rate:Rate of interest" "$time:Time period"; do
  value="${field%%:*}"
  label="${field#*:}"
  if ! [[ "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: $label must be a positive number. You entered '$value'."
    exit 1
  fi
done

# Compute the simple interest and the total amount
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')
amount=$(awk -v p="$principal" -v i="$interest" \
  'BEGIN { printf "%.2f", p + i }')

echo
echo "----------------------------------"
echo "Principal       : $principal"
echo "Rate of Interest: $rate %"
echo "Time Period     : $time year(s)"
echo "----------------------------------"
echo "Simple Interest : $interest"
echo "Total Amount    : $amount"
echo "----------------------------------"
