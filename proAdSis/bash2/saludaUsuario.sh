#!/bin/bash
read -p "Introduzca su nombre de usuario: " nombreUsuario
if [ $USER == $nombreUsuario ];
then
  echo "Bienvenido \"$USER\""
else
  echo "Eso es mentira!"
fi
