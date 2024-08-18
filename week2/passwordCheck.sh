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