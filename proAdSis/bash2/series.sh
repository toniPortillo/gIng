#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "1" ]
then
  echo "El número de parámetros tiene que ser 1"
  echo "Formato ./ejercicio1.sh ficheroDeSeries"
else
  echo "*****************************"
  echo "1) Títulos de las series"
  cat $1 | grep -E '^[0-9]{1,}\. '

  echo "*****************************"
  echo "2) Cadenas que producen las series: "
  cat $1 | grep -E '^\*.*\*'

  echo "*****************************"
  echo "3) Cadenas que producen las series sin asteriscos ni espacios: "
  cat $1 | grep -E '^\*.*\*' | grep -E -i '[a-z]{1,}' -o

  echo "*****************************"
  echo "4) Eliminar las líneas de sinopsis: "
  cat $1 | grep -E '^SINOPSIS:' -v

  echo "*****************************"
  echo "5) Eliminar líneas vacías: "
  cat $1 | grep -E "."

  echo "*****************************"
  echo "6) Contar cuantas series produce cada cadena: "
  contadorABC=$(cat $1 | grep -E "ABC" | wc -l)
  contadorAMC=$(cat $1 | grep -E "AMC" | wc -l)
  contadorCBS=$(cat $1 | grep -E "CBS" | wc -l)
  contadorFOX=$(cat $1 | grep -E "FOX" | wc -l)
  contadorHBO=$(cat $1 | grep -E "HBO" | wc -l)
  contadorNBC=$(cat $1 | grep -E "NBC" | wc -l)
  contadorWB=$(cat $1 | grep -E "WB" | wc -l)
  echo "La cadena ABC produce $contadorABC series: "
  echo "La cadena AMC produce $contadorAMC series: "
  echo "La cadena CBS produce $contadorCBS series: "
  echo "La cadena FOX produce $contadorFOX series: "
  echo "La cadena HBO produce $contadorHBO series: "
  echo "La cadena NBC produce $contadorNBC series: "
  echo "La cadena WB produce $contadorWB series: "

  echo "*****************************"
  echo "7) Líneas que líneas que contengan una palabra en mayúsculas entre paréntesis: "
  cat $1 | grep -E "\([[:alpha:]]"

  echo "*****************************"
  echo "8) Emparejamientos de palabras repetidas en la misma línea: "
  cat $1 | grep -E '( [[:alpha:]].* ).*\1' -o

  echo "*****************************"
  echo "9) Líneas que contienen veintiocho aes o más"
  cat $1 | grep -E '(a.*){28,}'

  echo "*****************************"
  echo "10) Nombre de película y temporadas: "
  cat $1 | grep -E '=' -C 1
fi
