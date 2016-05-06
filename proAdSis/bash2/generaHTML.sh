#!/bin/bash

if [ $# -le "0" ] || [ $# -gt "1" ]
then
  echo "El número de parámetros tiene que ser 1"
  echo "Formato ./ejercicio4.sh ficheroParaGenerarSuHTML"
else
  ficheroHtml=${1%.*}.html

  if [ -e $ficheroHtml ]
  then
    if [ -f $ficheroHtml ]
    then
      rm $ficheroHtml
    fi
  fi

  echo "Generando el fichero $ficheroHtml..."
  touch $ficheroHtml

  echo "<html>" > $ficheroHtml
  cat $1 | grep -E -v '^$' | sed -r -n -e '0, /:$/s/^(.*):$/<title> \1 <\/title>/p' >> $ficheroHtml
  echo "<body>" >>$ficheroHtml
  cat $1 | grep -E -v '^$' | grep -E -v '^.*:$' | sed -r -e 's/^(.*)$/<p>\1<\/p>/' >> $ficheroHtml
  echo "</body>" >> $ficheroHtml
  echo "</html>" >> $ficheroHtml
fi
