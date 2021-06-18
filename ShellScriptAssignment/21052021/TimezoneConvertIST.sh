sub() {
    while true; 
    do
        select submenu1 in 'Abidjan' 'Douala' 'Dar_es_Salaam' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'Abidjan'
		timedatectl set-timezone Africa/Abidjan
		           echo "--------------"

		timedatectl 
		           echo "--------------"

		convert
		;;
                2) echo 'Douala' 
		 timedatectl set-timezone Africa/Douala
		 timedatectl
		convert 
		;;
		  
                3) echo 'Dar_es_Salaam' 
		 timedatectl set-timezone Africa/Dar_es_Salaam
		 timedatectl
		 convert
		  ;;
                4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}

sub0(){

while true; 
do
        select submenu2 in 'America/Yellowknife' 'America/Toronto' 'America/Adak' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'America/Yellowknife'
                 timedatectl set-timezone America/Yellowknife
		 timedatectl
		  convert
		 ;;
		2) echo 'America/Toronto'
		  timedatectl set-timezone America/Toronto
		  timedatectl
		  convert
		  ;;
		3) echo 'America/Adak'
		   timedatectl set-timezone America/Adak
		   timedatectl
		   convert
		   ;;
		4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}
sub1(){

while true; 
do
        select submenu3 in 'Antarctica/McMurdo' 'Antarctica/Casey' 'Antarctica/Vostok' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'Antarctica/McMurdo'
                 timedatectl set-timezone Antarctica/McMurdo
                 timedatectl
                  convert
                 ;;
                2) echo 'Antarctica/Casey'
                  timedatectl set-timezone Antarctica/Casey
                  timedatectl
                  convert
                  ;;
                3) echo 'Antarctica/Vostok'
                   timedatectl set-timezone Antarctica/Vostok
                   timedatectl
                   convert
                   ;;
                4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}
sub2(){

while true; 
do
        select submenu4 in 'Asia/Aden' 'Asia/Dhaka' 'Asia/Colombo' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'Asia/Aden'
                 timedatectl set-timezone Asia/Dhaka
                 timedatectl
                  convert
                 ;;
                2) echo 'Asia/Dhaka'
                  timedatectl set-timezone Asia/Dhaka
                  timedatectl
                  convert
                  ;;
                3) echo 'Asia/Colombo'
                   timedatectl set-timezone Asia/Colombo
                   timedatectl
                   convert
                   ;;
                4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}
sub3(){

while true;
 do
        select submenu5 in 'Atlantic/Azores' 'Atlantic/Reykjavik' 'Atlantic/Stanley' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'Atlantic/Azores'
                 timedatectl set-timezone Atlantic/Azores
                 timedatectl
                  convert
                 ;;
                2) echo 'Atlantic/Reykjavik'
                  timedatectl set-timezone Atlantic/Reykjavik
                  timedatectl
                  convert
                  ;;
                3) echo 'Atlantic/Stanley'
                   timedatectl set-timezone Atlantic/Stanley
                   timedatectl
                   convert
                   ;;
                4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}
sub4(){

while true; 
do
        select submenu6 in 'Australia/Adelaide' 'Australia/Melbourne' 'Australia/Sydney' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'Australia/Adelaide'
                 timedatectl set-timezone Australia/Adelaide
                 timedatectl
                  convert
                 ;;
                2) echo 'Australia/Melbourne'
                  timedatectl set-timezone Australia/Melbourne
                  timedatectl
                  convert
                  ;;
                3) echo 'Australia/Sydney'
                   timedatectl set-timezone Australia/Sydney	
                   timedatectl
                   convert
                   ;;
                4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}
sub5(){

while true; 
do
        select submenu7 in 'Europe/Amsterdam' 'Europe/Istanbul' 'Europe/Warsaw' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'Europe/Amsterdam'
                 timedatectl set-timezone Europe/Amsterdam
                 timedatectl
                  convert
                 ;;
                2) echo 'Europe/Istanbul'
                  timedatectl set-timezone Europe/Istanbul
                  timedatectl
                  convert
                  ;;
                3) echo 'Europe/Warsaw'
                   timedatectl set-timezone Europe/Warsaw	
                   timedatectl
                   convert
                   ;;
                4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}

convert(){

echo "-------Converting Current Timezone To IST--------"
timedatectl set-timezone Asia/Kolkata
timedatectl
echo "--------------"

}

while true; do
    select mainMenu in 'Africa' 'Americas' 'Antarctica' 'Asia' 'Atlantic' 'Australia' 'Europe' 'Quit'
    do
        case $REPLY in
            1) sub;;
            2) sub0 ;;
            3) sub1 ;;
	    4) sub2 ;;
            5) sub3 ;;
            6) sub4 ;;
            7) sub5 ;;
            8) break 2 ;;
            *) echo 'Please select an option.' >&2
        esac
        break
    done
done
