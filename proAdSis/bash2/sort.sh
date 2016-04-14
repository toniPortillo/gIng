#!/bin/bash

#Ordena entrada estándar por orden alfabético.
sort $1
#Ordena entrada estándar por orden inverso.
sort -r $1
#Ordena entrada estándar por orden numérico.
sort -n $1
#Cambia el caracter separador al caracter c.
sort -t c $1
#Cambia la clave de ordenación a la tercera columna.
sort -k 3 $1
