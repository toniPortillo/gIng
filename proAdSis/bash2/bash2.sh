#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "3" ]
then
  echo "El número de parametros tiene que estar entre 1 y 3"
else

  if [ -d "pequenos" ] && [ -d "medianos" ] && [ -d "grandes" ]
  then
    echo "Las carpetas de salida ya existen, se va a proceder a borrarlas..."
    echo "Copiando los archivos..."
    rm -R pequenos medianos grandes
    mkdir pequenos medianos grandes
  else
    echo "Creando las carpetas pequenos, medianos y grande..."
    echo "Copiando los archivos..."
    mkdir pequenos medianos grandes
  fi

  if [ $# -eq "1" ]
  then
    umbral1=10000
    umbral2=100000
  else
    umbral1=$2
    umbral2=$3
  fi

  find $1 -type f | while read f
  do
    if [ -f $f ]
    then
      if [ $(stat -c%s $f) -lt $umbral1 ]
      then
        cp $f pequenos
      elif [ $(stat -c%s $f) -ge $umbral1 ] && [ $(stat -c%s $f) -le $umbral2 ]
      then
        cp $f medianos
      else
        cp $f grandes
      fi
    fi
  done
fi
