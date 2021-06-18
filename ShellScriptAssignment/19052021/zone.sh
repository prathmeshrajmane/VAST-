#!/bin/bash
echo "Current TimeZone is"
timedatectl
echo ""
echo "Do you want to change TimeZone to IST? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        timedatectl set-timezone "Asia/Kolkata"
	echo "TimeZone sucesfully changed to IST"
else
        echo "don't change TimeZone"
fi
