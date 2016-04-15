#!/bin/bash

echo -e "18\n017\n9" | sort
echo -e "\n"
echo -e "18\n017\n9" | sort -r
echo -e "\n"
echo -e "18\n017\n9" | sort -n
echo -e "\n"
echo -e "18\n017\n9" | sort -nr
echo -e "\n"
echo -e "18 1\n017 2\n9 3" | sort -n -k 2
echo -e "\n"
echo -e "18 1\n017 2\n9 3" | sort -n -k 1
echo -e "\n"
echo -e "1\t2\n2\t-1" | sort -t $'\t' -nk1
echo -e "\n"
echo -e "1\t2\n2\t-1" | sort -t $'\t' -nk2
