#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "3" ]
then
  echo "El numero de parametros tiene que ser 2"
  echo "El formato correcto es: "
  echo -e "./ejercicio5.sh resumenHash(40caracteres obligatorio)\nnºcarateres(entero entre 1 y 3)"
else
  numero='^[1-3]$'
  if [ ${#1} -ne 40 ] || ! [[ $2 =~ $numero ]]
  then
    echo "El resumenHash introducido no tiene 40 caracteres o el entero no esta entre 1 y 3"
  else
    echo "Buscando contraseña de $2 caracteres..."

    if [ $2 == "1" ]
    then
      for letra in {a..z}
      do
        if [ $(echo $letra | sha1sum | cut -d ' ' -f1) == $1 ]
        then
            echo "Encontrada la clave: $letra"

            exit
        fi
      done
    elif [ $2 == "2" ]
    then
      for letras in {a..z}{a..z}
      do
        if [ $(echo $letras | sha1sum | cut -d ' ' -f1) == $1 ]
        then
            echo "Encontrada la clave: $letras"

            exit
        fi
      done
    else
      for letras in {a..z}{a..z}{a..z}
      do
        if [ $(echo $letras | sha1sum | cut -d ' ' -f1) == $1 ]
        then
            echo "Encontrada la clave: $letras"

            exit
        fi
      done
    fi
  fi
fi
