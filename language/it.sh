#!/bin/bash

# Questo può essere usato per il debugging
message_hello_world="Ciao mondo"

# messaggi globali (visualizzati più volte nel corso)
exit="sistema>   4) Installazione Uscita ImagicalMine"
exit1="sistema>    6) Installazione Uscita ImagicalMine"
no_selection="sistema> numero (ad esempio 1):"
error_selection="errore> Si è verificato un errore imprevisto - è stata immessa una selezione sconosciuta. Riavviare lo script, e poi scegliere di nuovo"

# messaggi individuali (solo visualizzata una sola volta)

language_selected="sistema> Hai selezionato inglese per il linguaggio da utilizzare in tutta l'installazione ImagicalMine ."
php_prompt="sistema> Selezionare i binari PHP che si desidera installare :"
linux_32="sistema>   1) Linux x86 (32-bit)"
linux_64="sistema>   2) Linux x64(64-bit)"
mac_32="sistema>   3) Mac x86(32-bit)"
mac_64="sistema>   4) Mac x64(64-bit)"
rpi2="sistema>   5) Raspberry Pi 2"

im_install_echo="sistema> Installazione ImagicalMine..."
php_install_echo="sistema> Installing PHP binary..."
loop_prompt="sistema> Vuoi ImagicalMine per riavviare automaticamente il server se si ferma o si blocca?"
yes="sistema>   1) Sì"
no="sistema>   2) No"
installation_complete="sistema> Installazione ImagicalMine completata! Eseguire ./start.sh (o ./st*) per avviare ImagicalMine."
