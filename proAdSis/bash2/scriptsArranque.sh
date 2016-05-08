#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "1" ]
then
  echo "El número de parámetros tiene que ser 1"
  echo "Formato ./ejercicio6.sh directorio"
else
  nEnlacesSimbolicos=0
  nDirectorios=0
  nEjecutables=0
  nBash=0
  nSh=0

  for clasificador in $(find $1/etc/init.d)
  do
    if [ -L $clasificador ]
    then
      let "nEnlacesSimbolicos = $nEnlacesSimbolicos + 1"
    elif [ -d $clasificador ]
    then
      let "nDirectorios = $nDirectorios + 1"
    else
      if [ -f $clasificador ]
      then
        if [ -x $clasificador ]
        then
          let "nEjecutables = $nEjecutables + 1"
          if head  -1 $clasificador | grep '^#! */bin/bash.*' > /dev/null
          then
            let "nBash = $nBash + 1"
          elif head -1 $clasificador | grep '^#! */bin/bash.*' >/dev/null
          then
            let "nSh = $nSh + 1"
          fi
        fi
      fi
    fi
  done

  echo "*****************************"
  echo "Número de enlaces simbólicos: $nEnlacesSimbolicos"
  echo "Número de directorios: $nDirectorios"
  echo "Número de ficheros convencionales ejecutables: $nEjecutables"
  echo "*****************************"
  echo "El listado de los intérpretes en $1/etc/init.d/ es:"
  echo "- Hay $nBash scripts con intérprete /bin/bash"
  echo "- Hay $nSh scripts con intérprete /bin/sh"
  echo "*****************************"
fi
