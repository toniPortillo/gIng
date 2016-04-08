#!/bin/bash
read -p "Introduzca un primer número: " numero1
read -p "Introduzca un segundo número: " numero2
let SUMA=$numero1+$numero2
let RESTA=$numero1-$numero2
let MULTIPLICACION=$numero1*$numero2
let DIVISION=$numero1/$numero2
let MODULO=$numero1%$numero2
echo "Suma: $SUMA"
echo "Resta: $RESTA"
echo "Multiplicacion: $MULTIPLICACION"
echo "Division: $DIVISION"
echo "Módulo:  $MODULO"
