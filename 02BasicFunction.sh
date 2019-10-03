#!/bin/bash

# notes that when writting function,
# make sure to put space between function name and curly bracket
clear
echo -e "\n"
echo $0
echo "Function in Bash"

function printthis {
	echo "This"
}

printthis; echo "is test"

function printParam {
	echo "$1 is the first parameter of this function "
}

printParam Hello

function printParamFromArgv {
	echo -e "Param from arg[1] is: $1 \n"
}

printParamFromArgv $1

function howManyArg {
	echo "this function have $# arguments .."
	echo -e "the arguments are: $* \n"
}

howManyArg param1 param2 param3

#function withou function

fun1(){
	echo "function without 'function' syntax"
}

fun1
