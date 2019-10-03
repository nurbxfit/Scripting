#!/bin/bash

clear
echo $0
echo -e "\nLooping in Bash \n"
echo "For Looping"
echo -e "\nfor i in 1 2 3 4 5 Looping"
for i in 1 2 3 4 5
do
	echo "Looping ..number $i"
done


echo -e "\nfor i in something 2*2 bye"
for i in hello 1*2 bye
do
	echo "Value of i is.. $i"
done

echo -e "\nfor i in {0..9}"
for i in {0..9}
do
	echo " i is $i"
done

echo -e "\nfor C style Loop"
for (( c=1; c<=5; c++))
do
	echo "c is $c"
done
echo -e "\n----------continue-----------"
read NULL
clear

echo -e "\nWhile Looping\n"

echo "While Loop"
counter=0
while [ $counter -lt 5 ]; do
	let counter+=1
	echo "While counter: $counter"
done


echo -e "\n\nuntil loop\n"
echo "until [ condition ]; do"

counter=6
until [ $counter -lt 1 ]; do
	let counter-=1
	echo "counter count until $counter"
done

printf "\n"
