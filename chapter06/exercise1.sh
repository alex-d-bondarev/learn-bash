#!/bin/bash

echo "= Intro ="
echo "Username:Firstname:Lastname:Telephone number"
echo "Should be processed to LDAP output like:"
echo "dn: uid=Username, dc=example, dc=com"
echo "cn: Firstname Lastname"
echo "sn: Lastname"
echo "telephoneNumber: Telephone number"

echo "Execute this file like: 'bash exercise1.sh Rock:Dwayne:Johnson:12345'"
echo 

echo "= START ="

echo $1 | awk 'BEGIN { FS=":"} { print \
"dn: uid=" $1 ", dc=example, dc=com\n"\
"cn: " $2 " " $3 "\n"\
"sn: " $3 "\n" \
"telephoneNumber: " $4 "\n"
}'

echo "no more exercises in this chapter - awk behaves funny on Mac"