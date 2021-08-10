#!/bin/bash
echo `date`
mem_threshold='40'
mem_free=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB %.2f%\n", $3,$2,$3*100/$2 }')
echo "$mem_free"
var="file with spaces"
echo  "$mem_free" | awk '{print $4}'  > "${var}"
one=$( cat file\ with\ spaces )
ola=${one%.*}
if (( $ola < $mem_threshold )); then
    echo "current memory usage is less than $mem_threshold%"
    else
    echo "Memory usage is greather than $mem_threshold%"
fi

