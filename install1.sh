#!/bin/bash
# ImagicalMine Installation Script for Mac OS X and Linux(master)
#  _    _            _    _______ 
# | |  | |    /\    | |  |__   __|
# | |__| |   /  \   | |     | |   
# |  __  |  / /\ \  | |     | |   
# | |  | | / ____ \ | |____ | | _ 
# |_|  |_|/_/    \_\|______||_|(_)
# 
# This file is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
# Before you start doing anything, read the license for more detail into what you are allowed to do and not do.
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

shopt -s extglob
l="install_log/log"
le="install_log/log_errors"
lp="install_log/log_php"
lpe="install_log/log_php_errors"
w="install_log/log_wget"
wp="install_log/log_wget_php"

echo "system> Welcome to the ImagicalMine installer!"
echo "system> If your language is not listed below, feel free to fork the ImagicalMine/php-build-scripts repository on GitHub and translate it for us, then make a pull request so this installer includes your language."
echo "system> Please choose which language you want to use during the installation:"
echo "system>   1) English"
echo "system>   2) Chinese"
echo "system>   3) German"
echo "system>   4) Exit ImagicalMine installation"
read -e -p "system> Number (e.g. 1): " k
read -e -p "system> Number (e.g. 1): " k </dev/tty
 case "$k" in 
	1 ) o="en";;
	2 ) o="de";;
        3 ) o="ch";;
        4 ) exit 1;;
        * ) echo "error> An unexpected error occurred - you chose an unknown selection. Restart the script, and then choose again."; exit 1;;
 esac

if [ "$o" == "en" ];then
echo "system> Choose which PHP binary you want to install:"
echo "system>   1) Linux x86(32-bit system)"
echo "system>   2) Linux x64(64-bit system)"
echo "system>   3) Mac x86(32-bit system)"
echo "system>   4) Mac x64(64-bit system)"
echo "system>   5) Raspberry Pi"
echo "system>   6) Exit ImagicalMine installation"
read -e -p "system> Number (e.g. 1): " a
read -e -p "system> Number (e.g. 1): " a </dev/tty
 case "$a" in 
	1 ) z="PHP_7.0.2_x86_Linux.tar.gz";;
	2 ) z="PHP_7.0.2_x86-64_Linux.tar.gz";;
        3 ) z="PHP_7.0.2_x86_MacOS.tar.gz";;
        4 ) z="PHP_7.0.2_x86-64_MacOS.tar.gz";;
        5 ) z="RPI2";;
        6 ) exit 1;;
        * ) echo "error> An unexpected error occurred - you chose an unknown selection. Restart the script, and then choose again."; exit 1;;
 esac

	mkdir install_log
#        echo >> start.sh
	echo "system> Installing ImagicalMine..."
	wget https://github.com/ImagicalMine/ImagicalMine/archive/master.zip >>./$w 2>>./$w
	chmod 777 master.zip >>./$l 2>>./$le
	unzip -o master.zip >>./$l 2>>./$le
	chmod 777 ImagicalMine-master >>./$l 2>>./$le
	cd ImagicalMine-master >>./$l 2>>./$le
	chmod 777 src >>../$l 2>>../$le
	cp -rf src .. >>../$l 2>>../$le
#        cp -rf start.sh .. >>./$l 2>>./$le
	cd .. >>../$l 2>>../$le
	rm -rf ImagicalMine-master >>./$l 2>>./$le
	rm -rf master.zip >>./$l 2>>./$le
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/start.sh >>./$l 2>>./$le
        chmod 777 start.sh >>./$l 2>>./$le
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/LICENSE.md >>./$l 2>>./$le
        echo

	echo "system> Installing PHP binary..."
if [ "$z" == "RPI2" ];then
        wget --no-check-certificate https://doc-0k-3o-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/934keuclvb2ivtvbjha3g5g6hcp7bmcl/1456344000000/05545830570625343823/*/0B60O0ROCfeCmVW1idWx1WFY5RXM?e=download >>./$wp 2>>./$wp
else
wget --no-check-certificate https://bintray.com/artifact/download/pocketmine/PocketMine/$z >>./$wp 2>>./$wp
fi
	chmod 777 PHP* >>./$lp 2>>./$lpe
	tar zxvf PHP* >>./$lp 2>>./$lpe
	rm -r PHP* >>./$lp 2>>./$lpe
	echo
        read -e -p "system> Do you want to auto-restart your server when it stops or crashes? (Y/n):" c
        read -e -p "system> Do you want to auto-restart your server when it stops or crashes? (Y/n):" c </dev/tty
#		read c
		if [ "$c" == "y" ]||[ "$c" == "Y" ]; then
#			echo 'DO_LOOP="yes"' >> start.sh
                sed -i 's/DO_LOOP="no"/DO_LOOP="yes"/' start.sh
		else
#			echo 'DO_LOOP="no"' >> start.sh
                sed -i 's/DO_LOOP="yes"/DO_LOOP="no"/' start.sh
		fi
	echo "system> ImagicalMine installation completed! Run ./start.sh (or ./st*) to start ImagicalMine."
elif [ "$o" == "de" ];then
# German installation translation here please @ecoron
echo "system> Choose which PHP binary you want to install:"
echo "system>   1) Linux x86(32-bit system)"
echo "system>   2) Linux x64(64-bit system)"
echo "system>   3) Mac x86(32-bit system)"
echo "system>   4) Mac x64(64-bit system)"
echo "system>   5) Raspberry Pi"
echo "system>   6) Exit ImagicalMine installation"
read -e -p "system> Number (e.g. 1): " a
read -e -p "system> Number (e.g. 1): " a </dev/tty
 case "$a" in 
	1 ) z="PHP_7.0.2_x86_Linux.tar.gz";;
	2 ) z="PHP_7.0.2_x86-64_Linux.tar.gz";;
        3 ) z="PHP_7.0.2_x86_MacOS.tar.gz";;
        4 ) z="PHP_7.0.2_x86-64_MacOS.tar.gz";;
        5 ) z="RPI2";;
        6 ) exit 1;;
        * ) echo "error> An unexpected error occurred - you chose an unknown selection. Restart the script, and then choose again."; exit 1;;
 esac

	mkdir install_log
#        echo >> start.sh
	echo "system> Installing ImagicalMine..."
	wget https://github.com/ImagicalMine/ImagicalMine/archive/master.zip >>./$w 2>>./$w
	chmod 777 master.zip >>./$l 2>>./$le
	unzip -o master.zip >>./$l 2>>./$le
	chmod 777 ImagicalMine-master >>./$l 2>>./$le
	cd ImagicalMine-master >>./$l 2>>./$le
	chmod 777 src >>../$l 2>>../$le
	cp -rf src .. >>../$l 2>>../$le
#        cp -rf start.sh .. >>./$l 2>>./$le
	cd .. >>../$l 2>>../$le
	rm -rf ImagicalMine-master >>./$l 2>>./$le
	rm -rf master.zip >>./$l 2>>./$le
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/start.sh >>./$l 2>>./$le
        chmod 777 start.sh >>./$l 2>>./$le
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/LICENSE.md >>./$l 2>>./$le
        echo

	echo "system> Installing PHP binary..."
if [ "$z" == "RPI2" ];then
        wget --no-check-certificate https://doc-0k-3o-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/934keuclvb2ivtvbjha3g5g6hcp7bmcl/1456344000000/05545830570625343823/*/0B60O0ROCfeCmVW1idWx1WFY5RXM?e=download >>./$wp 2>>./$wp
else
wget --no-check-certificate https://bintray.com/artifact/download/pocketmine/PocketMine/$z >>./$wp 2>>./$wp
fi
	chmod 777 PHP* >>./$lp 2>>./$lpe
	tar zxvf PHP* >>./$lp 2>>./$lpe
	rm -r PHP* >>./$lp 2>>./$lpe
	echo
        read -e -p "system> Do you want to auto-restart your server when it stops or crashes? (Y/n):" c
        read -e -p "system> Do you want to auto-restart your server when it stops or crashes? (Y/n):" c </dev/tty
#		read c
		if [ "$c" == "y" ]||[ "$c" == "Y" ]; then
#			echo 'DO_LOOP="yes"' >> start.sh
                sed -i 's/DO_LOOP="no"/DO_LOOP="yes"/' start.sh
		else
#			echo 'DO_LOOP="no"' >> start.sh
                sed -i 's/DO_LOOP="yes"/DO_LOOP="no"/' start.sh
		fi
	echo "system> ImagicalMine installation completed! Run ./start.sh (or ./st*) to start ImagicalMine."

elif [ "$o" == "ch" ];then

echo "system> Choose which PHP binary you want to install:"
echo "system>   1) Linux x86(32-bit system)"
echo "system>   2) Linux x64(64-bit system)"
echo "system>   3) Mac x86(32-bit system)"
echo "system>   4) Mac x64(64-bit system)"
echo "system>   5) Raspberry Pi"
echo "system>   6) Exit ImagicalMine installation"
read -e -p "system> Number (e.g. 1): " a
read -e -p "system> Number (e.g. 1): " a </dev/tty
 case "$a" in 
	1 ) z="PHP_7.0.2_x86_Linux.tar.gz";;
	2 ) z="PHP_7.0.2_x86-64_Linux.tar.gz";;
        3 ) z="PHP_7.0.2_x86_MacOS.tar.gz";;
        4 ) z="PHP_7.0.2_x86-64_MacOS.tar.gz";;
        5 ) z="RPI2";;
        6 ) exit 1;;
        * ) echo "error> An unexpected error occurred - you chose an unknown selection. Restart the script, and then choose again."; exit 1;;
 esac

	mkdir install_log
#        echo >> start.sh
	echo "system> Installing ImagicalMine..."
	wget https://github.com/ImagicalMine/ImagicalMine/archive/master.zip >>./$w 2>>./$w
	chmod 777 master.zip >>./$l 2>>./$le
	unzip -o master.zip >>./$l 2>>./$le
	chmod 777 ImagicalMine-master >>./$l 2>>./$le
	cd ImagicalMine-master >>./$l 2>>./$le
	chmod 777 src >>../$l 2>>../$le
	cp -rf src .. >>../$l 2>>../$le
#        cp -rf start.sh .. >>./$l 2>>./$le
	cd .. >>../$l 2>>../$le
	rm -rf ImagicalMine-master >>./$l 2>>./$le
	rm -rf master.zip >>./$l 2>>./$le
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/start.sh >>./$l 2>>./$le
        chmod 777 start.sh >>./$l 2>>./$le
        wget --no-check-certificate https://raw.githubusercontent.com/ImagicalMine/ImagicalMine/master/LICENSE.md >>./$l 2>>./$le
        echo

	echo "system> Installing PHP binary..."
if [ "$z" == "RPI2" ];then
        wget --no-check-certificate https://doc-0k-3o-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/934keuclvb2ivtvbjha3g5g6hcp7bmcl/1456344000000/05545830570625343823/*/0B60O0ROCfeCmVW1idWx1WFY5RXM?e=download >>./$wp 2>>./$wp
else
wget --no-check-certificate https://bintray.com/artifact/download/pocketmine/PocketMine/$z >>./$wp 2>>./$wp
fi
	chmod 777 PHP* >>./$lp 2>>./$lpe
	tar zxvf PHP* >>./$lp 2>>./$lpe
	rm -r PHP* >>./$lp 2>>./$lpe
	echo
        read -e -p "system> Do you want to auto-restart your server when it stops or crashes? (Y/n):" c
        read -e -p "system> Do you want to auto-restart your server when it stops or crashes? (Y/n):" c </dev/tty
#		read c
		if [ "$c" == "y" ]||[ "$c" == "Y" ]; then
#			echo 'DO_LOOP="yes"' >> start.sh
                sed -i 's/DO_LOOP="no"/DO_LOOP="yes"/' start.sh
		else
#			echo 'DO_LOOP="no"' >> start.sh
                sed -i 's/DO_LOOP="yes"/DO_LOOP="no"/' start.sh
		fi
	echo "system> ImagicalMine installation completed! Run ./start.sh (or ./st*) to start ImagicalMine."
        shopt -u extglob
fi
exit 0
done
