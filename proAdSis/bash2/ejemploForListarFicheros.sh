#!/bin/bash

for x in *
do
  ls -i $x
done

echo "******************************************************************"

for x in /bin
do
  ls -i $x
done
