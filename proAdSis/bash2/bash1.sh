#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "2" ]
then
  echo "El número de parametros tiene que estar entre 1 y 2"
else
  if [ $# -eq "1" ]
  then
    tam=0
  else
    tam=$[$2-1]
  fi

  echo "Carpeta;Nombre;Tamaño;ReferenciasInodo;Permisos;Ejecutable"

  find $1 -size +$[$tam]c | while read f
  do
    if [ -f $f ]
    then

      Carpeta=$(dirname $f)
      Nombre=$(basename $f)
      Tamanio=$(stat -c%s $f)
      ReferenciasInodo=$(stat -c%h $f)
      Permisos=$(stat -c%A $f)


      if [ -x $f ]
      then
        Ejecutable=1
        echo "$Carpeta;$Nombre;$Tamanio;$ReferenciasInodo;$Permisos;$Ejecutable"
      else
        Ejecutable=0
        echo "$Carpeta;$Nombre;$Tamanio;$ReferenciasInodo;$Permisos;$Ejecutable"
      fi
    fi
  done | sort -nrk 3 -t ';'
fi
