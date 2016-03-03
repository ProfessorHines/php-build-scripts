#!/bin/bash

# This can be used for debugging
message_hello_world="Ahoj světe!"

# Global messages(displayed multiple times throughout)
exit="system>   4) Zrušit instalaci ImagicalMine"
exit1="system>   6) Zrušit instalaci ImagicalMine"
no_selection="system> Číslo (např. 1):"
error_selection="error> Stala se neočekávaná chyba- vybral(a) jsi špatnou možnost. Restartuj script, a skus to znovu."

# Individual messages(only displayed once)
welcome_to_imagicalmine="system> Vítej v ImagicalMine!"
welcome_install_server="system> Tento installer vás provede imstalací ImagicalMine pro váš server server!"

language_translation="system> Pokuď tvůj jazik není napsán dole, neboj se udělat fork ImagicalMine/php-build-scripts repositáře na GitHub a přelož to pro nás, a potom pošli pull request abychom mohli přidat tvůj jazyk do instalátoru."
language_selection="system> Please choose which language you want to use during the installation:"
en="system>   1) English"
ch="system>   2) Chinese"
de="system>   3) German"
cz="systém>   4) Czech

language_selected="system> You've selected English for the language to be used throughout installing ImagicalMine."
php_prompt="system> Select which PHP binary you want to install:"
linux_32="system>   1) Linux x86(32-bit)"
linux_64="system>   2) Linux x64(64-bit)"
mac_32="system>   3) Mac x86(32-bit)"
mac_64="system>   4) Mac x64(64-bit)"
rpi2="system>   5) Raspberry Pi 2"

im_install_echo="system> Installing ImagicalMine..."
php_install_echo="system> Installing PHP binary..."
loop_prompt="system> Do you want ImagicalMine to automatically restart your server if it stops or crashes?"
yes="system>   1) Yes"
no="system>   2) No"
installation_complete="system> ImagicalMine installation completed! Run ./start.sh (or ./st*) to start ImagicalMine."
