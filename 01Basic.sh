#!/bin/bash

user=$(whoami)
cd /home/$user
WD=$(pwd)

echo "BASH Version: ${BASH_VERSION}..."
echo "Directory is $WD"

echo "Write Something"
read VAR1

echo "var is : _${VAR1}"

echo "OK now write a number less than 10"
read NUMB

if [ $NUMB -le 10 ]
then
	echo "Good Boy"
else
	echo "I ask for number less than 10"
fi


for i in {0..10}{0..10}{0..9}
do
	#let j=($i*2)
	echo "Looping $i times"

done
