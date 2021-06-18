#!/bin/bash
echo "enter ip address for vaildation"
read ip
  if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]];
  then
  echo "valid ip"
else
  echo "invaild ip"
fi
