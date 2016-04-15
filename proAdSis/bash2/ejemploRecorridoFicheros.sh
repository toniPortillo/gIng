#!/bin/bash

for fichero in $(find . -name "*For*.sh")
do
    echo "$fichero ==> Permisos: $(stat -c %a $fichero)"
done | sort
