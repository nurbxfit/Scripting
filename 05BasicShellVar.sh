#!/bin/bash

clear
echo $0
echo -e "\nShell Variables"

echo $testvar #make a variable but no assingning any value
echo ${testvar=Vanacam} #if testvar2 is not set, then we assign value to it
#or
echo ${defaultVal:-DefaultValue}

#or if value is not set, we can assign default value
var=$1
echo ${var:=Test}

echo -e "\n\n"
echo "Printing in bash"
echo "printf or echo"

var="Printing"
printf "%s\n\n" "$var"
