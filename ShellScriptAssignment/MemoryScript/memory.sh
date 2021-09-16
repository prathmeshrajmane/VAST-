#!/bin/bash
echo `date`
mem_threshold='33'
echo "checking for 2 mintues memory utilization"
rm -rf pp.txt 5min.txt
free -m -c 120 > /home/prathmesh/scripts/cpu/pp.txt 
tail -n 3 pp.txt > 5min.txt
mem_free=$(cat 5min.txt | awk 'NR==2{printf "Memory Usage: %s/%sMB %.2f%\n", $3,$2,$3*100/$2 }')

#mem_free=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB %.2f%\n", $3,$2,$3*100/$2 }')
echo "$mem_free"
var="file with spaces"
echo  "$mem_free" | awk '{print $4}'  > "${var}"
one=$( cat file\ with\ spaces )
ola=${one%.*}
if (( $ola < $mem_threshold )); then
    echo "Current memory usage is less than $mem_threshold%"
    else
    echo "Memory usage is greather than $mem_threshold%"
     echo "sending alert"
     #wall -n "Memory usage is greather than $mem_threshold%"
     logger -p emerg "Memory usage is greather than $mem_threshold%"

fi

