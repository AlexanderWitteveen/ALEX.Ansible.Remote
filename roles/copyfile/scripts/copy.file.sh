#!/bin/bash

ipaddress=$1
username=$2
password=$3
source=$4
target=$5

expect -f $(dirname "$0")/copy.file.expect "$ipaddress" "$username" "$password" "$source" "$target"
if [[ "$?" != "0" ]]; then 
    echo "**** Error: Expect failed"
fi
