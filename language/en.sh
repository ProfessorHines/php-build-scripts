#!/bin/bash

# This can be used for debugging
message_hello_world="Hello world"

# Global messages(displayed multiple times throughout)
exit="system>   4) Exit ImagicalMine installation"
exit1="system>   6) Exit ImagicalMine installation"
no_selection="system> Number (1): "
error_selection="error> An unexpected error occurred - you entered an unknown selection. Restart the script, and then choose again."

# Individual messages(only displayed once)
welcome_to_imagicalmine="system> Welcome to ImagicalMine!"
welcome_install_server="system> This installer will guide you through installing ImagicalMine for your server!"

language_translation="system> If your language is not listed below, feel free to fork the ImagicalMine/php-build-scripts repository on GitHub and translate it for us, then make a pull request so this installer includes your language."
language_selection="system> Please choose which language you want to use during the installation:"
en="system>   1) English"
ch="system>   2) Chinese"
de="system>   3) German"

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
