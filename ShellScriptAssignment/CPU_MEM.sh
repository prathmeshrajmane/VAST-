#!/bin/bash
echo `date`
mem_threshold='39'
cpu_threshold='30'

while true
do
PS3='Please enter your choice: '
options=("Memory" "CPU" "Exit")
select menu in "${options[@]}"
do
    case $menu in
         "Memory")


echo "checking memory utilization for 1 minute"
rm -rf pp.txt 5min.txt
free -m -c 60 > /home/prathmesh/projects/pp.txt
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
     #logger -p emerg "Memory usage is greather than $mem_threshold%"


fi
echo "=========================================================="
break 
;;
"CPU")

echo "checking CPU utilization for 1 minute"
 CPU=$(sar 60 1 | grep "Average" | sed 's/^.* //')
 CPU=$( printf "%.0f" $CPU )
 cpu_use=`expr 100 - $CPU`
 echo "CPU Usage : $cpu_use%"
 if [ $cpu_use -gt $cpu_threshold ]
  then
        echo "CPU utilization is high $cpu_threshold%"
 else
        echo "CPU utilization is less than $cpu_threshold%"
 fi

echo "=========================================================="
 break
 ;;
"Exit")
  echo "Exit!"
  exit
  ;;
*)
  echo invalid option;;
  esac
done
done
