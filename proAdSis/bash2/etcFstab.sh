#!/bin/bash
if [ -f /etc/fstab ]
then
  cp /etc/fstab .
  echo "Hecho"
else
  echo "Archivo /etc/fstab no exite"
  exit 1
fi
