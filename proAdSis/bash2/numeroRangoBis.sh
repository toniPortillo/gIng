#!/bin/bash
read -p "Introduzca un número (1 <= x < 10): " numero

if [ "$numero" -ge "1" ] && [ "$numero" -lt "10" ]
then
  echo "El $numero es correcto!"
else
  echo "Fuera de rango!"
fi

if [ "$numero" -ge "1" -a "$numero" -lt "10" ]
then
  echo "El $numero es correcto!"
else
  echo "Fuera de rango!"
fi
