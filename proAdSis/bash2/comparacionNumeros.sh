#!/bin/bash
read -p "Introduzca el número n1: " n1
read -p "Introduzca el número n2: " n2

if [ "$n1" -lt "$n2" ]
then
  echo "$n1 is less than $n2"
else
  echo "$n1 is greater than $n2"
fi

if [ "$n1" -gt "$n2" ]
then
  echo "$n1 is greater than $n2"
else
  echo "$n1 is less than $n2"
fi

if [ "$n1" -le "$n2" ]
then
  echo "$n1 is less or equal than $n2"
else
  echo "$n1 is greater or equal than $n2"
fi

if [ "$n1" -ge "$n2" ]
then
  echo "$n1 is greater or equal than $n2"
else
  echo "$n1 is less or equal than $n2"
fi

if [ "$n1" -eq "$n2" ]
then
  echo "$n1 equal $n2"
else
  echo "$n1 not equal $n2"
fi

if [ "$n1" -ne "$n2" ]
then
  echo "$n1 not equal $n2"
else
  echo "$n1 equal $n2"
fi
