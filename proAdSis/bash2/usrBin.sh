#!/bin/bash
/usr/bin/[ 3 = 4 ]
echo "3=4?"
echo $?

echo "4=4?"
/usr/bin/[ 4 = 4 ]
echo $?

echo "asa=asa?"
/usr/bin/[ 'asa' == 'asa' ]
echo $?

echo "asa=asaa?"
/usr/bin/[ 'asa' == 'asaa' ]
echo $?
