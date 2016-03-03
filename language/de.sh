#!/bin/bash

message_hello_world="Hallo Welt"

# Globale Nachrichten(werden mehrmals angezeigt)
exit="system>   4) Verlasse die ImagicalMine-Installation"
exit1="system>   6) Verlasse die ImagicalMine-Installation"
no_selection="system> Nummer (z.B. 1):"
error_selection="error> Ein unbekannter Fehler ist aufgetreten - Du hast eine unbekannte Auswahl ausgewählt. Starte das Skript neu und wähle erneut aus."

# Individuelle Nachrichten(werden nur 1 mal angezeigt)
welcome_to_imagicalmine="system> Willkommen zu ImagicalMine!"
welcome_install_server="system> Dieser Installer wird dich durch die Installation von ImagicalMine führen!"

language_translation="system> Falls deine Sprache nicht in der Liste ist, dann kannst du uns helfen, indem du die Englische Datei auf GitHub unter ImagicalMine/php-build-scripts übersetzt und eine Pull-Request erstellst, damit auch deine Sprache im Installer verfügbar ist!"
language_selection="system> Bitte wähle eine Sprache für die Installation aus:"
en="system>   1) Englisch"
ch="system>   2) Chinesisch"
de="system>   3) Deutsch"

language_selected="system> Du hast Englisch als Sprache während der Installation von ImagicalMine ausgewählt."
php_prompt="system> Wähle aus, welches PHP Binary du verwenden willst:"
linux_32="system>   1) Linux x86(32-bit)"
linux_64="system>   2) Linux x64(64-bit)"
mac_32="system>   3) Mac x86(32-bit)"
mac_64="system>   4) Mac x64(64-bit)"
rpi2="system>   5) Raspberry Pi 2"

im_install_echo="system> Installiere ImagicalMine..."
php_install_echo="system> Installiere das PHP Binary..."
loop_prompt="system> Möchtest du, dass sich ImagicalMine selber neustartet, falls dein Server stoppt oder crasht?"
yes="system>   1) Ja"
no="system>   2) Nein"
installation_complete="system> ImagicalMine wurde erfolgreich installiert! Starte ./start.sh (oder) um ImagicalMine zu starten."
