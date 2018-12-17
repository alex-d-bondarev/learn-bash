#!/bin/bash

echo "== Print a list of files in your scripts directory, ending in \".sh\". "
ls -r ./../* | sed -n '/.sh/p'
echo

echo "== Make a list of files in /usr/bin that have the letter \"a\" as the second character."
ls /usr/bin | sed -n '/^.a/p'
echo

echo "== Print script.sed file content, without first 3 lines."
sed -n '4,$p' script.sed
echo

echo "== Print first 5 files in /usr/bin containing the pattern \"an\""
ls /usr/bin | sed -n '/an/p' | sed '6,$d'
echo

