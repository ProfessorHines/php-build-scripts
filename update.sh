#!/bin/bash
# ImagicalMine Update Script for Mac OS X and Linux(master)
#  _    _            _    _______ 
# | |  | |    /\    | |  |__   __|
# | |__| |   /  \   | |     | |   
# |  __  |  / /\ \  | |     | |   
# | |  | | / ____ \ | |____ | | _ 
# |_|  |_|/_/    \_\|______||_|(_)
# 
# This file is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
# Before you start doing anything, read the license for more detail into what you are allowed to do and not do.

if [ ! -d "update_log" ]; then
    mkdir "update_log"
fi

l="update_log/log"
le="update_log/log_errors"
lp="update_log/log_php"
lpe="update_log/log_php_errors"
w="update_log/log_wget"
wp="update_log/log_wget_php"

while :
do
clear
cat << "EOF"

  _                       _           _ __  __ _             
 (_)                     (_)         | |  \/  (_)            
  _ _ __ ___   __ _  __ _ _  ___ __ _| | \  / |_ _ __   ___  
 | | '_ ` _ \ / _` |/ _` | |/ __/ _` | | |\/| | | '_ \ / _ \ 
 | | | | | | | (_| | (_| | | (_| (_| | | |  | | | | | |  __/ 
 |_|_| |_| |_|\__,_|\__, |_|\___\__,_|_|_|  |_|_|_| |_|\___| 
                     __/ |                                   
                    |___/  
   
EOF

echo "system> Welcome to the ImagicalMine updater!"
echo
echo "system> Select which PHP binary you have currently installed on your server:"
echo "system>   1) Linux x86(32-bit)"
echo "system>   2) Linux x64(64-bit)"
echo "system>   3) Mac x86(32-bit)"
echo "system>   4) Mac x64(64-bit)"
echo "system>   5) Raspberry Pi 2"
read -e -p "system> Number (e.g. 1):" a
read -e -p "system> Number (e.g. 1):" a </dev/tty
 case "$a" in 
	1 ) z="PHP_7.0.2_x86_Linux.tar.gz";;
	2 ) z="PHP_7.0.2_x86-64_Linux.tar.gz";;
        3 ) z="PHP_7.0.2_x86_MacOS.tar.gz";;
        4 ) z="PHP_7.0.2_x86-64_MacOS.tar.gz";;
        5 ) z="RPI2";;
        6 ) exit 1;;
        * ) echo "error> An unexpected error occurred - you entered an unknown selection. Restart the script, and then choose again."; exit 1;;
 esac

l="update_log/log"
le="update_log/log_errors"
lp="update_log/log_php"
lpe="update_log/log_php_errors"
w="update_log/log_wget"
wp="update_log/log_wget_php"

	echo "system> Updating ImagicalMine to the latest version on GitHub..."
        if [ "$z" == "PHP_7.0.2_x86_MacOS.tar.gz" ]; then
        curl -O --insecure https://github.com/ImagicalMine/ImagicalMine/archive/master.zip >>./$w 2>>./$w
        elif [ "$z" == "PHP_7.0.2_x86-64_MacOS.tar.gz" ]; then
        curl -O --insecure https://github.com/ImagicalMine/ImagicalMine/archive/master.zip >>./$w 2>>./$w
        else
	wget --no-check-certificate https://github.com/ImagicalMine/ImagicalMine/archive/master.zip >>./$w 2>>./$w
        fi
	chmod 777 master.zip >>./$l 2>>./$le
	unzip -o master.zip >>./$l 2>>./$le
	chmod 777 ImagicalMine-master >>./$l 2>>./$le
	cd ImagicalMine-master >>./$l 2>>./$le
	chmod 777 src >>../$l 2>>../$le
	cp -rf src .. >>../$l 2>>../$le
	cd .. >>../$l 2>>../$le
	rm -rf ImagicalMine-master >>./$l 2>>./$le
	rm -rf master.zip >>./$l 2>>./$le
        if [ "$z" == "PHP_7.0.2_x86_MacOS.tar.gz" ]; then
        curl -O --insecure https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/start.sh >>./$l 2>>./$le
        elif [ "$z" == "PHP_7.0.2_x86-64_MacOS.tar.gz" ]; then
        curl -O --insecure https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/start.sh >>./$l 2>>./$le
        else
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/start.sh >>./$l 2>>./$le
        fi
        chmod 777 start.sh >>./$l 2>>./$le
        if [ "$z" == "PHP_7.0.2_x86_MacOS.tar.gz" ]; then
        curl -O --insecure https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/LICENSE.md >>./$l 2>>./$le
        elif [ "$z" == "PHP_7.0.2_x86-64_MacOS.tar.gz" ]; then
        curl -O --insecure https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/LICENSE.md >>./$l 2>>./$le
        else
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/LICENSE.md >>./$l 2>>./$le
        fi
	echo
        echo "system> ImagicalMine update completed! Run ./start.sh (or ./st*) to start ImagicalMine."
exit 0
done
