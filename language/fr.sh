#!/bin/bash

# Utilisé pour debugger
message_hello_world="Bonjour monde"

# Messages globaux (envoyés sur plusieurs fois)
exit="système>   4) Arrêt de l'installation de ImagicalMine"
exit1="system>   6) Arrêt de l'installation de ImagicalMine"
no_selection="système> Nombre (exemple: 1):"
error_selection="erreur> Erreur - Vous avez entré une séléction inconnue. Redémarez le script et choisissez à nouveau."

# Messages Individuels(envoyés une seule fois)
welcome_to_imagicalmine="système> Bienvenue sur ImagicalMine!"
welcome_install_server="system> Cet installeur va vous guider pour toutes les étapes d'installation!"

language_translation="système> Si votre langue n'est pas si dessous, créez le sur Github : ImagicalMine/php-build-scripts et traduisez le pour nous, puis faites une "pull request" pour que l'installeur puisse être dans votre langue."
language_selection="system> Choisisez le language que vous souhaitez utilisé durant l'installation:"
en="système>   1) Anglais"
ch="système>   2) Chinois"
de="système>   3) Allemand"
# fr="système>   4) Français"

language_selected="système> Vous avez séléctioné le Français pour language d'installation d'ImagicalMine."
php_prompt="system> Séléctionnez quel binaire PHP souhaitez vous installer:"
linux_32="system>   1) Linux x86(32-bit)"
linux_64="system>   2) Linux x64(64-bit)"
mac_32="system>   3) Mac x86(32-bit)"
mac_64="system>   4) Mac x64(64-bit)"
rpi2="system>   5) Raspberry Pi 2"

im_install_echo="system> Installation d'ImagicalMine..."
php_install_echo="system> Installation du binaire PHP ..."
loop_prompt="system> Voulez vous que ImagicalMine redémare automatiquement lorsqu'il s'arrète ou qu'il crash?"
yes="system>   1) Oui"
no="system>   2) Non"
installation_complete="system> L'installation d'ImagicalMine est terminé! Entrez ./start.sh (ou ./st*) pour démarer ImagicalMine."
