#!/bin/bash
source logfunction.sh
source function.sh


ACTION=$1
    

while getopts "t" arg; do
ACTIONS=$2
case $ACTIONS in

RequestType) Request_Type $3 $4;;

ResponseType) Response_Type $3 $4;;
 
*)errorMessage "Choose Valid Options - Bye" 

esac

done