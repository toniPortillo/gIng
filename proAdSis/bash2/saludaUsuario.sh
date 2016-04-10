#!/bin/bash
read -p "Introduzca su nombre de usuario: " nombreUsuario
if [ "$nombreUsuario" == $USER ];
then
  echo "Bienvenido \"$USER\""
else
  echo "Eso es mentira!"
fi
