#!/bin/bash
if [ $# -ne 1 ]
then
  echo "La sintaxis correcta seria \"$0 fichero\""
  exit 1
fi

if [ -f "$1" ]
then
  cp "$1" "$1.bak_$(date +%d-%m-%y)"
else
    echo "El fichero no exite"
    exit 1
fi
