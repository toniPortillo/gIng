#!/bin/bash -x

read -p "Introduzca un número: " x

let sum=0

for (( i=1; "$i"<"$x"; i=$i + 1))
do
  let "sum = $sum + $i"
done

echo "La suma de los $x primeros números naturales es: $sum"
