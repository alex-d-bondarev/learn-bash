#!/bin/bash

echo "== A tricky one: print from line containning"
echo "== 'a text' till 'This' (inclusive)"
sed -n '/a text/,/This/p    ' example.txt
echo

echo "== replace 'erors' with 'errors'"
sed 's/erors/errors/' example.txt
echo

echo "== one 'eror' was not replaced, fix!!"
sed 's/erors/errors/g' example.txt
echo
