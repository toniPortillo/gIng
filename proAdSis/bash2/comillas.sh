#!/bin/bash
var="cadena de prueba"
nuevavar="Valor de var es $var"
echo $nuevavar

var="cadena de prueba"
nuevavar='Valor de var es $var'
echo $nuevavar

cadena="var"
echo "Valor de '$cadena' es \"$var\""

echo 'Valor de '\'$cadena\'' es '\"$var\"''
