#!/bin/bash
nombrelog="ejercicio6.log"
rm -f $nombrelog
tiempoInicial=$(date +%s)

function ficheroLog() {
    echo "$(date +%F\ \[%X\]) - $*" >> $nombrelog
}

function ficheroExiste()
{
  if [ ! -e $2 ]
  then
    cp $1 $2
    ficheroLog "Fichero $1 copiado a $2"
  else
    read -n1 -p "El fichero $2 existe. ¿Desea sobreescribirlo? (S/N): " opcion
    echo
    if [ $opcion == "S" ]
    then
      cp $1 $2
    fi
  fi
}

if [ $# -ne "0" ]
then
  numeroDirectorios=$#
  rutaDirectorios=$@
else
  numeroDirectorios="1"
  rutaDirectorios="."
fi

read -t5 -p "Introduzca el directorio donde copiar los ejecutables: " ruta
echo " "
directorioEjecutables=${ruta:-~/bin}

read -t5 -p "Introduzca el directorio donde copiar las librerias: " ruta
echo " "
directorioLibrerias=${ruta:-~/lib}

read -t5 -p "Introduzca el directorio donde copiar las imágenes: " ruta
echo " "
directorioImagenes=${ruta:-~/img}

read -t5 -p "Introduzca el directorio donde copiar las cabeceras: " ruta
echo " "
directorioCabeceras=${ruta:-~/include}

echo "Utilizando los ficheros: "
echo "$directorioEjecutables para almacenar los ficheros ejecutables"
echo "$directorioLibrerias para almacenar las librerías"
echo "$directorioImagenes para almacenar las imágenes"
echo "$directorioCabeceras para almacenar los ficheros de cabeceras"

for directorio in $directorioEjecutables $directorioLibrerias $directorioImagenes $directorioCabeceras
do
  if [ -e $directorio ]
  then
      echo "El directorio $directorio ya existía"
  else
      mkdir $directorio
  fi
done

ficherosEjecutables=0
librerias=0
imagenes=0
cabeceras=0

echo "Procesando el directorio $rutaDirectorios ..."
for directorio in $(find $rutaDirectorios)
do
  if [ ! -d $directorio ] && [ -x $directorio ]
  then
    ficheroExiste $directorio $directorioEjecutable/$(basename $directorio)

    ficherosEjecutables=$[$ficherosEjecutables+1]

  elif [[ $(basename $directorio) =~ ^lib ]]
  then
    ficheroExiste $directorio $directorioLibrerias/$(basename $directorio)

    librerias=$[$librerias+1]

  elif [[ $(basename $directorio) =~ \.jpg|\.png|\.gif$ ]]
  then
    archivo=$(basename $directorio)
    archivo=${archivo%.*}
    convert $directorio /tmp/$archivo.pdf
    ficheroExiste /tmp/$archivo.pdf $directorioImagenes/$archivo.pdf
    rm -f /tmp/$archivo.pdf
    imagenes=$[$imagenes+1]

  elif [[ $(basename $directorio) =~ \.h$ ]]
  then
  ficheroExiste $directorio $directorioCabeceras/$(basename $directorio)

  cabeceras=$[$cabeceras+1]
  fi
done

echo "Número de directorios procesados: $numeroDirectorios"
echo "Número de ficheros ejecutables: $ficherosEjecutables"
echo "Número de librerías: $librerias"
echo "Número de imágenes: $imagenes"
echo "Número de ficheros de cabecera: $cabeceras"
tiempoFinal=$(date +%s)
echo "Tiempo necesario: $[$tiempoFinal-$tiempoInicial]"
