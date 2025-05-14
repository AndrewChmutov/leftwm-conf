#!/usr/bin/bash

# Getting the data and initializing an array.
BATTERY_INFO=($( acpi | awk -F',' '{ print $0 }'))

CHARGE=($( echo ${BATTERY_INFO[3]} | sed 's/,//g' ))
PREFIX=""
FORMAT=""

# Battery icon to reflect on the bar.
if [[ "${BATTERY_INFO[2]}" == *"Charging"* ]]; then
    PREFIX=""
elif [[ "${BATTERY_INFO[2]}" == *"Not"* ]]; then
    PREFIX=" "
    CHARGE="${BATTERY_INFO[4]}"
else
    PREFIX="↓"
fi

# Format charge & color depending on the status.
FORMAT="$PREFIX $CHARGE"

# Display on bar
echo $FORMAT
