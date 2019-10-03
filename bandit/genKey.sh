#!/bin/bash

echo "Generating file Key.txt"
for i in {0..25}
do
	echo "key${i}.txt"
	touch "key${i}.txt"
done 
