#!/bin/bash
echo -n "Introduzca nombre de fichero a borrar: "
read fichero
rm -i $fichero # La opción -i pide confirmacion
echo "Fichero $fichero borrado!"
