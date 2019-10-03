#!/bin/bash

clear

#variables
str_a="UNIX"
str_b="LINUX"

echo $0
echo -e "\n"
echo "Comparison in Bash"

echo -e " -lt : < \n -gt : > \n -eq : = \n -ne : != \n -le : less equal \n -ge : greater equal \n"

function compare {
	echo "0:true, 1:false"
	echo "Is $1 equal to $2 ?"
	[ $1 == $2 ]

	if [ $? -eq 1 ]
	then
		echo "False: $?"
	elif [ $? -eq 0 ]
	then
		echo "True: $?"
	fi

}

compare $str_a $str_b

echo -e "\n"
