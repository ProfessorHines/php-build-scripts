#!/bin/bash

# This can be used for debugging
message_hello_world="Ahoj světe!"

# Global messages(displayed multiple times throughout)
exit="systém>   4) Zrušit instalaci ImagicalMine"
exit1="systém>   6) Zrušit instalaci ImagicalMine"
no_selection="systém> Číslo (např. 1):"
error_selection="chyba> Stala se neočekávaná chyba- vybral(a) jsi špatnou možnost. Restartuj script, a skus to znovu."

# Individual messages(only displayed once)

language_selected="systém> Vybral(a) jsi češtinu jako jazyk který bude použit během instalace."
php_prompt="systém> Výběr které PHP binární soubory chceš stáhnout:"
linux_32="systém>   1) Linux x86(32-bit)"
linux_64="systém>   2) Linux x64(64-bit)"
mac_32="systém>   3) Mac x86(32-bit)"
mac_64="systém>   4) Mac x64(64-bit)"
rpi2="systém>   5) Raspberry Pi 2"

im_install_echo="systém> Instaluji ImagicalMine..."
php_install_echo="systém> Installuji PHP binární soubory..."
loop_prompt="systém> Chceš aby se tvůj server znovu zapnul po pádu ?"
yes="systém>   1) Ano"
no="systém>   2) Ne"
installation_complete="systém> ImagicalMine instalace kompletní! Napiš ./start.sh (nebo ./st*) pro zapnutí ImagicalMine."
