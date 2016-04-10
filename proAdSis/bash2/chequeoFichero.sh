#!/bin/bash
read -p "Indique el nombre del fichero para hacer diferentes pruebas: " fichero

if [ -e "$fichero" ]
then
  echo "Existe el fichero"
else
  echo "No existe el fichero"
fi

if [ -s "$fichero" ]
then
  echo "El fichero tiene tamaño mayor que cero"
else
  echo "El fichero no tiene tamaño mayor que cero"
fi

if [ -f "$fichero" ]
then
  echo "Es un fichero"
else
  echo "No es un fichero"
fi

if [ -d "$fichero" ]
then
  echo "Es un directorio"
else
  echo "No es un directorio"
fi

if [ -l "$fichero" ]
then
  echo "Es un enlace simbolico"
else
  echo "No es un enlace simbolico"
fi

if [ -r "$fichero" ]
then
  echo "Tienes permiso de escritura"
else
  echo "No tienes permiso de escritura"
fi

if [ -w "$fichero" ]
then
  echo "Tienes permiso de escritura"
else
  echo "No tienes permiso de escritura"
fi

if [ -x "$fichero" ]
then
  echo "Tienes permiso de ejecucion"
else
  echo "No tienes permiso de ejecucion"
fi
