#!/bin/bash

# Questo può essere usato per il debugging
message_hello_world="Ciao mondo"

# messaggi globali ( visualizzati più volte nel corso )
exit="Sistema > 4) Installazione Uscita ImagicalMine"
exit1="Sistema > 6) Installazione Uscita ImagicalMine"
no_selection="Sistema > numero (ad esempio 1 ) :"
error_selection="errore> Si è verificato un errore imprevisto - è stata immessa una selezione sconosciuta . Riavviare lo script , e poi scegliere di nuovo"

# messaggi individuali ( solo visualizzata una sola volta)

language_selected="Sistema > Hai selezionato inglese per il linguaggio da utilizzare in tutta l'installazione ImagicalMine ."
php_prompt="Sistema > Selezionare i binari PHP che si desidera installare :"
linux_32="Sistema >  1 ) Linux x86 (32 - bit)"
linux_64="Sistema >   2) Linux x64(64-bit)"
mac_32="Sistema >   3) Mac x86(32-bit)"
mac_64="Sistema >   4) Mac x64(64-bit)"
rpi2="Sistema >   5) Raspberry Pi 2"

im_install_echo="Sistema > Installazione ImagicalMine ..."
php_install_echo="system> Installing PHP binary..."
loop_prompt="Sistema > Vuoi ImagicalMine per riavviare automaticamente il server se si ferma o si blocca ?"
yes="Sistema > 1 ) Sì"
no="Sistema > 2 ) No"
installation_complete="Sistema > Installazione ImagicalMine completata ! Eseguire ./start.sh (o ./st* ) per avviare ImagicalMine ."
