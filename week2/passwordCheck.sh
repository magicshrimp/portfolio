#!/bin/bash

read -sp "Enter password: " var_secret

var_hash=$(echo $var_secret | sha256sum)

hash_file="password.txt"
my_variable=$(cat "$hash_file")

#These commands echo both hashes which would be useful for troubleshooting in case of hashes not matching.
#echo "1: $var_hash"
#echo "2: $my_variable"

if [ "$var_hash" == "$my_variable" ]
    then echo "Access Granted!"
    exit 0
else
    echo "Access Denied.. "
    exit 1
fi

#***Working Out***

#cat ~/scripts/portfolio/week2/password.txt savedHash

#hash="$password" > sha256sum
#cat ~/scripts/portfolio/week2/password.txt

#if [ "$savedHash" = "$hash" ] ;
#then    
 #   echo "The password is correct. Access granted!"
#else   
 #   echo "The password is incorrect. Access denied.."
#fi


#read -sp "Enter password: " var_spass

#var_hash=$(echo $var_spass | sha256sum)

#hashfile="password.txt"
#myvariable=$(cat "$hashfile")

#echo "1: $var_hash"
#echo "2: $myvariable"

#if [ "$var_hash" == "$myvariable" ]
#    then echo "Access Granted!"
#    exit 0
#else
#    echo "Access Denied.. "
#    exit 1
#fi
