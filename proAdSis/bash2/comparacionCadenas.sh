#!/bin/bash
read -p "Introduzca la cadena s1: " s1
read -p "Introduzca la cadena s2: " s2

if [ "$s1" == "$s2" ]
then
  echo "Las cadenas s1 y s2 son iguales"
else
  echo "Las cadenas s1 y s2 son distintas"
fi

if [ "$s1" != "$s2" ]
then
  echo "Las cadenas s1 y s2 son distintas"
else
  echo "Las cadenas s1 y s2 son iguales"
fi

if [ "$s1" ]
then
  echo "La cadena s1 no esta vacia"
else
  echo "La cadena s1 esta vacia"
fi

if [ "$s2" ]
then
  echo "La cadena s2 no esta vacia"
else
  echo "La cadena s2 esta vacia"
fi

if [ -n "$s1" ]
then
  echo "La cadena s1 tiene longitud >0"
else
  echo "La cadena s1 tiene longitud 0"
fi

if [ -n "$s2" ]
then
  echo "La cadena s2 tiene longitud >0"
else
  echo "La cadena s2 tiene longitud 0"
fi

if [ -z "$s1" ]
then
  echo "La cadena s1 tiene longitud 0"
else
  echo "La cadena s2 tiene longitud >0"
fi

if [ -z "$s1" ]
then
  echo "La cadena s1 tiene longitud 0"
else
  echo "La cadena s2 tiene longitud >0"
fi

if [ -z "$s1" ]
then
  echo "La cadena s1 tiene longitud 0"
else
  echo "La cadena s2 tiene longitud >0"
fi

if [ -z "$s1" ]
then
  echo "La cadena s1 tiene longitud 0"
else
  echo "La cadena s1 tiene longitud >0"
fi

if [ -z "$s2" ]
then
  echo "La cadena s2 tiene longitud 0"
else
  echo "La cadena s2 tiene longitud >0"
fi

if [[ "$s1" == "$s2"* ]]
then
  echo "La cadena s1 empieza por s2"
else
  echo "La cadena s1 no empieza por s2"
fi
