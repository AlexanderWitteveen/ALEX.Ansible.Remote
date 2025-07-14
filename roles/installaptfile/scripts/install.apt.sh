#!/bin/bash

ipaddress=$1
username=$2
password=$3
target=$4

expect -f $(dirname "$0")/install.apt.expect "$ipaddress" "$username" "$password" "$target"
if [[ "$?" != "0" ]]; then 
    echo "**** Error: Expect failed"
fi
