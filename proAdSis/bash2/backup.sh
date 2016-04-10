#!/bin/bash
date +%d-%m-%y
if [ -e "$1" ]
then
  cp $1 $1.bak_$(date +%d-%m-%y)
else
  echo "El uso del programa es ./$0 nombreFichero"
  exit 1
fi
