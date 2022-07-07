#!/bin/bash
inputNum=${1:0:-1}
inputType=${1: -1}
case $inputType in
K)
 echo $(($inputNum-273))"C";;
C)
 echo $(($inputNum+273))"K";;
esac	
