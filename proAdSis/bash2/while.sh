#!/bin/bash

read -p "Introduce un número: " x

let i=1
let sum=0

while [ $i -le $x ]
do
  let "sum= $sum + $i"
  let "i= $i + 1"
done

echo "La suma de los primeros $x números naturales es: $sum"
