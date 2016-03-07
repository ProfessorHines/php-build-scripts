#!/bin/bash

# This can be used for debugging
message_hello_world="Hola mundo"

# Global messages(displayed multiple times throughout)
exit="sistema>   4) salida ImagicalMine instalacion"
exit1="sistema>   6) salida ImagicalMine instalacion"
no_selection="sistema> numero (ejemplo. 1):"
error_selection="error> Se ha producido un error inesperado - que ha introducido una seleccion desconocida . Reinicie el guion , y luego elegir de nuevo."

# Individual messages(only displayed once)

language_selected="sistema> Que haya seleccionado el idioma Ingles para ser utilizado a traves de la instalacion de ImagicalMine"
php_prompt="sistema> Seleccionar que binario de PHP que desea instalar:"
linux_32="sistema>   1) Linux x86(32-poco)"
linux_64="sistema>   2) Linux x64(64-poco)"
mac_32="sistema>   3) Mac x86(32-poco)"
mac_64="sistema>   4) Mac x64(64-poco)"
rpi2="sistema>   5) Raspberry Pi 2"

im_install_echo="sistema> Instalacion ImagicalMine..."
php_install_echo="sistema> Instalacion PHP binario..."
loop_prompt="sistema> Quieres ImagicalMine para reiniciar automaticamente el servidor si se detiene o se bloquea?"
yes="sistema>   1) Si"
no="sistema>   2) No"
installation_complete="system> ImagicalMine instalacion terminado! ./start.sh Ejecutar (o ./st* ) para iniciar ImagicalMine ."
