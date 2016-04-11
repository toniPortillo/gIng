#!/bin/bash

miNuevoArray[i]=Valor
echo "${miNuevoArray[i]}"

miNuevoArray=(Valor1 Valor2 Valor3)
echo "${miNuevoArray[1]}"
echo "${miNuevoArray[2]}"
echo "${miNuevoArray[3]}"
echo "${miNuevoArray[*]}"
echo "${#miNuevoArray[@]}"
