#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "1" ]
then
  echo "El numero de parametros tiene que ser 1"
  echo "El formato correcto es ./ejercicio4.sh fichero/directorio"
else
  if [ ! -e $1 ]
  then
    echo "El fichero o directorio no existen"
  else
    if [ -f $1 ]
    then
      echo "Procesando un fichero"

      gpg --output $(basename $1).gpg --symmetric $1
      echo "Fichero cifrado resultante: $(basename $1).gpg"
    elif [ -d $1 ]
    then
      echo "Procesando un directorio"

      tar zcf $(basename $1).tar.gz $1

      gpg --output $(basename $1).tar.gz.gpg --symmetric $(basename $1).tar.gz
      echo "Fichero cifrado resultante: $(basename $1).tar.gz.gpg"
    else
      echo "$1 no es ni un fichero ni un directorio"
    fi
  fi
fi
