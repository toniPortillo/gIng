#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "1" ]
then
  echo "El número de parámetros tiene que ser 1"
  echo "Formato ./ejercicio3.sh fichero"
else
  echo "Listado de archivos ocultos del directorio /home/$USER"
  ls -a ~ | grep -E "^\." | awk '{ print length($0) "\t" $0 }' | sort -n | cut -f2
  echo "===="

  echo "El fichero a procesar es $1"
  ficheroSinLVacias=$1.sinLineasVacias
  cat $1 | grep -Ev "^$" > $ficheroSinLVacias
  echo "El fichero sin líneas vacías $ficheroSinLVacias"
  echo "===="

  echo "Listado de los procesos ejecutados por el usuario $USER: "
  ps aux | grep -E "^$USER" |
    sed -re 's/^[^ ]+ +([^ ]+) +[^ ]+ +[^ ]+ +[^ ]+ +[^ ]+ +[^ ]+ +[^ ]+ +([^ ]+) +[^ ]+ +([^ ]+)/PID: \"\1"\ Hora: \"\2\" Ejecutable: \"\3\"/'
  echo "..."
fi
