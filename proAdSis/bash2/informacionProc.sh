#!/bin/bash

informacionCpu=/proc/cpuinfo
puntosMontaje=/proc/mounts
particionesYbloques=/proc/partitions

cat $informacionCpu | sed -r -n -e 's/^model name.*: (.*)/Modelo de procesador: \1/p' | uniq
cat $informacionCpu | sed -r -n -e '0,/^cpu MHz/s/^cpu MHz.*: (.*)/Megahercios: \1/p'
cat $informacionCpu | cut -f1 | sort | uniq -c | sed -r -n -e 's/^ *(.*) processor$/Números de hilos máximo de ejecución: \1/p'

echo "Puntos de montaje: "
cat $puntosMontaje | sed -r -n -e 's/^([^ ]+) ([^ ]+) ([^ ]+) .*/-> Punto de montaje \2, Dispositivo: \1, Tipo de dispositivo: \3/p'

echo "Particiones y números de bloques: "
cat $particionesYbloques | sed -r -n -e '3,$s/^ +[^ ]+ +[^ ]+ +([^ ]+) +([^ ]+)/-> Partición: \2, Numero Bloques: \1/p' | sort -r -n -k1
