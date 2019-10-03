#!/bin/bash
clear
echo -e "############################\n#\t BANDIT WARGAMES\n#\t Connect Script by: null\n############################"

LEVEL=$1
HOST="bandit.labs.overthewire.org"
PORT="2220"
USER=""
KEYFILE="./Key.txt"
KEY=""
function readKey {
    while IFS=: read -r USER KEY
    do
        if [ $USER == "bandit${LEVEL}" ]
        then
            echo "USER: $USER, KEY: $KEY"
            break
        fi
    done <"$KEYFILE"
}

function printLevel {
    name="bandit"
    echo "-------CHOOSE LEVEL-------"
    for i in {1..25}
    do
        echo -e "$i. ${name}$i"
        
    done
    read -p "Level: " LEVEL

    
}
if [ $# -eq 0 ]
then 
    echo "usage:- $0 <level eg: 12>"

elif [ $* == "-i" ]
then
    clear
    printLevel

else
    echo "Connect"
fi

clear
readKey
read -p "Press Enter" ENTER

clear
echo "Connecting  to Level $LEVEL"
URL="bandit${LEVEL}@${HOST} -p $PORT "
echo $URL

sshpass -p "$KEY" ssh ${URL}
