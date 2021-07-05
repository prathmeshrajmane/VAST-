#!/bin/bash
echo "Current TimeZone is"
timedatectl
echo ""
echo "Changing Timezone to IST"
read input
        timedatectl set-timezone "Asia/Kolkata"
	echo "TimeZone sucesfully changed to IST"

