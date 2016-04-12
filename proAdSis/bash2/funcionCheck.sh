#!/bin/bash

chequea()
{
  if [ -e $1 ]
  then
    return 0
  else
    return 1
  fi
}

read -p "Introduzca el nombre de un archivo para ver si existe: " archivo

if chequea $archivo
then
  echo "El archivo $archivo existe"
else
  echo "El archivo $archivo no existe"
fi
