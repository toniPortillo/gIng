#!/bin/bash

#Busca las líneas que empiecen por c en todos los ficheros del directorio actual.
grep ^c *
echo -e "\n"

#Muestra el nombre de los ficheros que cumplen el patrón, es decir si alguna linea de las que contiene
#el fichero cumple el patrón se muestra el nombre de ese fichero.
grep -l ^c *
echo -e "\n"

#Cuenta el número de lineas de cada fichero del directorio actual que cumplan el patrón.
grep -c ^c *
echo -e "\n"

#Pasamos el contenido del ls(en este caso los ficheros del directorio actual) por una tuberia a grep
#y este procesa esto como si fuese el contenido de un fichero, mostrando las lineas o palabras que cumplen el
#patrón.
ls * | grep ^c
echo -e "\n"

#Case insensitive (no sensible a mayúsculas).
grep -i ^c *
