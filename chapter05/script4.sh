#!/bin/bash

echo "== lets pretend that we are quoting:"
sed 's/^/> /' example.txt
echo

echo "== add 'EOL' in the end of each line:"
sed 's/$/EOL/' example.txt
echo 

echo == "perform multiple replacements:"
sed -e 's/eror/error/g' -e 's/last/final/g' example.txt
echo
