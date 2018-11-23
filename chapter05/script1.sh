#!/bin/bash

echo "== print lines with error twice:"
sed '/erors/p' example.txt
echo

echo "== now print only lines with errors:"
sed -n '/erors/p' example.txt
echo

echo "== now print only lines without errors:"
sed '/erors/d' example.txt
echo
