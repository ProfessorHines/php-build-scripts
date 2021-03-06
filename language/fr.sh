#!/bin/bash

# Utilisé pour debugger
message_hello_world="Bonjour monde"

# Messages globaux (envoyés sur plusieurs fois)
exit="système>   4) Arrêt de l'installation de ImagicalMine"
exit1="system>   6) Arrêt de l'installation de ImagicalMine"
no_selection="système> Nombre (exemple: 1):"
error_selection="erreur> Erreur - Vous avez entré une séléction inconnue. Redémarez le script et choisissez à nouveau."

# Messages Individuels(envoyés une seule fois)

language_selected="système> Vous avez séléctioné le Français pour language d'installation d'ImagicalMine."
php_prompt="système> Séléctionnez quel binaire PHP souhaitez vous installer:"
linux_32="système>   1) Linux x86(32-bit)"
linux_64="système>   2) Linux x64(64-bit)"
mac_32="système>   3) Mac x86(32-bit)"
mac_64="système>   4) Mac x64(64-bit)"
rpi2="système>   5) Raspberry Pi 2"

im_install_echo="système> Installation d'ImagicalMine..."
php_install_echo="système> Installation du binaire PHP ..."
loop_prompt="système> Voulez vous que ImagicalMine redémare automatiquement lorsqu'il s'arrète ou qu'il crash?"
yes="système>   1) Oui"
no="système>   2) Non"
installation_complete="système> L'installation d'ImagicalMine est terminé! Entrez ./start.sh (ou ./st*) pour démarer ImagicalMine."
