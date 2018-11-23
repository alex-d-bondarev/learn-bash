#!/bin/bash

echo "== Print lines that match 'This<something>errors.' pattern'"
sed -n '/^This.*errors.$/p' example.txt
echo

echo "== print 2nd to 4th line"
sed '2,4d' example.txt
echo


echo "== print 1st to 3rd line"
sed '3,$d' example.txt
echo
