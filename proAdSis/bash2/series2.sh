#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "1" ]
then
  echo "El número de parámetros tiene que ser 1"
  echo "Formato ./ejercicio2.sh ficheroDeSeries"
else
  cat $1 | grep -E '^$|^=' -v | sed -re 's/Ver mas//' |
    sed -re 's/^([0-9]+\. [a-zA-Z \.]+) \((.*)\)/\1\n|-> Año de la serie: \2/' |
      sed -re 's/^([0-9])+ TEMPORADAS/|-> Número de temporadas: \1/' |
        sed -re 's/^\*(.*)\*/|-> Productora de la serie: \1/' |
          sed -re 's/^SINOPSIS: (.*)/|->Sinopsis: \1/' |
            sed -re 's/^Ha recibido (.*) puntos/|-> Número de puntos: \1/'
fi
