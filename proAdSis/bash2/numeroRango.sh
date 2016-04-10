#!/bin/bash
read -p "Introduzca un número (1 <= x < 10): " x

if [ "$x" -ge "1" ]
then
  if [ "$x" -lt "10" ]
  then
    echo "El número $x es correcto!"
  else
    echo "Fuera de rango!"
  fi
else
  echo "Fuera de rango!"
fi
