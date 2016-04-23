#!/bin/bash

if [ $# -ne 2 ]
then
  echo "El numero de parametros tiene que ser 2"
  echo "El formato correcto es ./ejercicio3.sh ejemploCarpeta ejemploCarpetaMayusculas"
else

  directorioInicial=$(pwd)
  cd $1

  find -type d | while read f
  do
    cd $directorioInicial
    nombreMayus=$(echo $f | tr 'a-z' 'A-Z')

    mkdir -p $2/$nombreMayus
  done
  cd $directorioInicial

  find $1 -type f | while read f
  do
    ruta=${f#$1}
    rutaMayusculas=$(echo $ruta | tr 'a-z' 'A-Z')
    cp $f $2$rutaMayusculas
  done
fi
