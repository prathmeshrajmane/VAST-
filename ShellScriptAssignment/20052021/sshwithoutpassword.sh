#!/bin/bash

echo "Enter server ip address for ssh"
read ip
echo "Enter is username for this $ip "
read username
echo "creating key"
ssh-keygen -t rsa
echo " "
cat /home/prathmesh/.ssh/id_rsa.pub | ssh prathmesh@$ip  'cat >> .ssh/authorized_keys;' \ 'chmod 700 ~/.ssh;' \ 'chmod 600 ~/.ssh/authorized_keys;'
echo "key copied"
echo "now try ssh log"

