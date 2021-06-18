 #!/bin/bash
while true
do 
PS3='Please enter your choice: '
options=("cpu cores" "vendor_id" "cpu family" "cache size" "model name" "microcode" "cpu MHz" "MemTotal" "MemFree" "MemAvailable" "Buffers" "SwapCached" "Linux version" "uptime" "loadavg" "List all PCI devices" "Open Port" "Free Disk"  "Exit")
select menu in "${options[@]}" 
do
    case $menu in
         "cpu cores") 
	   echo "you chose choice 1"
 	   echo "--------------"
           cat /proc/cpuinfo | grep 'cpu cores' | tail -1
	   echo "--------------"
	   break
            ;;
         "vendor_id")
           echo "you chose choice 2"
           echo "--------------"
	   cat /proc/cpuinfo | grep 'vendor_id' | tail -1
	   echo "--------------"
	   break
           ;;
         "cpu family")
           echo "you chose choice 3"
           echo "--------------"
	   cat /proc/cpuinfo | grep 'cpu family' | tail -1
	   echo "--------------"
	   break
           ;;
	"cache size")
	   echo "you chose choice 4"
	   echo "--------------"
	    cat /proc/cpuinfo | grep 'cache size' | tail -1
	   echo "--------------"
	   break
	   ;;
	 "model name")
           echo "you chose choice 5"
           echo "--------------"
            cat /proc/cpuinfo | grep 'model name' | tail -1
           echo "--------------"
           break
           ;;
	 "microcode")
           echo "you chose choice 6"
           echo "--------------"
           cat /proc/cpuinfo | grep 'microcode' | tail -1
           echo "--------------"
           break
           ;;
	   "cpu MHz")
           echo "you chose choice 7"
           echo "--------------"
           cat /proc/cpuinfo | grep 'cpu MHz' | tail -1
           echo "--------------"
           break
           ;;
 	 "MemTotal")
           echo "you chose choice 8"
           echo "--------------"
           cat /proc/meminfo | grep 'MemTotal' | tail -1
           echo "--------------"
           break
           ;;
	 "MemFree")
           echo "you chose choice 9"
           echo "--------------"
           cat /proc/meminfo | grep 'MemFree' | tail -1
           echo "--------------"
           break
           ;;
	 "MemAvailable")
           echo "you chose choice 10"
           echo "--------------"
           cat /proc/meminfo | grep 'MemAvailable' | tail -1
           echo "--------------"
           break
           ;;
	 "Buffers")
           echo "you chose choice 11"
           echo "--------------"
           cat /proc/meminfo | grep 'Buffers' | tail -1
           echo "--------------"
           break
           ;;
	 "SwapCached")
           echo "you chose choice 12"
           echo "--------------"
           cat /proc/swaps
           echo "--------------"
           break
           ;;
	 "Linux version")
           echo "you chose choice 13"
           echo "--------------"
            cat /proc/version | grep 'Linux version ' | tail -1
           echo "--------------"
           break
           ;;
	 "uptime")
           echo "you chose choice 14"
           echo "--------------"
          cat /proc/uptime  
	  echo "--------------"
           break
           ;;
	 "loadavg")
           echo "you chose choice 15"
           echo "--------------"
            cat /proc/loadavg
           echo "--------------"
           break
           ;;
	  "List all PCI devices")
	   echo "you chose choice 16"
           echo "--------------"
            lspci
           echo "--------------"
           break
           ;;
	 "Open Port")
           echo "you chose choice 17"
           echo "--------------"
           lsof | tail -n 10 
           echo "--------------"
           break
           ;;
	   "Free Disk")
           echo "you chose choice 18"
           echo "--------------"
           df -hT
           echo "--------------"
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
