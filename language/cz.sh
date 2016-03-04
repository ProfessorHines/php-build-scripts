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
language_selection="system> Prosím vyber svůj jazyk který chceš použít během instalace:"
en="system>   1) English"
ch="system>   2) Chinese"
de="system>   3) German"
cz="systém>   4) Czech

language_selected="system> Vybral(a) jsi češtinu jako jazyk který bude použit během instalace."
php_prompt="system> Výběr které PHP binární soubory chceš stáhnout:"
linux_32="system>   1) Linux x86(32-bit)"
linux_64="system>   2) Linux x64(64-bit)"
mac_32="system>   3) Mac x86(32-bit)"
mac_64="system>   4) Mac x64(64-bit)"
rpi2="system>   5) Raspberry Pi 2"

im_install_echo="system> Instaluji ImagicalMine..."
php_install_echo="system> Installuji PHP binární soubory..."
loop_prompt="system> Chceš aby se tvůj server znovu zapnul po pádu ?"
yes="system>   1) Ano"
no="system>   2) Ne"
installation_complete="system> ImagicalMine instalace kompletní! Napiš ./start.sh (nebo ./st*) pro zapnutí ImagicalMine."
